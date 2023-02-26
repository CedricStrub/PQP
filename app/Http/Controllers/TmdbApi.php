<?php

namespace App\Http\Controllers;

use App\Models\Film;
use Illuminate\Support\Facades\Http;
use Carbon\Carbon;

class TmdbApi extends Controller
{
    private ?string $token = '';

    private ?string $urlApi = 'https://api.themoviedb.org/3';

    public function __construct(){
        $this->token = config('services.tmdb.key');
    }

    public function getTrending($type,$time){
        //récupère les films en base de donnée
        $films = Film::all();
        
        //si aucun film en base de donnée
        if($films->isEmpty()){
            //recupère les films via l'api
            $response = Http::withHeaders([
                'Authorization' => 'Bearer '. $this->token,
            ])->get($this->urlApi.'/trending/'.$type.'/'.$time);

            $films = $response->json()['results'];
            //ajoute les films a la base de donnée
            $this->addAll($films);
            //les récupères pour eviter les id mismatch
            $films = Film::all();

            return $films;
        }
        //si film en base de donnée
        else{
            //compare la date actuel a la date de creation du film[0] en jours
            $current_time = Carbon::now();
            $timestamp = $films[0]['created_at'];
            $diff = $current_time->diffInDays($timestamp);

            if($diff == 0){
                return $films;
            }
            else{
                //supprime les films present et relance la fonction
                $this->removeAll();
                return $this->getTrending($type,$time);
            }
        }
    }

    public function getDetail($id){
        //recherche en base de donné le film en utilisant l'id de tmdb 
        $film = Film::where('o_id','like','%'.$id.'%')->get();
        
        if($film->isEmpty()){
            $film = null;
        }else{
            $film = $film[0];
        }
        //si il trouve un film
        if($film != null){
            //et si le champ runtime = 0
            if($film['runtime'] == 0){
                $id2 = $film['id'];
                $id = $film['o_id'];
                //récupère les info détaillé du film
                $response = Http::withHeaders([
                    'Authorization' => 'Bearer '. $this->token,
                ])->get($this->urlApi.'/movie/'.$id);

                $film = $response->json();
                //ajoute les info a la base de donné en modifiant l'entité crée sommairement 
                $this->modify($id2,$film);
                return $film;
            }
            else{
                return $film;
            }
        }
        //si aucun film n'est trouvé
        else{
            //récupère les info détaillé du film
            $response = Http::withHeaders([
                'Authorization' => 'Bearer '. $this->token,
            ])->get($this->urlApi.'/movie/'.$id);

            $film = $response->json();
            //les ajoute a la base de donnée
            $this->add($film);
        
            return $film;
        }
    }

    public function add($film){
        //ajoute un film a la base de donnée
        Film::create([
            'title' => $film['title'],
            'runtime' => $film['runtime'],
            'release_date' => $film['release_date'],
            'overview' => $film['overview'],
            'poster_path' =>$film['poster_path'],
            'o_id' => $film['id']
        ]);

    }

    public function addAll($films){
        //ajoute une liste de film a la base de donnée
        foreach($films as $film){
            Film::create([
                'title' => $film['title'],
                'release_date' => $film['release_date'],
                'overview' => $film['overview'],
                'poster_path' => $film['poster_path'],
                'o_id' => $film['id']
            ]);
        }
    }

    public function modify($id,$film){
        //modifie un film existant 
        $new = Film::find($id);
        $new->title = $film['title'];
        $new->runtime = $film['runtime'];
        $new->release_date = $film['release_date'];
        $new->overview = $film['overview'];
        $new->poster_path = $film['poster_path'];
        $new->o_id = $film['id'];
        $new->save();

    }

    public function remove($id){
        //supprime un film
        $film = Film::find($id);
        $film->delete();

    }

    public function removeAll(){
        //supprime tous les films
        Film::whereDate('created_at', '<', '2023-02-27')->delete();

    }

}
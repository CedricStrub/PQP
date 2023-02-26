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

        $films = Film::all();

        if($films->isEmpty()){
            $response = Http::withHeaders([
                'Authorization' => 'Bearer '. $this->token,
            ])->get($this->urlApi.'/trending/'.$type.'/'.$time);

            $films = $response->json()['results'];
            $this->addAll($films);
            $films = Film::all();

            return $films;
        }
        else{
            $current_time = Carbon::now();
            $timestamp = $films[0]['created_at'];
            $diff = $current_time->diffInDays($timestamp);

            if($diff == 0){
                return $films;
            }
            else{
                $this->removeAll();
                return $this->getTrending($type,$time);
            }
        }
    }

    public function getDetail($id){

        $film = Film::where('o_id','like','%'.$id.'%')->get();
        if($film->isEmpty()){
            $film = null;
        }else{
            $film = $film[0];
        }
        if($film != null){
            if($film['runtime'] == 0){
                $id2 = $film['id'];
                $id = $film['o_id'];
                $response = Http::withHeaders([
                    'Authorization' => 'Bearer '. $this->token,
                ])->get($this->urlApi.'/movie/'.$id);

                $film = $response->json();
                $this->modify($id2,$film);
                return $film;
            }
            else{
                return $film;
            }
        }
        else{
            $response = Http::withHeaders([
                'Authorization' => 'Bearer '. $this->token,
            ])->get($this->urlApi.'/movie/'.$id);

            $film = $response->json();
            $this->add($film);
        
            return $film;
        }
    }

    public function add($film){

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

        $film = Film::find($id);
        $film->delete();

    }

    public function removeAll(){

        Film::whereDate('created_at', '<', '2023-02-27')->delete();

    }

}
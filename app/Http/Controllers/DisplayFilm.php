<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\TmdbApi;
use Illuminate\Support\Facades\Auth;


class DisplayFilm extends Controller
{
    private $api;
    
    public function __construct(){
        $this->api = app(TmdbApi::class); 
    }

    public function index(){
        //definis les variables requise par l'api
        $type = 'movie';
        $time = 'day';
        //récupère les films en tendeances
        $films = $this->api->getTrending($type,$time);

        
        
        return view('home',[
            'films' => $films,
            
        ]);
    }

    public function show($id){
        //récupère les details d'un film
        $film = $this->api->getDetail($id); 

        $user = Auth::user();

        return view('detailFilm',[
            'film' => $film,
            'user' => $user
        ]);
    }
}

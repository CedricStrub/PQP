<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\TmdbApi;


class DisplayFilm extends Controller
{
    private $api;
    
    public function __construct(){
        $this->api = app(TmdbApi::class); 
    }

    public function index(){

        $type = 'movie';
        $time = 'day';

        $films = $this->api->getTrending($type,$time);

        return view('home',[
            'films' => $films
        ]);
    }

    public function show($id){

        $film = $this->api->getDetail($id); 

        return view('detailFilm',[
            'film' => $film
        ]);
    }
}

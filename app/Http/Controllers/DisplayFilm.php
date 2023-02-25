<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class DisplayFilm extends Controller
{
    private ?string $token = 'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIyMjJkNjNjZGRjMDY2ZDk5ZWQzZTgwNmQzMjY3MThjYSIsInN1YiI6IjYyNGVhNTRhYjc2Y2JiMDA2ODIzODc4YSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.zuuBq1c63XpADl8SQ_c62hezeus7VibE1w5Da5UdYyo';

    private ?string $urlApi = 'https://api.themoviedb.org/3';

    public function index(){

        $type = 'movie';
        $time = 'day';
    
        $response = Http::withHeaders([
            'Authorization' => 'Bearer '. $this->token,
        ])->get($this->urlApi.'/trending/'.$type.'/'.$time);
    
        $films = $response->json()['results'];
    
        return view('home',[
            'films' => $films
        ]);
        }

    public function show($id){

        $response = Http::withHeaders([
            'Authorization' => 'Bearer '. $this->token,
        ])->get($this->urlApi.'/movie/'.$id);
    
        $film = $response->json();

        return view('detailFilm',[
            'film' => $film
        ]);
    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Http;

class TmdbApi extends Controller
{
    private ?string $token = '';

    private ?string $urlApi = 'https://api.themoviedb.org/3';

    public function __construct(){
        $this->token = config('services.tmdb.key');
    }

    public function getTrending($type,$time){

        $response = Http::withHeaders([
            'Authorization' => 'Bearer '. $this->token,
        ])->get($this->urlApi.'/trending/'.$type.'/'.$time);

        return $response->json()['results'];
    }

    public function getDetail($id){

        $response = Http::withHeaders([
            'Authorization' => 'Bearer '. $this->token,
        ])->get($this->urlApi.'/movie/'.$id);
    
        return $response->json();
    }

}
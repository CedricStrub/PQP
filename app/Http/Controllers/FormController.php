<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\TmdbApi;
use App\Http\Controllers\DisplayFilm;

class FormController extends Controller
{

    private $api;
    
    public function __construct(){
        $this->api = app(TmdbApi::class); 
    }
    public function handleFormSubmission(Request $request)
    {
        // validate the form data
        $data = $request->validate([
            'title' => 'required',
            'runtime' => 'numeric',
            'release_date' => 'string',
            'overview' => 'string',
            'poster_path' => 'string',
            'id' => 'numeric',
        ]);

        $id = 300;

        $this->api->modify($id,$data);

        $display = app(DisplayFilm::class);

        return $display->index();
    }
}

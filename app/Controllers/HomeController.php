<?php

namespace App\Controllers;

use App\Models\Image;

class HomeController extends Controller
{
    public function index($request, $response, $args)
    {
        $data   =   Image::all();
        return $this->view->render($response, 'home.twig', [
            'images' => $data
        ]);
    }
}
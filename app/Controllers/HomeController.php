<?php

namespace App\Controllers;

use App\Models\Image;
use Illuminate\Database\Capsule\Manager as DB;

class HomeController extends Controller
{
    public function index($request, $response, $args)
    {
        //$data   =   Image::all();
        $data   =   DB::select(DB::raw('SELECT images.*, categorylists.category_name FROM images,categorylists WHERE images.image_category=categorylists.id ORDER BY images.pulse_counter DESC '));
        return $this->view->render($response, 'home.twig', [
            'images' => $data
        ]);
    }
}
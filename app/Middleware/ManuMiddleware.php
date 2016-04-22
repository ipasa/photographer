<?php

namespace App\Middleware;


use App\Models\Categorylist;

class ManuMiddleware extends Middleware{

    public function __invoke($request, $response, $next)
    {
        $categories =   Categorylist::all();
        $this->container->view->getEnvironment()->addGlobal('categoryList', [
            'categories' => $categories
        ]);

        $response = $next($request, $response);
        return $response;

    }
}
<?php

use App\Middleware\Middleware\AuthMiddleware;

$app->get('/', 'HomeController:index')->setName('home');

$app->get('/image/upload', 'ImageController:getUpload')->setName('image.upload');
$app->post('/image/upload', 'ImageController:postUpload');

$app->get('/image/single/{id}', 'ImageController:getSingleImage')->setName('singleimage');

/**
 * Guest Middleware
 */
$app->group('', function () use ($app) {
    $app->get('/auth/signup', 'AuthController:getSignUp')->setName('auth.signup');
    $app->post('/auth/signup', 'AuthController:postSignUp');

    $app->get('/auth/signin', 'AuthController:getSignIn')->setName('auth.signin');
    $app->post('/auth/signin', 'AuthController:postSignIn');
})->add(new App\Middleware\GuestMiddleware($container));

/**
 * Authentication Middleware
 */
$app->group('', function () use ($app) {
    $app->get('/auth/signout', 'AuthController:getSignOut')->setName('auth.signout');

    $app->get('/auth/password/change', 'PasswordController:getChangePassword')->setName('auth.password.change');
    $app->post('/auth/password/change', 'PasswordController:postChangePassword');
})->add(new App\Middleware\AuthMiddleware($container));
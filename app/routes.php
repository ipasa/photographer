<?php

use App\Middleware\Middleware\AuthMiddleware;

$app->get('/', 'HomeController:index')->setName('home');

$app->get('/image/upload', 'ImageController:getUpload')->setName('image.upload');
$app->post('/image/upload', 'ImageController:postUpload');

$app->get('/image/single/{id}', 'ImageController:getSingleImage')->setName('singleimage');
$app->get('/image/category/{id}', 'ImageController:getAllImageInACategory')->setName('category');

$app->post('/favorites/store', 'ImageController:favoriteImage')->setName('favorites.store');
$app->post('/favorites/destroy', 'ImageController:destroyFavoriteImage')->setName('favorites.destroy');

$app->post('/user/follow', 'FollowController:followUser')->setName('follow.store');
$app->post('/user/unfollow', 'FollowController:unFollowUser')->setName('follow.unFollowUser');

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
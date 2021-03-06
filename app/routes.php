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

$app->get('/image/discover', 'ImageController:getDiscoverImage')->setName('discover');
$app->get('/image/discoverByCategory', 'ImageController:getDiscoverImageByCategory')->setName('discoverByCategory');
$app->get('/image/discoverByPulse', 'ImageController:getDiscoverImageByCategoryWithPulse')->setName('discoverByPulse');

$app->get('/user/profile/{id}', 'ProfileController:index')->setName('user.profile');



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

    $app->get('/image/follower', 'ImageController:getImageFollow')->setName('followerImage');

    $app->get('/user/can_follow', 'ProfileController:canFollow')->setName('user.canfollow');

    $app->get('/image/single/{id}/edit', 'ImageController:getImageEdit')->setName('singleimage.Edit');
    $app->post('/image/update', 'ImageController:postImageEdit')->setName('singleimage.update');

    $app->get('/image/single/{id}/delete', 'ImageController:deleteImage')->setName('singleimage.Delete');
})->add(new App\Middleware\AuthMiddleware($container));
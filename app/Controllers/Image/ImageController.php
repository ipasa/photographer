<?php

namespace App\Controllers\Image;

use App\Controllers\Controller;
use App\Models\Categorylist;
use App\Models\Favorite;
use App\Models\Image;
use App\Models\User;
use Illuminate\Database\Capsule\Manager as DB;


class ImageController extends Controller
{
    public function getUpload($request, $response)
    {
        return $this->view->render($response, 'image/upload.twig');
    }

    public function postUpload($request, $response)
    {
        $storage = new \Upload\Storage\FileSystem('upload_image');
        $file = new \Upload\File('image_link', $storage);

        // Optionally you can rename the file on upload
        $new_filename = uniqid();
        $file->setName($new_filename);

        // Validate file upload
        // MimeType List => http://www.iana.org/assignments/media-types/media-types.xhtml
        $file->addValidations(array(
            // Ensure file is of type "image/png"
            //new \Upload\Validation\Mimetype('image/png'),

            //You can also add multi mimetype validation
            new \Upload\Validation\Mimetype(array('image/png', 'image/jpeg', 'image/gif')),

            // Ensure file is no larger than 5M (use "B", "K", M", or "G")
            new \Upload\Validation\Size('5M')
        ));

        // Access data about the file that has been uploaded
        $data = array(
            'name'      => $file->getNameWithExtension(),
            'extension' => $file->getExtension(),
            'mime'      => $file->getMimetype(),
            'size'      => $file->getSize(),
            'md5'       => $file->getMd5(),
            'dimensions' => $file->getDimensions()
        );

        // Try to upload file
        try {
            // Success!
            $file->upload();
            $new_filename   =   $new_filename.'.'.$file->getExtension();

            $user_id    =   $_SESSION['user'];

            $image   =   Image::create([
                'image_title'       =>  $request->getParam('image_title'),
                'image_description' =>  $request->getParam('image_description'),
                'image_link'        =>  $new_filename,
                'image_category'    =>  $request->getParam('image_category'),
                'user_id'           =>  $user_id,
            ]);

            $this->flash->addMessage('success', 'You have been Signed Up Successfully');

            return $response->withRedirect($this->router->pathFor('home'));
        } catch (\Exception $e) {
            // Fail!
            $errors = $file->getErrors();
            var_dump($errors);
        }
    }

    public function getSingleImage($request, $response, $args)
    {
        $id =   $args['id'];

        $user_id    =   $_SESSION['user'];
        $favorited  =   Favorite::where('user_id', $user_id)->lists('image_id');
        foreach ($favorited as $favorite)
            $data[] =   $favorite;

        $favorited  =   in_array($id, $data);

        $images = Image::where('id', $id)->first();
        $image_view_count = $images->view_counter;
        $image_view_count++;

        $images->view_counter = $image_view_count;
        $images->save();
      

        $category   = Categorylist::where('id', $images->image_category)->first();
        $images_all_in_a_cateogry = Image::where('image_category', $images->image_category)->get();
        $user_name  = User::where('id', $images->user_id)->first();

        $image_link =   $images->image_link;
        //$image_link =   'http://localhost/authentication/public/upload_image/'.$image_link;
        $image_link = 'http://preview.5phsk37zjxxbt9c41ny7my0p0kke29txf5tq06k1l15rk9.box.codeanywhere.com/public/upload_image/'.$image_link;

        $info = exif_read_data($image_link);

        return $this->view->render($response, 'image/single.twig', [
            'image'     =>  $images,
            'category'  =>  $category,
            'user'      =>  $user_name,
            'images_all_in_a_cateogry'  =>  $images_all_in_a_cateogry,
            'image_link_exif'           =>  $info,
            'favorateOrNot' =>  $favorited
        ]);
    }

    public function getAllImageInACategory($request, $response, $args)
    {
        $id     = $args['id'];
        $image  = new Image;
        $images = $image->getAllImage($id);
        $category_name  = Categorylist::find($id);
        // echo "<pre>";
        //   foreach($images as $my_image){
        //     echo $my_image->id." ".$my_image->name;
        //     echo "<br>";
        //   }
        // echo "</pre>";
        // die();

        return $this->view->render($response, 'image/category.twig', [
            'images'         =>  $images,
            'category_name'  =>  $category_name
        ]);
    }

    public function favoriteImage($request, $response, $args){
        $image_id   =   $request->getParam('image_id');

        $favorite   = Favorite::create([
            'user_id'      =>  $request->getParam('user_id'),
            'image_id'     =>  $request->getParam('image_id'),
        ]);
        if (!$favorite){
            return 'Sorry';
        }
        return $response->withRedirect($this->router->pathFor('singleimage', ['id' => $image_id] ));

    }

    public function destroyFavoriteImage($request, $response, $args){
        $user_id    =   $_SESSION['user'];
        $image_id   =   $request->getParam('image_id');

        $query = DB::select(DB::raw('DELETE FROM favorites WHERE user_id='.$user_id.' AND image_id='.$image_id));
        return $response->withRedirect($this->router->pathFor('singleimage', ['id' => $image_id] ));
    }
}
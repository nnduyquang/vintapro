<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $fillable = [
        'title', 'slug', 'description', 'content', 'img_primary', 'img_sub_list', 'is_active', 'post_type', 'user_id', 'seo_id', 'is_hot'
    ];

    public function users()
    {
        return $this->belongsTo('App\User', 'user_id');
    }

    public function manaycategoryitems($type)
    {
        return $this->belongsToMany('App\Category', 'many_category_items', 'item_id', 'category_id')->withPivot('type')->wherePivot('type', $type)->withTimestamps();
    }

    public function seos()
    {
        return $this->belongsTo('App\Seo', 'seo_id');
    }

    public function prepareParameters($parameters)
    {
        $parameters->request->add(['user_id' => auth('api')->user()->id]);
        $pathImage = $parameters->input('img_primary');
        if (!IsNullOrEmptyString($pathImage)) {
            if (hasHttpOrHttps($pathImage)) {
                $pathImage = substr($pathImage, strpos($pathImage, 'images'), strlen($pathImage) - 1);
            }
            $parameters->request->add(['img_primary' => $pathImage]);
        } else {
            $parameters->request->add(['img_primary' => null]);
        }
        $listImageInfo = $parameters->input('img_sub_list');
        if (isset($listImageInfo)) {
            if (count($listImageInfo) != 0) {
                $sub_image = [];
                foreach ($listImageInfo as $key => $item) {
                    $itemToArray = json_decode($item);
                    if (hasHttpOrHttps($itemToArray->path))
                        $itemToArray->path = substr($itemToArray->path, strpos($itemToArray->path, 'images'), strlen($itemToArray->path) - 1);
                    else {
                        $itemToArray->path = $itemToArray->path;
                    }
                    array_push($sub_image, $itemToArray);
                }
                $parameters->request->add(['img_sub_list' => str_replace("\\/", "/", json_encode($sub_image))]);
            }
        } else {
            $parameters->request->add(['img_sub_list' => null]);
        }
        return $parameters;
    }

    public function getAllPost($post_type, $category_type = null)
    {


        $datas = $this->where('post_type', $post_type)->orderBy('created_at', 'DESC')->with('seos')->get();
        if (!is_null($category_type))
            foreach ($datas as $key => $item) {
                $arrayCategory = $item->manaycategoryitems($category_type)->get();
                $listIdCategory = $arrayCategory->implode(['id'], ',');
                $listTitleCategory = $arrayCategory->implode(['title'], ',');
                $item->listIdCategory = $listIdCategory;
                $item->listTitleCategory = $listTitleCategory;
            }

        return $datas;
    }

    public function getPostByPathCategory($path)
    {
        $category = new Category();
        $getCategory = $category->where('slug', $path)->first();
        $data['category'] = $getCategory;
        $data['posts'] = $getCategory->posts()->get();
        return $data;
    }

    public function getPostDetailByPath($pathPost, $categoryType = null)
    {
        $data = [];
        $data['post'] = $this->where('slug', $pathPost)->first();
        if (!is_null($categoryType)) {
            $data['category'] = $data['post']->manaycategoryitems($categoryType)->first();
        }
        return $data;
    }

    public function getOtherPost($pathService, $data)
    {
        $category = new Category();

        $idCategory = $data['category']->id;
        $datas = $category->where('id', $idCategory)->first()->posts()->where('is_active', ACTIVE)->where('posts.id', '!=', $data['post']->id)->get();

        if (!is_null($pathService))
            foreach ($datas as $key => $item) {
                $item->slug_category = $pathService;
            }
        return $datas;
    }


    public function getAllPostByPostType($postType, $take = 0)
    {
        if ($take != 0)
            return $this->where('post_type', $postType)->take($take)->get();
        else
            return $this->where('post_type', $postType)->get();
    }

    protected static function boot()
    {
        parent::boot();

        static::deleting(function ($post) { // before delete() method call this
            if (!is_null($post->seo_id)) {
                $post->seos->delete();
            }
            if ($post->post_type == IS_POST) {
                $post->manaycategoryitems(CATEGORY_POST)->detach();
            }
        });

    }
}

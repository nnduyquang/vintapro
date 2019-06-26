<?php

namespace App\Repositories\Frontend;


use App\Category;
use App\Config;
use App\Post;

class FrontendRepository implements FrontendRepositoryInterface
{
    public function getFrontend()
    {
        $data = [];
        $category = new Category();
        $post = new Post();
        $data['h1_categories'] = $category->getFirstParentCategoriesByType(CATEGORY_SERVICE);
        $data['h2_introduce'] = $post->getPostDetailByPath('gioi-thieu', null)['post'];

        $data['h4_news'] = $post->getAllPostByPostType(IS_POST, 3);

        return $data;
    }


    public function getFrontendCommon()
    {
        $data = [];
        $config = new Config();
        $dataConfig = $config->getConfigByListName(['config_phone', 'config_describe_contact', 'config_hotline_show', 'config_hotline_call', 'config_info_email', 'config_title', 'config_address', 'config_logo', 'config_script_header', 'config_script_body', 'config_slider', 'seo_title', 'seo_description', 'seo_image', 'config_descrtiption']);
        foreach ($dataConfig as $key => $item) {
            if ($item->name == 'config_phone')
                $data['config_phone'] = $item->content;
            if ($item->name == 'config_hotline_call')
                $data['config_hotline_call'] = $item->content;
            if ($item->name == 'config_hotline_show')
                $data['config_hotline_show'] = $item->content;
            if ($item->name == 'config_descrtiption')
                $data['config_descrtiption'] = $item->content;
            if ($item->name == 'config_info_email')
                $data['config_info_email'] = $item->content;
            if ($item->name == 'config_address')
                $data['config_address'] = $item->content;
            if ($item->name == 'config_title')
                $data['config_title'] = $item->content;
            if ($item->name == 'config_logo')
                $data['config_logo'] = $item->content;
            if ($item->name == 'config_script_header')
                $data['config_script_header'] = $item->content;
            if ($item->name == 'config_script_body')
                $data['config_script_body'] = $item->content;
            if ($item->name == 'map-config')
                $data['map-config'] = $item->content;
            if ($item->name == 'seo_title')
                $data['seo_title'] = $item->content;
            if ($item->name == 'seo_description')
                $data['seo_description'] = $item->content;
            if ($item->name == 'seo_image')
                $data['seo_image'] = $item->content;
            if ($item->name == 'config_slider')
                $data['config_slider'] = $item->content;
            if ($item->name == 'config_describe_contact')
                $data['config_describe_contact'] = $item->content;
        }
        return $data;
    }

    public function getServiceDetail($path)
    {
        $post = new Post();
        return $post->getPostByPathCategory($path);
    }

    public function getServicePost($pathService, $pathPost)
    {
        $post = new Post();
        $category = new Category();
        $data = $post->getPostDetailByPath($pathPost, CATEGORY_SERVICE);
        $data['other'] = $post->getOtherPost($pathService, $data, true);
        $data['pathService'] = $pathService;
        $data['categories'] = $category->getFirstParentCategoriesByType(CATEGORY_SERVICE);
        return $data;
    }

    public function getNewsDetail($path)
    {
        $post = new Post();
        $category = new Category();
        $data = $post->getPostDetailByPath($path, CATEGORY_POST);
        $data['other'] = $post->getOtherPost(null, $data);
        $data['categories'] = $category->getFirstParentCategoriesByType(CATEGORY_SERVICE);
        return $data;
    }

    public function getPageDetail($path)
    {
        $post = new Post();
        $category = new Category();
        $data = $post->getPostDetailByPath($path, null);
        $data['categories'] = $category->getFirstParentCategoriesByType(CATEGORY_SERVICE);
        return $data;
    }

    public function getServicePage(){
        $data = [];
        $category = new Category();
        $data['h1_categories'] = $category->getFirstParentCategoriesByType(CATEGORY_SERVICE);
        return $data;
    }


}
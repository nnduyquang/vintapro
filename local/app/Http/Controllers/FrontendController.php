<?php

namespace App\Http\Controllers;

use App\Repositories\Frontend\FrontendRepositoryInterface;

class FrontendController extends Controller
{
    protected $frontendRepository;

    public function __construct(FrontendRepositoryInterface $frontendRepository)
    {
        $this->frontendRepository = $frontendRepository;
    }

    public function getFrontend(){
        $data = $this->frontendRepository->getFrontend();
        return view('frontend.01_home.index', compact('data'));
    }
    public function getServiceDetail($path){
        $data = $this->frontendRepository->getServiceDetail($path);
        return view('frontend.02_service_detail.index', compact('data'));
    }
    public function getServicePost($pathService,$pathPost){
        $data = $this->frontendRepository->getServicePost($pathService,$pathPost);
        return view('frontend.03_service_post.index', compact('data'));
    }
    public function getNewsDetail($path){
        $data = $this->frontendRepository->getNewsDetail($path);
        return view('frontend.05_news_detail.index', compact('data'));
    }
    public function getPageDetail($path){
        $data = $this->frontendRepository->getPageDetail($path);
        switch ($path){
            case 'gioi-thieu':
                return view('frontend.07_page.index', compact('data'));
                break;
            default:
                return view('frontend.99_404.index', compact('data'));
        }

    }
    public function getServicePage(){
        $data = $this->frontendRepository->getServicePage();
        return view('frontend.08_service.index', compact('data'));
    }
}


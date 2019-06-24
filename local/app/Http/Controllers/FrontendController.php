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
}


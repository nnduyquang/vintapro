<?php

namespace App\Repositories\Frontend;

interface FrontendRepositoryInterface
{

    public function getFrontend();

    public function getFrontendCommon();

    public function getServiceDetail($path);

    public function getServicePost($pathService,$pathPost);

}
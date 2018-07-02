<?php

namespace App\Http\Controllers\Filter;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Model\Filter\Model_NameCompany;
use App\User;
use Illuminate\Support\Facades\Auth;
use DB;

class NameCompany extends Controller
{
    public function index()
    {
        $products   = Model_NameCompany::get();

        return $products;
    }



}

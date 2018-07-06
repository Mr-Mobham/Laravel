<?php

namespace App\Http\Controllers\Products;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Model\Products\Model_Categoryes;
use App\User;
use Illuminate\Support\Facades\Auth;

class Categoryes extends Controller
{

    public function index(Request $req)
    {
        $user       = Auth::user();
        $user_id    = $user->id;
        $categories =  Model_Categoryes::where('user_id',$user_id)->get();
        $menu       =  nestable()->make($categories)->renderAsArray();


        return $menu;
    }


}

<?php

namespace App\Http\Controllers\Products;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Model\Products\Model_Categoryes;
use App\Http\Resources\Products\Article as Run_Prog;
use App\User;
use Illuminate\Support\Facades\Auth;

class Categoryes extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index(Request $req)
    {
        $user       = Auth::user();
        $user_id    = $user->id;
        $categories =  Model_Categoryes::where('user_id',$user_id)->get();
        $menu       =  nestable()->make($categories)->renderAsArray();


        return $menu;
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $req
     * @return \Illuminate\Http\Response
     */
     public function store(Request $req) {
         $res = $req-> isMethod('put') ? Model_Categoryes::findOrFail
         ($req->id) : new Model_Categoryes;
         $res->id          = $req->input('id');
         $res->title       = $req->input('title');
         $res->description = $req->input('description');
         if ($res->save()) {
           return new Run_Prog($res);
         }
     }

    public function show($id)
    {
      $res = Model_Categoryes::findOrFail($id);
      return new Run_Prog($res);
    }


    public function destroy($id)
    {
      $res = Model_Categoryes::find($id);
      if ($res->delete()) {
        return new Run_Prog($res);
      }

    }



}

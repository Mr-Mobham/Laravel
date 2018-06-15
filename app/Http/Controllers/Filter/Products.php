<?php

namespace App\Http\Controllers\Filter;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Model\Filter\Model_Products;
use App\Model\Filter\Model_Ram;
use App\Model\Filter\Model_Colors;
use App\Model\Filter\Model_Brands;
use App\Model\Filter\Model_Categoryes;
use App\User;
use Illuminate\Support\Facades\Auth;
use DB;


class Products extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

     public function index(Request $req)
    {
      $products       = Model_Products::get();
      $colors         = Model_Colors::get();

      $Nested_Arry   = array('Brands'=>$products,"Colors"=>$colors);
      $Res_Arry      = array(
        "Products"  =>$Nested_Arry,
        "Attr_Cat"  =>$this->Categoryes(),
      );

      return $Res_Arry;
    }
    Public function Categoryes(){
      $user       = Auth::user();
      $user_id    = $user->id;
      $categories =  Model_Categoryes::where('user_id',$user_id)->get();
      $menu       =  nestable()->make($categories)->renderAsArray();

      return $menu;
    }




    public function params(Request $req){


      //
      // if (count($req->all()) == '1') {
      //   $res_size   = $req->size;
      //   $res_ram    = $req->ram;
      //
        // $res        = DB::table('products2')->where('size','=',$res_size)->orwhere('ram','=',$req->ram)->get();
      // }
      // else {
      //   $res_size   = ;
      //   $res_ram    = ['ram', '=', $req->ram];
      //
      //   $res = DB::table('products2')->where([
      //     $res_size,
      //     $res_ram,
      //   ])->get();
      // }
      // $keywords = explode(',', $test);
        // $res_ram    = ['ram', '=', $req->ram];
        //
        //   $res = DB::table('products2')->where([
        //     $res_ram,
        //   ])->get();

          $res_size   = $req->size;
          $res_ram    = $req->ram;
          $res        = DB::table('products2')->where(function($query){
            foreach($res_ram as $select) {
                  $query->orWhere('ram', '=', $select);
               }
          })->get();



      return $res;
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $req
     * @return \Illuminate\Http\Response
     */
     public function store(Request $req) {
         $res = $req-> isMethod('put') ? Model_Url::findOrFail
         ($req->id) : new Model_Url;
         $res->id    = $req->input('id');
         $res->url   = $req->input('url');
         if ($res->save()) {
           return $res;
         }
     }

    public function show($id)
    {
      $res = Model_Filter::findOrFail($id);
      return new Run_Prog($res);
    }


    public function destroy($id)
    {
      $res = Model_Filter::find($id);
      if ($res->delete()) {
        return new Run_Prog($res);
      }

    }



}

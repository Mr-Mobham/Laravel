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

     public function index( )
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

          $res_ram            = $req->ram;
          $res_size           = $req->size;
          $res_company        = $req->company;
          $res_sim_cart       = $req->sim_cart;
          $res_available      = $req->available;

            $res   = DB::table('products2')->where(function ($query) use ($res_sim_cart){
              $collection_sim_cart  = collect($res_sim_cart);
                if ($collection_sim_cart->isNotEmpty()) {
                    foreach ($res_sim_cart as $key => $sim_cart) {
                      $query->orWhere('sim_card', '=', $sim_cart);
                    }
                }
            })->where(function ($query) use ($res_available) {
              $collection_available = collect($res_available);
              if ($collection_available->isNotEmpty()) {
                $query->Where('available', '=', $res_available);
              }
            })->where(function ($query) use ($res_company) {
              $collection_company = collect($res_company);
              if ($collection_company->isNotEmpty()) {
                foreach ($res_company as $key => $company) {
                  $query->orWhere('companyName', '=', $company);
                }
              }
            })->where(function ($query) use ($res_ram) {
                $collection_ram  = collect($res_ram);
                if($collection_ram->isNotEmpty()){
                  foreach($res_ram as $ram) {
                    $query->orWhere('ram', '=', $ram);
                  }
                }
            })->where(function ($query) use ($res_size) {
                $collection_size = collect($res_size);
                if($collection_size->isNotEmpty()){
                  foreach ($res_size as $key => $size) {
                    $query->orWhere('size', '=', $size);
                  }
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

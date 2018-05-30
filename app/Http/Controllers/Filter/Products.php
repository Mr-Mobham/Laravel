<?php

namespace App\Http\Controllers\Filter;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Model\Filter\Model_Filter;
use App\Model\Filter\Model_Ram;
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

    public function index()
    {
        $products   = Model_Filter::get();

        return $products;
    }

    public function params(Request $req){






      if (count($req->all()) == '1') {
        $res_size   = $req->size;
        $res_ram    = $req->ram;

        $res        = DB::table('products2')->where('size','=',$res_size)->orwhere('ram','=',$req->ram)->get();
      }
      else {
        $res_size   = ['size', '=', $req->size];
        $res_ram    = ['ram', '=', $req->ram];

        $res = DB::table('products2')->where([
          $res_size,
          $res_ram,
        ])->get();
      }




      return $res;
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $req
     * @return \Illuminate\Http\Response
     */
     public function store(Request $req) {
         $res = $req-> isMethod('put') ? Model_Filter::findOrFail
         ($req->id) : new Model_Filter;
         $res->id          = $req->input('id');
         $res->title       = $req->input('title');
         $res->description = $req->input('description');
         if ($res->save()) {
           return new Run_Prog($res);
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

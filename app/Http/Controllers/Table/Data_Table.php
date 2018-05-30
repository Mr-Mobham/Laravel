<?php

namespace App\Http\Controllers\Table;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Model\Table\Model_Data_Table;
use App\Http\Resources\Products\Article as Run_Prog;
use App\User;
use Illuminate\Support\Facades\Auth;
use Validator;

class Data_Table extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index()
    {
        $user       = Auth::user();
        $user_id    = $user->id;
        $data_table =  Model_Data_Table::where('user_id',$user_id)->get();

        return $data_table;
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $req
     * @return \Illuminate\Http\Response
     */
     public function store(Request $req) {
       $validator = Validator::make($req->all(), [
         'id' => 'required',
         'title' => 'required',
         'user_id' => 'required'
       ]);
       if ($validator->fails()) {
           return response()->json(['error'=>$validator->errors()], 401);
       }
         $res = $req-> isMethod('put') ? Model_Data_Table::findOrFail
         ($req->id) : new Model_Data_Table;
         $res->id               = $req->input('id');
         $res->title            = $req->input('title');
         $res->user_id          = $req->input('user_id');
         $res->price            = $req->input('price');
         $res->img              = $req->input('img');
         $res->slake            = $req->input('slake');
         $res->count_product    = $req->input('count_product');
         $res->body             = $req->input('body');
         $res->new_product      = $req->input('new_product');

         if ($res->save()) {
           return $req;
         }
     }

    public function show($id)
    {
      $res = Model_Data_Table::findOrFail($id);
      return new Run_Prog($res);
    }


    public function destroy($id)
    {
      $res = Model_Data_Table::find($id);
      if ($res->delete()) {
        return 'success';
      }

    }



}

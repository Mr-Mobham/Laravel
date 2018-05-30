<?php
namespace App\Http\Controllers\API;

use Illuminate\Http\Request;

use App\Http\Controllers\Controller;

use App\User;

use Illuminate\Support\Facades\Auth;

use Validator;

use Illuminate\Hashing\BcryptHasher;

use Hash;


class PassportController extends Controller
{
  public $successStatus = 200;

  public function login(){

       if(Auth::attempt(['email' => request('email'), 'password' => request('password')])){
           $user = Auth::user();
           $success['api_token'] =  $user->createToken('MyApp')->accessToken;
           $success['user']      =  $user;
           
           return response()->json(['success' => $success], $this->successStatus);
       }
       else{

           return response()->json(['error'=>'Unauthorised'], 401);
       }

   }

   public function register(Request $request)

 {

     $validator = Validator::make($request->all(), [

         'name' => 'required',
         'email' => 'required|email',
         'password' => 'required',
         'c_password' => 'required|same:password',

     ]);



     if ($validator->fails()) {

         return response()->json(['error'=>$validator->errors()], 401);

     }



     $input = $request->all();

     $input['password'] = bcrypt($input['password']);

     $user = User::create($input);

     $success['api_token'] =  $user->createToken('MyApp')->accessToken;

     $success['name'] =  $user->name;



     return response()->json(['success'=>$success], $this->successStatus);

 }

 public function getDetails()

    {
        $user = Auth::user();
        return response()->json(['success' => $user], $this->successStatus);
    }












}

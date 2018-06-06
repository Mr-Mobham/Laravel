<?php

namespace App;

use Laravel\Passport\HasApiTokens;

use Illuminate\Notifications\Notifiable;

use Illuminate\Foundation\Auth\User as Authenticatable;
use Spatie\Permission\Traits\HasRoles;
use App\Model\Filter\Model_Colors;


class User extends Authenticatable

{

   use HasApiTokens, Notifiable , HasRoles;

   protected $guard_name = 'web';

   public function phone(){
     return $this->hasOne(Model_Colors::class,'id');
   }


   /**

    * The attributes that are mass assignable.

    *

    * @var array

    */

   protected $fillable = [
       'name', 'email', 'password',
   ];



   /**

    * The attributes that should be hidden for arrays.

    *

    * @var array

    */
   protected $hidden = [
       'password', 'remember_token',
   ];





}

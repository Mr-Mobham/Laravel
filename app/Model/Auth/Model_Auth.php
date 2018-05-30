<?php

namespace App\Model\Auth;

use Illuminate\Database\Eloquent\Model;

class Model_Auth extends Model
{
  protected $table   = 'users';
  public $primry_key = 'id';
  public $timestamp  = true;

  

}

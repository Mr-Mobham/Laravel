<?php

namespace App\Model\Filter;

use Illuminate\Database\Eloquent\Model;
use App\Model\Filter\Model_Colors;


class Model_Products extends Model
{
    protected $table   = 'products2';
    public $primry_key = 'id';
    public $timestamp  = true;

  
}

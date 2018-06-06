<?php

namespace App\Model\Filter;

use Illuminate\Database\Eloquent\Model;
use App\Model\Filter\Model_Products;

class Model_Colors extends Model
{
    protected $table   = 'colors';
    public $primry_key = 'id';
    public $timestamp  = true;



};

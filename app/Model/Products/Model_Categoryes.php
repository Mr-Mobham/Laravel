<?php

namespace App\Model\Products;

use Illuminate\Database\Eloquent\Model;
use Nestable\NestableTrait;


class Model_Categoryes extends Model
{
    protected $table   = 'menu_nested';
    public $primry_key = 'id';
    public $timestamp  = true;

    use NestableTrait;
    protected $parent    = 'parent_id';




}

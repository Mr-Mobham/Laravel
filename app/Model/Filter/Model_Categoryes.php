<?php

namespace App\Model\Filter;

use Illuminate\Database\Eloquent\Model;
use Nestable\NestableTrait;


class Model_Categoryes extends Model
{
    protected $table   = 'categoryes';
    public $primry_key = 'id';
    public $timestamp  = true;

    use NestableTrait;
    protected $parent    = 'parent_id';

}

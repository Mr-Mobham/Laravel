<?php

namespace App\Model\Table;

use Illuminate\Database\Eloquent\Model;


class Model_Data_Table extends Model
{
    protected $table   = 'products';
    public $primry_key = 'id';
    public $timestamp  = true;

    


}

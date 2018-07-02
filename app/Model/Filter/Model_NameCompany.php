<?php

namespace App\Model\Filter;

use Illuminate\Database\Eloquent\Model;


class Model_NameCompany extends Model
{
    protected $table   = 'company_names';
    public $primry_key = 'id';
    public $timestamp  = true;


}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Computer extends Model
{
  protected $table = 'computers';
  protected $fillable = [ 'id_computer',
                          'hostname',
                          'ip_address',
                          'proccessor',
                          'ram',
                          'ram_type',
                          'hardisk',
                          'hardisk_type', 
                          'os',
                          'model',
                          'serial',
                          'remark',
                          'status'];
}

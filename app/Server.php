<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Server extends Model
{
    protected $table = 'servers';
    protected $fillable = ['id_server',
                           'name',
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
                           'password',
                           'remark',
                           'status'];
}

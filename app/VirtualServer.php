<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class VirtualServer extends Model
{
  protected $table = 'virtualservers';
  protected $fillable = ['id_server', 'vm_on', 'name', 'hostname', 'ip_address', 'ram', 'hardisk', 'os', 'password', 'remark', 'status'];
}

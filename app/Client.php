<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Client extends Model
{
  protected $table = 'clients';
  protected $fillable = ['id_client', 'nama', 'dept', 'active_dir', 'password', 'email', 'phone', 'status', 'remark'];
}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SettingOs extends Model
{
  protected $table = 'settings_os';
  protected $fillable = ['os', 'comments'];
}

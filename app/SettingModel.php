<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SettingModel extends Model
{
  protected $table = 'settings_model';
  protected $fillable = ['model', 'comments'];
}

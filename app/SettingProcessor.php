<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SettingProcessor extends Model
{
  protected $table = 'settings_processor';
  protected $fillable = ['type', 'comments'];
}

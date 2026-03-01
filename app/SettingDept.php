<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SettingDept extends Model
{
    protected $table = 'settings_dept';
    protected $fillable = ['dept', 'comments'];
}

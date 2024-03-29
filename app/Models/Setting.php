<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Setting extends Model
{
  use HasFactory;

  public $timestamps = true;

  protected $casts = [
    'options' => 'array'
  ];

  public function admin()
  {
    return $this->belongsTo(Admin::class);
  }
}
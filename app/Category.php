<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    //categories
    //protected $table = "categories";
    //protected $primaryKey = "id";
    //protected $fillable = ['name'];
    public function menus()
    {
    	return $this->hasmany(Menu::class);
    }
}

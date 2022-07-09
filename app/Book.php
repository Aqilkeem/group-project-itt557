<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    protected $table = 'books';
    public $primaryKey ='id';
    protected $fillable = ['id', 'category_id', 'title', 'writer', 'published_year', 'sinopsis'];

    public function rents(){
    	return $this->belongsToMany('App\User', 'App\Rent');
    }
    public function category(){
    	return $this->belongsTo('App\Category','category_id');
    }


 }

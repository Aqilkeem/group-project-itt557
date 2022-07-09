<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Rent extends Model
{
    public $primaryKey = 'id';
    protected $fillable = ['id', 'user_id', 'book_id', 'rent_date', 'return_date'];

    public function user(){
    	return $this->belongsTo('App\User','user_id');
    }

    public function book(){
    	return $this->belongsTo('App\Book','book_id');
    }
}

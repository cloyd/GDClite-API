<?php

class Location extends \Eloquent {
	protected $fillable = [];

    public function danceclasses(){
        return $this->hasMany('Danceclass');
    }
}
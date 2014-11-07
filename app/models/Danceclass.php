<?php

class Danceclass extends \Eloquent {
	protected $fillable = [];

    public function dancestyle()
    {
        return $this->belongsTo('Dancestyle');
    }

    public function teacher()
    {
        return $this->belongsTo('Teacher');
    }

    public function location()
    {
        return $this->belongsTo('Location');
    }
}
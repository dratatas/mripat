<?php

namespace App\Models;

use Backpack\CRUD\app\Models\Traits\CrudTrait;
use Illuminate\Database\Eloquent\Model;

class Laporan extends Model
{
    use CrudTrait;

    /*
    |--------------------------------------------------------------------------
    | GLOBAL VARIABLES
    |--------------------------------------------------------------------------
    */

    protected $table = 'laporans';
    // protected $primaryKey = 'id';
    // public $timestamps = false;
    protected $guarded = ['id'];
    // protected $fillable = [];
    // protected $hidden = [];
    // protected $dates = [];

    /*
    |--------------------------------------------------------------------------
    | FUNCTIONS
    |--------------------------------------------------------------------------
    */
    public function getStatusColor()
    {
        if ($this->progress == 'BELUM SELESAI') {
            return '<span class="btn btn-danger">TO DO</span>';
        } elseif ($this->progress == 'ON PROGRESS') {
            return '<span class="btn btn-warning">DOING</span>';
        } elseif ($this->progress == 'SELESAI') {
            return '<span class="btn btn-success">DONE</span>';
        }
    }

    /*
    |--------------------------------------------------------------------------
    | RELATIONS
    |--------------------------------------------------------------------------
    */
    public function kodeDjpb()
    {
        return $this->belongsTo('App\Models\Kode_djpb');
    }

    public function struktur()
    {
        return $this->belongsTo('App\Models\Struktur');
    }

    public function jenisLaporan()
    {
        return $this->belongsTo('App\Models\Jenis_laporan');
    }

    /*
    |--------------------------------------------------------------------------
    | SCOPES
    |--------------------------------------------------------------------------
    */

    /*
    |--------------------------------------------------------------------------
    | ACCESSORS
    |--------------------------------------------------------------------------
    */

    /*
    |--------------------------------------------------------------------------
    | MUTATORS
    |--------------------------------------------------------------------------
    */
    public function setFileAttribute($value)
    {
        $attribute_name = "file";
        $disk = "public";
        $destination_path = "uploads/laporan";

        $this->uploadFileToDisk($value, $attribute_name, $disk, $destination_path);
    }
}

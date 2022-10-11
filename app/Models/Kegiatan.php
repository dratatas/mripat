<?php

namespace App\Models;

use Backpack\CRUD\app\Models\Traits\CrudTrait;
use Illuminate\Database\Eloquent\Model;

class Kegiatan extends Model
{
    use CrudTrait;

    /*
    |--------------------------------------------------------------------------
    | GLOBAL VARIABLES
    |--------------------------------------------------------------------------
    */

    protected $table = 'kegiatans';
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

    /*
    |--------------------------------------------------------------------------
    | RELATIONS
    |--------------------------------------------------------------------------
    */
    public function struktur()
    {
        return $this->belongsTo(Struktur::class);
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
    public function setDatetimeAttribute($value) {
        $this->attributes['datetime'] = \Carbon\Carbon::parse($value);
    }

    // File Undangan
    public function setFileUndAttribute($value)
    {
        $attribute_name = "file_und";
        $disk = "public";
        $destination_path = "uploads/file_und";

        $this->uploadFileToDisk($value, $attribute_name, $disk, $destination_path);
    }

    // File Presensi
    public function setFilePresensiAttribute($value)
    {
        $attribute_name = "file_presensi";
        $disk = "public";
        $destination_path = "uploads/file_presensi";

        $this->uploadFileToDisk($value, $attribute_name, $disk, $destination_path);
    }

    // File Notula
    public function setFileNotulaAttribute($value)
    {
        $attribute_name = "file_notula";
        $disk = "public";
        $destination_path = "uploads/file_notula";

        $this->uploadFileToDisk($value, $attribute_name, $disk, $destination_path);
    }

    // Foto Kegiatan
    public function setFotoKegiatanAttribute($value)
    {
        $attribute_name = "foto_kegiatan";
        $disk = "public";
        $destination_path = "uploads/foto_kegiatan";

        $this->uploadFileToDisk($value, $attribute_name, $disk, $destination_path);
    }

    // File Surat Tugas
    public function setFileStAttribute($value)
    {
        $attribute_name = "file_st";
        $disk = "public";
        $destination_path = "uploads/file_st";

        $this->uploadFileToDisk($value, $attribute_name, $disk, $destination_path);
    }

    // File Surat Perjalanan Dinas
    public function setFileSpdAttribute($value)
    {
        $attribute_name = "file_spd";
        $disk = "public";
        $destination_path = "uploads/file_spd";

        $this->uploadFileToDisk($value, $attribute_name, $disk, $destination_path);
    }

    // File Rencana Anggaran Biaya
    public function setFileRabAttribute($value)
    {
        $attribute_name = "file_rab";
        $disk = "public";
        $destination_path = "uploads/file_rab";

        $this->uploadFileToDisk($value, $attribute_name, $disk, $destination_path);
    }

    // File Laporan Kegiatan
    public function setFileLkAttribute($value)
    {
        $attribute_name = "file_lk";
        $disk = "public";
        $destination_path = "uploads/file_lk";

        $this->uploadFileToDisk($value, $attribute_name, $disk, $destination_path);
    }

    // Remove file from storage if deleting
    // public static function boot()
    // {
    //     parent::boot();
    //     static::deleting(function($obj) {
    //         \Storage::disk('public_folder')->delete($obj->file_und);
    //         \Storage::disk('public_folder')->delete($obj->file_presensi);
    //         \Storage::disk('public_folder')->delete($obj->file_notula);
    //         \Storage::disk('public_folder')->delete($obj->foto_kegiatan);
    //         \Storage::disk('public_folder')->delete($obj->file_st);
    //         \Storage::disk('public_folder')->delete($obj->file_spd);
    //         \Storage::disk('public_folder')->delete($obj->file_rab);
    //         \Storage::disk('public_folder')->delete($obj->file_lk);
    //     });
    // }
}

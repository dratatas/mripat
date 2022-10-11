<?php

namespace App\Imports;

use App\Models\MonitoringBos;
use Maatwebsite\Excel\Concerns\ToModel;

class MonitoringBosImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new MonitoringBos([
            //
            'pemda' => $row[0],
            'jenis_dana_bos' => $row[1],
            'sekolah' => $row[2],
            'no_sp2d' => $row[3],
            'tgl_sp2d' => $row[4],
            'nilai_sp2d' => $row[5],
            'batch' => $row[6],
        ]);
    }
}

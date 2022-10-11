<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\KegiatanRequest;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class KegiatanCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class KegiatanCrudController extends CrudController
{
    use \Backpack\CRUD\app\Http\Controllers\Operations\ListOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\CreateOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\UpdateOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\DeleteOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\ShowOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\CloneOperation;

    /**
     * Configure the CrudPanel object. Apply settings to all operations.
     * 
     * @return void
     */
    public function setup()
    {
        CRUD::setModel(\App\Models\Kegiatan::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/kegiatan');
        CRUD::setEntityNameStrings('kegiatan', 'jadwal kegiatan');
    }

    /**
     * Define what happens when the List operation is loaded.
     * 
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected function setupListOperation()
    {
        // CRUD::setFromDb(); // columns

        /**
         * Columns can be defined using the fluent syntax or array syntax:
         * - CRUD::column('price')->type('number');
         * - CRUD::addColumn(['name' => 'price', 'type' => 'number']); 
         */
        CRUD::addColumns([
            [
                'name'  => 'uraian', 
                'label' => 'Kegiatan', 
                'type'  => 'text'
            ],
            [
                'name'  => 'is_strategis',
                'label' => 'Strategis', 
                'type'  => 'check'
            ],
            [
                'name'              => 'struktur_id',
                'label'             => 'PIC',
                'type'              => 'select',
                'entity'            => 'struktur',
                'attribute'         => 'singkatan_bagian',
            ],
            [
                'name'  => 'anggaran', 
                'label' => 'Anggaran', 
                'type'  => 'number'
            ],
            [
                'name'  => 'tgl_mulai', 
                'label' => 'Tgl.mulai', 
                'type'  => 'datetime'
            ],
            [
                'name'  => 'tgl_selesai', 
                'label' => 'Tgl.selesai', 
                'type'  => 'datetime'
            ],
            [
                'name'  => 'status_pelaksanaan', 
                'label' => 'Status', 
                'type'  => 'enum',
                'wrapper' => [
                    'element' => 'span',
                    'class'   => function ($crud, $column, $entry, $related_key) {
                        switch ($column['text']) {
                            case 'SELESAI':
                                return 'badge badge-success';
                                break;
                            case 'BELUM DILAKSANAKAN':
                                return 'badge badge-warning';
                                break;
                            case 'IN PROGRESS':
                                return 'badge badge-info';
                                break;
                            case 'RESCHEDULE':
                                return 'badge badge-danger';
                                break;
                            
                            default:
                                return 'badge badge-default';
                                break;
                        }
                    },
                ],
            ],
            [
                'name'  => 'is_kakanwil', 
                'label' => 'Kakanwil', 
                'type'  => 'check'
            ],
            [
                'name'  => 'is_gubernur', 
                'label' => 'Gubernur', 
                'type'  => 'check'
            ],
            [
                'name'  => 'is_bupati', 
                'label' => 'Bupati', 
                'type'  => 'check'
            ],
            [
                'name'  => 'is_perjalanan_dinas', 
                'label' => 'Perjadin', 
                'type'  => 'check'
            ],
        ]);
        
        // Order By Tgl. Mulai & Selesai
        CRUD::orderBy('tgl_mulai','DESC');
        CRUD::orderBy('tgl_selesai','ASC');
        
        // enable details row
        CRUD::enableDetailsRow();
        // CRUD::allowAccess('details_row');
        CRUD::allowAccess('details_row');
        CRUD::setDetailsRowView('vendor.backpack.crud.details_row.kegiatan');

        // Filters
        $this->addCustomCrudFilters();
        // dd($this->crud);
        // Export
        $this->crud->enableExportButtons();
    }

    /**
     * Define what happens when the Create operation is loaded.
     * 
     * @see https://backpackforlaravel.com/docs/crud-operation-create
     * @return void
     */
    protected function setupCreateOperation()
    {
        CRUD::setValidation(KegiatanRequest::class);

        CRUD::setOperationSetting('contentClass', 'col-md-12 bold-labels');

        CRUD::addField([
            'name'      => 'kode_djpb_id',
            'type'      => 'hidden',
            'default'   => backpack_auth()->user()->kode_djpb_id,
        ]);

        CRUD::addFields(static::getFieldsArrayForGeneralTab());
        CRUD::addFields(static::getFieldsArrayForSosialisasiTab());
        CRUD::addFields(static::getFieldsArrayForPerjalananDinasTab());
        CRUD::addFields(static::getFieldsArrayForPrePostDocumentTab());

        // CRUD::setFromDb(); // fields

        /**
         * Fields can be defined using the fluent syntax or array syntax:
         * - CRUD::field('price')->type('number');
         * - CRUD::addField(['name' => 'price', 'type' => 'number'])); 
         */
    }

    /**
     * Define what happens when the Update operation is loaded.
     * 
     * @see https://backpackforlaravel.com/docs/crud-operation-update
     * @return void
     */
    protected function setupUpdateOperation()
    {
        $this->setupCreateOperation();
    }

    /**
     * Define what happens when the Show operation is loaded.
     * 
     * @see https://backpackforlaravel.com/docs/crud-operation-show
     * @return void
     */
    protected function setupShowOperation()
    {
        // by default the Show operation will try to show all columns in the db table,
        // but we can easily take over, and have full control of what columns are shown,
        // by changing this config for the Show operation 
        $this->crud->set('show.setFromDb', false);

        $this->crud->addColumn([
            'name'              => 'struktur_id',
            'label'             => 'PIC',
            'type'              => 'select',
            'entity'            => 'struktur',
            'attribute'         => 'singkatan_bagian',
        ]);

        $this->crud->addColumn([
                'name'  => 'status_pelaksanaan', 
                'label' => 'Status', 
                'type'  => 'enum',
                'wrapper' => [
                    'element' => 'span',
                    'class'   => function ($crud, $column, $entry, $related_key) {
                        switch ($column['text']) {
                            case 'SELESAI':
                                return 'badge badge-success';
                                break;
                            case 'BELUM DILAKSANAKAN':
                                return 'badge badge-warning';
                                break;
                            case 'IN PROGRESS':
                                return 'badge badge-info';
                                break;
                            case 'RESCHEDULE':
                                return 'badge badge-danger';
                                break;
                            
                            default:
                                return 'badge badge-default';
                                break;
                        }
                    },
                ],
            ]);
        
        $this->crud->addColumns(['uraian','tgl_mulai','tgl_selesai']);

        $this->crud->addColumn([
            'name'              => 'anggaran',
            'label'             => 'Dana',
            'type'              => 'number',
            'function'  => function($entry){
                // return '<a href=' . Storage::disk('public')->url($entry->file) . ' target="_blank">' . basename($entry->file) . '</a>';  // this works, unless using port
                return 'RP. $entry';  // this works if using port
            }
        ]);

        $this->crud->addColumn([
            'name'              => 'is_perjalanan_dinas',
            'label'             => 'Perjalanan Dinas',
            'type'              => 'radio',
            'options'           => [
                // the key will be stored in the db, the value will be shown as label; 
                1 => "Ya",
                0 => "Tidak",
            ],
        ]);

        $this->crud->addColumn([
            'name'              => 'is_strategis',
            'label'             => 'Strategis',
            'type'              => 'radio',
            'options'           => [
                // the key will be stored in the db, the value will be shown as label; 
                1 => "Ya",
                0 => "Tidak",
            ],
        ]);

        $this->crud->addColumn([
            'name'              => 'is_sosialisasi',
            'label'             => 'Sosialisasi',
            'type'              => 'radio',
            'options'           => [
                // the key will be stored in the db, the value will be shown as label; 
                1 => "Ya",
                0 => "Tidak",
            ],
        ]);

        // Laporan Kegiatan
        CRUD::addColumn([
                'label'     => 'Laporan Kegiatan',
                'type'      => 'closure',
                'name'      => 'file_lk',
                'function'  => function($entry){
                    // return '<a href=' . Storage::disk('public')->url($entry->file) . ' target="_blank">' . basename($entry->file) . '</a>';  // this works, unless using port
                    return '<a href=' . asset('storage/'.$entry->file_lk) . ' target="_blank">' . substr(basename($entry->file_lk),-8) . '</a>';  // this works if using port
                }
        ]);

        // Rencana Anggaran Biaya
        CRUD::addColumn([
                'label'     => 'Rencana Anggaran Biaya',
                'type'      => 'closure',
                'name'      => 'file_lk',
                'function'  => function($entry){
                    // return '<a href=' . Storage::disk('public')->url($entry->file) . ' target="_blank">' . basename($entry->file) . '</a>';  // this works, unless using port
                    return '<a href=' . asset('storage/'.$entry->file_rab) . ' target="_blank">' . substr(basename($entry->file_rab),-8) . '</a>';  // this works if using port
                }
        ]);

        // Surat Tugas
        CRUD::addColumn([
                'label'     => 'Surat Tugas',
                'type'      => 'closure',
                'name'      => 'file_st',
                'function'  => function($entry){
                    // return '<a href=' . Storage::disk('public')->url($entry->file) . ' target="_blank">' . basename($entry->file) . '</a>';  // this works, unless using port
                    return '<a href=' . asset('storage/'.$entry->file_st) . ' target="_blank">' . substr(basename($entry->file_st),-8) . '</a>';  // this works if using port
                }
        ]);

        // Surat Perjalanan Dinas
        CRUD::addColumn([
                'label'     => 'Surat Perjalanan Dinas',
                'type'      => 'closure',
                'name'      => 'file_spd',
                'function'  => function($entry){
                    // return '<a href=' . Storage::disk('public')->url($entry->file) . ' target="_blank">' . basename($entry->file) . '</a>';  // this works, unless using port
                    return '<a href=' . asset('storage/'.$entry->file_spd) . ' target="_blank">' . substr(basename($entry->file_spd),-8) . '</a>';  // this works if using port
                }
        ]);

        // Undangan
        CRUD::addColumn([
                'label'     => 'Undangan',
                'type'      => 'closure',
                'name'      => 'file_und',
                'function'  => function($entry){
                    // return '<a href=' . Storage::disk('public')->url($entry->file) . ' target="_blank">' . basename($entry->file) . '</a>';  // this works, unless using port
                    return '<a href=' . asset('storage/'.$entry->file_und) . ' target="_blank">' . substr(basename($entry->file_und),-8) . '</a>';  // this works if using port
                }
        ]);

        // Presensi
        CRUD::addColumn([
                'label'     => 'Presensi/Daftar Hadir',
                'type'      => 'closure',
                'name'      => 'file_presensi',
                'function'  => function($entry){
                    // return '<a href=' . Storage::disk('public')->url($entry->file) . ' target="_blank">' . basename($entry->file) . '</a>';  // this works, unless using port
                    return '<a href=' . asset('storage/'.$entry->file_presensi) . ' target="_blank">' . substr(basename($entry->file_presensi),-8) . '</a>';  // this works if using port
                }
        ]);

        // Notula
        CRUD::addColumn([
                'label'     => 'Notula',
                'type'      => 'closure',
                'name'      => 'file_notula',
                'function'  => function($entry){
                    // return '<a href=' . Storage::disk('public')->url($entry->file) . ' target="_blank">' . basename($entry->file) . '</a>';  // this works, unless using port
                    return '<a href=' . asset('storage/'.$entry->file_notula) . ' target="_blank">' . substr(basename($entry->file_notula),-8) . '</a>';  // this works if using port
                }
        ]);

        // Foto Kegiatan
        CRUD::addColumn([
                'label'     => 'Foto Kegiatan',
                'type'      => 'closure',
                'name'      => 'foto_kegiatan',
                'function'  => function($entry){
                    // return '<a href=' . Storage::disk('public')->url($entry->file) . ' target="_blank">' . basename($entry->file) . '</a>';  // this works, unless using port
                    return '<a href=' . asset('storage/'.$entry->foto_kegiatan) . ' target="_blank">' . substr(basename($entry->foto_kegiatan),-8) . '</a>';  // this works if using port
                }
        ]);

        $this->crud->addColumn([
            'name'              => 'is_kakanwil',
            'label'             => 'Kakanwil hadir',
            'type'              => 'radio',
            'options'           => [
                // the key will be stored in the db, the value will be shown as label; 
                1 => "Ya",
                0 => "Tidak",
            ],
        ]);

        $this->crud->addColumn([
            'name'              => 'is_gubernur',
            'label'             => 'Gubernur hadir',
            'type'              => 'radio',
            'options'           => [
                // the key will be stored in the db, the value will be shown as label; 
                1 => "Ya",
                0 => "Tidak",
            ],
        ]);

        $this->crud->addColumn([
            'name'              => 'is_bupati',
            'label'             => 'Bupati hadir',
            'type'              => 'radio',
            'options'           => [
                // the key will be stored in the db, the value will be shown as label; 
                1 => "Ya",
                0 => "Tidak",
            ],
        ]);
        // example logic
        // $this->crud->addColumn([
        //     'name' => 'table',
        //     'label' => 'Table',
        //     'type' => 'table',
        //     'columns' => [
        //         'name'  => 'Name',
        //         'desc'  => 'Description',
        //         'price' => 'Price',
        //     ]
        // ]);
        // $this->crud->addColumn([
        //     'name' => 'fake_table',
        //     'label' => 'Fake Table',
        //     'type' => 'table',
        //     'columns' => [
        //         'name'  => 'Name',
        //         'desc'  => 'Description',
        //         'price' => 'Price',
        //     ],
        // ]);
        // $this->crud->addColumn('text');
        // $this->crud->removeColumn('date');
        // $this->crud->removeColumn('extras');

        // Note: if you HAVEN'T set show.setFromDb to false, the removeColumn() calls won't work
        // because setFromDb() is called AFTER setupShowOperation(); we know this is not intuitive at all
        // and we plan to change behaviour in the next version; see this Github issue for more details
        // https://github.com/Laravel-Backpack/CRUD/issues/3108
    }

    public static function getFieldsArrayForGeneralTab()
    {
        return [
            [
                'name'              => 'uraian',
                'label'             => 'Nama Kegiatan',
                'type'              => 'text',
                'tab'               => 'Data Umum',
                'wrapperAttributes' => [
                    'class' => 'form-group col-md-6',
                ],
            ],
            [
                'name'              => 'anggaran',
                'label'             => 'Kebutuhan Dana',
                'type'              => 'number',
                'tab'               => 'Data Umum',
                'wrapperAttributes' => [
                    'class' => 'form-group col-md-6',
                ],
            ],
            [
                'name'              => 'struktur_id',
                'label'             => 'PIC',
                'type'              => 'relationship',
                'entity'            => 'struktur',
                'attribute'         => 'singkatan_bagian',
                'wrapperAttributes' => [
                    'class' => 'form-group col-md-6',
                ],
                'options'   => (function ($query) {
                    return $query->whereIn('level_id',[2,3])->get();
                }),
                'tab'               => 'Data Umum',
            ],
            [ // Date_range
                'name'       => ['tgl_mulai', 'tgl_selesai'], // a unique name for this field
                'label'      => '<i>Range</i> Tanggal <span style="color:red;font-size:14px;margin-left:0.5em"">(Tgl.Mulai Kegiatan s.d. Selesai)</span>',
                'type'       => 'date_range',
                'default'    => ['2021-01-01 01:01', '2021-12-31 12:00'],
                // OPTIONALS
                'date_range_options' => [ // options sent to daterangepicker.js
                    'timePicker' => true,
                    'locale'     => ['format' => 'DD/MM/YYYY HH:mm'],
                ],
                'tab' => 'Data Umum',
            ],
            // [
            //     'name'              => 'jam',
            //     'label'             => 'Jam Tanggal <span style="color:blue;font-size:14px;margin-left:0.5em">(isikan jam:menit  AM/PM )</span> <span style="font-size:14px;margin-left:0.5em">[PM: waktu setelah pukul 12.00 siang]</span>',
            //     'type'              => 'time',
            //     'tab'               => 'Data Umum',
            //     'wrapperAttributes' => [
            //         'class' => 'form-group col-md-6',
            //     ],
            // ],
            [
                'name'              => 'status_pelaksanaan',
                'label'             => 'Status Kegiatan',
                'type'              => 'enum',
                'tab'               => 'Data Umum',
                'wrapperAttributes' => [
                    'class' => 'form-group col-md-6',
                ],
            ],
            [
                'name'              => 'is_strategis',
                'label'             => 'Strategis',
                'type'              => 'radio',
                'options'           => [
                    // the key will be stored in the db, the value will be shown as label; 
                    1 => "Ya",
                    0 => "Tidak",
                ],
                'tab'               => 'Data Umum',
                'wrapperAttributes' => [
                    'class' => 'form-group col-md-6',
                ],
            ],
        ];
    }

    public static function getFieldsArrayForSosialisasiTab()
    {
        $fields = [];

        $fields[] = [
                'name'              => 'is_sosialisasi',
                'label'             => 'Apakah kegiatan berupa sosialisasi, FGD, diseminasi, atau sejenisnya?',
                'type'              => 'radio',
                'options'           => [
                    // the key will be stored in the db, the value will be shown as label; 
                    1 => "Ya",
                    0 => "Tidak",
                ],
                'inline'            => true,
                'tab'               => 'Sosialisasi/Kehadiran Kakanwil'
        ];

        $fields[] = [
                'name'              => 'is_kakanwil',
                'label'             => 'Perlu kehadiran Kakanwil?',
                'type'              => 'radio',
                'options'           => [
                    // the key will be stored in the db, the value will be shown as label; 
                    1 => "Ya",
                    0 => "Tidak",
                ],
                'inline'            => true,
                'tab'               => 'Sosialisasi/Kehadiran Kakanwil'
        ];

        $fields[] = [
                'name'              => 'is_gubernur',
                'label'             => 'Perlu kehadiran Gubernur?',
                'type'              => 'radio',
                'options'           => [
                    // the key will be stored in the db, the value will be shown as label; 
                    1 => "Ya",
                    0 => "Tidak",
                ],
                'inline'            => true,
                'tab'               => 'Sosialisasi/Kehadiran Kakanwil'
        ];

        $fields[] = [
                'name'              => 'is_bupati',
                'label'             => 'Perlu kehadiran Bupati?',
                'type'              => 'radio',
                'options'           => [
                    // the key will be stored in the db, the value will be shown as label; 
                    1 => "Ya",
                    0 => "Tidak",
                ],
                'inline'            => true,
                'tab'               => 'Sosialisasi/Kehadiran Kakanwil'
        ];

        $fields[] = [
            'name'      => 'file_und',
            'label'     => 'File Undangan',
            'type'      => 'upload',
            'upload'    => true, 
            'tab'    => 'Sosialisasi/Kehadiran Kakanwil', 
            // 'disk'      => 'public'
        ];

        $fields[] = [
            'name'      => 'file_presensi',
            'label'     => 'File Presensi',
            'type'      => 'upload',
            'upload'    => true, 
            'tab'    => 'Sosialisasi/Kehadiran Kakanwil', 
            // 'disk'      => 'public'
        ];

        $fields[] = [
            'name'      => 'file_notula',
            'label'     => 'Notula',
            'type'      => 'upload',
            'upload'    => true, 
            'tab'    => 'Sosialisasi/Kehadiran Kakanwil', 
            // 'disk'      => 'public'
        ];

        $fields[] = [
            'name'      => 'foto_kegiatan',
            'label'     => 'Foto Kegiatan',
            'type'      => 'upload',
            'upload'    => true, 
            'tab'    => 'Sosialisasi/Kehadiran Kakanwil', 
            // 'disk'      => 'public'
        ];

        return $fields;

    }

    public static function getFieldsArrayForPerjalananDinasTab()
    {
        $fields = [];

        $fields[] = [
                'name'              => 'is_perjalanan_dinas',
                'label'             => 'Apakah kegiatan berupa perjalanan dinas?',
                'type'              => 'radio',
                'options'           => [
                    // the key will be stored in the db, the value will be shown as label; 
                    1 => "Ya",
                    0 => "Tidak",
                ],
                'inline'            => true,
                'tab'               => 'Perjalanan Dinas',
        ];

        $fields[] = [
            'name'      => 'file_st',
            'label'     => 'File Surat Tugas',
            'type'      => 'upload',
            'upload'    => true, 
            'tab'       => 'Perjalanan Dinas', 
            // 'disk'      => 'public'
        ];

        $fields[] = [
            'name'      => 'file_spd',
            'label'     => 'File Surat Perjalanan Dinas',
            'type'      => 'upload',
            'upload'    => true, 
            'tab'       => 'Perjalanan Dinas', 
            // 'disk'      => 'public'
        ];

        return $fields;
    }

    public static function getFieldsArrayForPrePostDocumentTab()
    {
        return [
            [
                'name'      => 'file_rab',
                'label'     => 'File Nota Pertimbangan/Rencana Kegiatan dan RAB',
                'type'      => 'upload',
                'upload'    => true, 
                'tab'       => 'Pre-Post Dokumen', 
                // 'disk'      => 'public'
            ],
            [
                'name'      => 'file_lk',
                'label'     => 'Laporan Kegiatan',
                'type'      => 'upload',
                'upload'    => true, 
                'tab'    => 'Pre-Post Dokumen', 
                // 'disk'      => 'public'
            ],
        ];
    }

    protected function addCustomCrudFilters()
    {
        // Tgl Mulai Kegiatan Filter
        $this->crud->addFilter([ // daterange filter
            'type' => 'date_range',
            'name' => 'tgl_mulai',
            'label'=> 'Range Tgl.Kegiatan',
            // 'date_range_options' => [
                  // 'format' => 'YYYY/MM/DD',
                  // 'locale' => ['format' => 'YYYY/MM/DD'],
                  // 'showDropdowns' => true,
                  // 'showWeekNumbers' => true
             // ]
          ],
          false,
          function ($value) { // if the filter is active, apply these constraints
              $dates = json_decode($value);
              $this->crud->addClause('where', 'tgl_mulai', '>=', $dates->from);
              $this->crud->addClause('where', 'tgl_mulai', '<=', $dates->to);
        });
        // PIC Filter
        $this->crud->addFilter([ // select2 filter
            'name' => 'struktur_id',
            'type' => 'select2',
            'label'=> 'PIC'
        ], function() {
            return \App\Models\Struktur::whereIn('level_id',[2,3])
                
                ->pluck('singkatan_bagian', 'id')
                ->toArray();
        }, function($value) { // if the filter is active
            $this->crud->addClause('where', 'struktur_id', $value);
        });

        // Kehadiran Kakanwil
        $this->crud->addFilter([
            'type'  => 'simple',
            'name'  => 'is_kakanwil',
            'label' => 'Kehadiran Kakanwil'
        ], 
        false, 
        function() { // if the filter is active
            $this->crud->addClause('where', 'is_kakanwil', 1); // apply the "active" eloquent scope 
        });

        // Perjalanan Dinas
        $this->crud->addFilter([
            'type'  => 'simple',
            'name'  => 'is_perjalanan_dinas',
            'label' => 'Perjalanan Dinas'
        ], 
        false, 
        function() { // if the filter is active
            $this->crud->addClause('where', 'is_perjalanan_dinas', 1); // apply the "active" eloquent scope 
        });

        // Status Kegiatan
        $this->crud->addFilter([ // dropdown filter
            'name' => 'status_pelaksanaan',
            'type' => 'dropdown',
            'label'=> 'Status'
          ], function() {
              return \App\Models\Kegiatan::getEnumValuesAsAssociativeArray('status_pelaksanaan');
          }, function($value) { // if the filter is active
                  $this->crud->addClause('where', 'status_pelaksanaan', $value);
          });
    }
}

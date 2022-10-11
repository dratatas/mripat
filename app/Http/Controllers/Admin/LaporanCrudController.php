<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\LaporanRequest;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;
use Illuminate\Support\Facades\Storage;

/**
 * Class LaporanCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class LaporanCrudController extends CrudController
{
    use \Backpack\CRUD\app\Http\Controllers\Operations\ListOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\CreateOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\InlineCreateOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\UpdateOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\DeleteOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\ShowOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\FetchOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\CloneOperation;

    /**
     * Configure the CrudPanel object. Apply settings to all operations.
     * 
     * @return void
     */
    public function setup()
    {
        CRUD::setModel(\App\Models\Laporan::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/laporan');
        CRUD::setEntityNameStrings('laporan', 'laporan');
    }

    // public function fetchJenisLaporans()
    // {
    //     return $this->fetch(\App\Models\Jenis_laporan::class);
    // }

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
        CRUD::addColumn([
            'label'     => 'Deadline',
            'type'      => 'date',
            'name'      => 'deadline',
        ])->makeFirstColumn();

        CRUD::addColumn([
            'label'     => 'Jns Laporan',
            'type'      => 'select',
            'name'      => 'jenis_laporan_id',
            'entity'    => 'jenisLaporan',
            'attribute' => 'uraian',
            'model'     => 'App\Models\Jenis_laporan',
        ]);

        // CRUD::addColumn([
        //     'label'     => 'Satker',
        //     'type'      => 'select',
        //     'name'      => 'kode_djpb_id',
        //     'entity'    => 'kodeDjpb',
        //     'attribute' => 'singkatan',
        //     'model'     => 'App\Models\Kode_djpb'
        // ]);

        CRUD::addColumn([
            'label'     => 'Laporan Bln',
            'type'      => 'date',
            'name'      => 'bulan',
            'format'    => 'MMM Y'
        ]);

        CRUD::addColumn([
            'label'     => 'Status',
            'type'      => 'model_function',
            'name'      => 'progress',
            'function_name' => 'getStatusColor',
        ]);

        CRUD::addColumn([
            'label'     => 'PIC', // Table column heading
            'type'      => 'select',
            'name'      => 'struktur_id', // the column that contains the ID of that connected entity;
            'entity'    => 'struktur', // the method that defines the relationship in your Model
            'attribute' => 'singkatan_bagian', // foreign key attribute that is shown to user from foreign column's name
            'model'     => 'App\Models\Struktur',
        ]);

        // CRUD::addColumn([
        //     'name'      => 'file',
        //     'label'     => 'Dokumen',
        //     'type'      => 'upload',
        //     'upload'    => true, 
        //     // 'disk'      => 'public'
        // ]);

        CRUD::addColumn([
                'label'     => 'Dokumen',
                'type'      => 'closure',
                'name'      => 'file',
                'function'  => function($entry){
                    // return '<a href=' . Storage::disk('public')->url($entry->file) . ' target="_blank">' . basename($entry->file) . '</a>';  // this works, unless using port
                    return '<a href=' . asset('storage/'.$entry->file) . ' target="_blank">' . substr(basename($entry->file),-8) . '</a>';  // this works if using port
                }
        ]);
        
        // Order By Deadline
        CRUD::orderBy('deadline','DESC');
        
        // Add custom filter
        $this->addCustomCrudFilters();
    }

    /**
     * Define what happens when the Create operation is loaded.
     * 
     * @see https://backpackforlaravel.com/docs/crud-operation-create
     * @return void
     */
    protected function setupCreateOperation()
    {
        CRUD::setValidation(LaporanRequest::class);

        // CRUD::setFromDb(); // fields

        /**
         * Fields can be defined using the fluent syntax or array syntax:
         * - CRUD::field('price')->type('number');
         * - CRUD::addField(['name' => 'price', 'type' => 'number'])); 
         */
        // dd(backpack_auth())->user()->struktur_id;
        CRUD::addField([
            'name'      => 'kode_djpb_id',
            'type'      => 'hidden',
            'default'   => backpack_auth()->user()->kode_djpb_id,
        ]);

        CRUD::addField([
            'name'      => 'struktur_id',
            'type'      => 'hidden',
            'default'   => backpack_auth()->user()->struktur_id,
        ]);

        
        CRUD::addField([
            'label'         => 'Frekuensi',
            'type'          => 'enum',
            'name'          => 'frekuensi',
        ]);

        CRUD::addField([
            'label' => 'Jenis Laporan',
            'type' => 'relationship',
            'name' => 'jenis_laporan_id',
            'entity' => 'jenisLaporan',
            'attribute' => 'uraian',
            // 'inline_create'     => [
            //     'entity'      => 'jenisLaporan',
            //     'modal_class' => 'modal-dialog modal-xl',
            // ],
            // 'data_source'       => backpack_url('laporan/fetch/JenisLaporans'),
            // 'ajax' => true,
        ]);

        CRUD::addField([
            'name'  => 'bulan',
            'label' => 'Bulan',
            'type'  => 'date_picker',
                // optional:
                'date_picker_options' => [
                    'viewMode' => 'months',
                    'minViewMode' => 'months',
                    // 'format'   => 'yyyy-mm',
                    'language' => 'id',
                ]
        ]);
            
        CRUD::addField([
            'label'         => 'Deadline',
            'type'          => 'date',
            'name'          => 'deadline',
        ]);

        CRUD::addField([
            'label'         => 'progress',
            'type'          => 'enum',
            'name'          => 'progress',
        ]);

        CRUD::addField([
            'label'         => 'Tujuan',
            'type'          => 'text',
            'name'          => 'tujuan',
        ]);
        
        CRUD::addField([
            'label'         => 'Dasar Hukum',
            'type'          => 'textarea',
            'name'          => 'dasar_hukum',
        ]);

        CRUD::addField([
            'name'      => 'file',
            'label'     => 'Dokumen',
            'type'      => 'upload',
            'upload'    => true, 
            // 'disk'      => 'public'
        ]);
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
     * Respond to AJAX calls from the select2 with entries from the Jenis Laporan model.
     * @return JSON
     */
    public function fetchJenisLaporan()
    {
        return $this->fetch(\App\Models\Jenis_laporan::class);
    }

    protected function addCustomCrudFilters()
    {
        // Month of report
        $this->crud->addFilter([ // date filter
            'type'  => 'date',
            'name'  => 'bulan',
            'label' => 'Laporan Bln (selalu pilih tgl 1)',
            'options' => [
                'viewMode' => 'months',
                'minViewMode' => 'months',
                // 'format'   => 'yyyy-mm',
                'language' => 'id',
            ]
          ],
          true,
          function ($value) { // if the filter is active, apply these constraints
              $this->crud->addClause('where', 'bulan', '=', $value);
        });

        // Deadline range
        $this->crud->addFilter([ // daterange filter
            'type' => 'date_range',
            'name' => 'date_range',
            'label'=> 'Deadline Range',
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
              $this->crud->addClause('where', 'deadline', '>=', $dates->from);
              $this->crud->addClause('where', 'deadline', '<=', $dates->to);
        });

        // Jenis laporan
        $this->crud->addFilter([ // select2 filter
            'name' => 'jenis_laporan_id',
            'type' => 'select2',
            'label'=> 'Jns Laporan'
          ], function() {
              return \App\Models\Jenis_laporan::all()->pluck('uraian', 'id')->toArray();
          }, function($value) { // if the filter is active
              $this->crud->addClause('where', 'jenis_laporan_id', $value);
        });

        // Progress
        $this->crud->addFilter([ // dropdown filter
            'name' => 'status',
            'type' => 'dropdown',
            'label'=> 'Status'
          ], function() {
              return \App\Models\Laporan::getEnumValuesAsAssociativeArray('progress');
          }, function($value) { // if the filter is active
                  $this->crud->addClause('where', 'progress', $value);
          });
    }
}

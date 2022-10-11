<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\SatkerRequest;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class SatkerCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class SatkerCrudController extends CrudController
{
    use \Backpack\CRUD\app\Http\Controllers\Operations\ListOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\CreateOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\UpdateOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\DeleteOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\ShowOperation;

    /**
     * Configure the CrudPanel object. Apply settings to all operations.
     * 
     * @return void
     */
    public function setup()
    {
        CRUD::setModel(\App\Models\Satker::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/satker');
        CRUD::setEntityNameStrings('satker', 'satkers');
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
        // show at list with its singkatan not level_id
        $this->crud->addColumn([
            'label'     => 'Kode KPPN',
            'type'      => 'select',
            'name'      => 'kode_djpb_id',
            'entity'    => 'kode_djpb',
            'attribute' => 'singkatan',
            'model'     => "App\Models\Kode_djpb",
        ]);
        
        // show at list with its singkatan not parent_id
        $this->crud->addColumn([
            'label'     => 'Parent',
            'type'      => 'select',
            'name'      => 'parent_id',
            'entity'    => 'parent',
            'attribute' => 'uraian',
            'model'     => 'App\Models\Satker'
        ]);

        $this->crud->addColumns([
            'kode',
            'uraian',
            'kode_kewenangan',
        ]);
    }

    /**
     * Define what happens when the Create operation is loaded.
     * 
     * @see https://backpackforlaravel.com/docs/crud-operation-create
     * @return void
     */
    protected function setupCreateOperation()
    {
        CRUD::setValidation(SatkerRequest::class);

        // CRUD::setFromDb(); // fields

        /**
         * Fields can be defined using the fluent syntax or array syntax:
         * - CRUD::field('price')->type('number');
         * - CRUD::addField(['name' => 'price', 'type' => 'number'])); 
         */
        $this->crud->addField([
            'label'         => 'Kode KPPN',
            'type'          => 'select2',
            'name'          => 'kode_djpb_id', // the db column for the foreign key
            'entity'        => 'kode_djpb', // the method that defines the relationship in your Model
            'attribute'     => 'uraian', // foreign key attribute that is shown to user
            'model'         => 'App\Models\Kode_djpb' // foreign key model
        ]);

        $this->crud->addField([
            'label'     => 'Parent',
            'type'      => 'select2',
            'name'      => 'parent_id',
            'entity'    => 'parent', // method on your relationship model
            'attribute' => 'kode',
            'model'     => 'App\Models\Satker'
        ]);

        $this->crud->addField([
            'label'     => 'Kode BA/Satker',
            'type'      => 'text',
            'name'      => 'kode'
        ]);

        $this->crud->addField([
            'label'     => 'Uraian',
            'type'      => 'text',
            'name'      => 'uraian'
        ]);

        $this->crud->addField([
            'label'     => 'Kode Kewenangan',
            'type'      => 'text',
            'name'      => 'kode_kewenangan'
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
}

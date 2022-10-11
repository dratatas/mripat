<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\Kode_djpbRequest;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class Kode_djpbCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class Kode_djpbCrudController extends CrudController
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
        CRUD::setModel(\App\Models\Kode_djpb::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/kode_djpb');
        CRUD::setEntityNameStrings('kode_djpb', 'kode_djpbs');
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
        CRUD::setColumns([
            'id',
            'lft',
            'rgt',
            'kode',
            'kode_satker',
            'singkatan'
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
        CRUD::setValidation(Kode_djpbRequest::class);

        // CRUD::setFromDb(); // fields

        /**
         * Fields can be defined using the fluent syntax or array syntax:
         * - CRUD::field('price')->type('number');
         * - CRUD::addField(['name' => 'price', 'type' => 'number'])); 
         */
        // show at list with its singkatan not parent_id
        $this->crud->addColumn([
            'label'     => 'Parent',
            'type'      => 'select',
            'name'      => 'parent_id',
            'entity'    => 'parent',
            'attribute' => 'singkatan',
            'model'     => 'App\Models\Kode_djpb'
        ])->afterColumn('id');

        // show at list with its singkatan not level_id
        $this->crud->addColumn([
            'label' => 'Level',
            'type' => 'select',
            'name' => 'level_id',
            'entity' => 'level',
            'attribute' => 'singkatan',
            'model' => "App\Models\Level",
        ])->afterColumn('parent_id');

        // add field for inserting and updating
        $this->crud->addField([
            'label'         => 'Level',
            'type'          => 'select2',
            'name'          => 'level_id', // the db column for the foreign key
            'entity'        => 'level', // the method that defines the relationship in your Model
            'attribute'     => 'uraian', // foreign key attribute that is shown to user
            'model'         => 'App\Models\Level' // model's name
        ]);

        $this->crud->addField([
            'label'     => 'Parent',
            'type'      => 'select',
            'name'      => 'parent_id',
            'entity'    => 'parent',
            'entity'    => 'parent',
            'attribute' => 'singkatan',
            'model'     => 'App\Models\Kode_djpb',
        ]);


        $this->crud->addField([
            'label'     => 'Left',
            'type'      => 'number',
            'name'      => 'lft',
            'prefix'    => 'Dalam angka'
        ]);

        $this->crud->addField([
            'label'     => 'Right',
            'type'      => 'number',
            'name'      => 'rgt',
            'prefix'    => 'Dalam Angka'
        ]);

        $this->crud->addField([
            'label'     => 'Depth',
            'type'      => 'number',
            'name'      => 'depth',
            'prefix'    => 'Dalam Angka'
        ]);

        $this->crud->addField([
            'label'     => 'Kode',
            'type'      => 'text',
            'name'      => 'kode'
        ]);

        $this->crud->addField([
            'label'     => 'Kode Satker',
            'type'      => 'text',
            'name'      => 'kode_satker'
        ]);

        $this->crud->addField([
            'label'     => 'Nama Entitas',
            'type'      => 'text',
            'name'      => 'uraian'
        ]);

        $this->crud->addField([
            'label'     => 'Singkatan',
            'type'      => 'text',
            'name'      => 'singkatan'
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

<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\StrukturRequest;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class StrukturCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class StrukturCrudController extends CrudController
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
        CRUD::setModel(\App\Models\Struktur::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/struktur');
        CRUD::setEntityNameStrings('struktur', 'strukturs');
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
        $this->crud->setColumns([
            'id',
            'lft',
            'rgt',
            'singkatan_bagian'
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
        CRUD::setValidation(StrukturRequest::class);

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
            'attribute' => 'singkatan_bagian',
            'model'     => 'App\Models\Struktur'
        ])->afterColumn('rgt');

        // show at list with its singkatan not level_id
        $this->crud->addColumn([
            'label'     => 'Level',
            'type'      => 'select',
            'name'      => 'level_id',
            'entity'    => 'level',
            'attribute' => 'singkatan',
            'model'     => "App\Models\Level",
        ])->afterColumn('Parent');
        
        // add field for inserting and updating
        $this->crud->addField([
            'label'         => 'Level',
            'type'          => 'select2',
            'name'          => 'level_id', // the db column for the foreign key
            'entity'        => 'level', // the method that defines the relationship in your Model
            'attribute'     => 'uraian', // foreign key attribute that is shown to user
            'model'         => 'App\Models\Level' // foreign key model
        ]);

        $this->crud->addField([
            'label'     => 'Parent',
            'type'      => 'select2',
            'name'      => 'parent_id',
            'entity'    => 'parent', // method on your relationship model
            'attribute' => 'singkatan_bagian',
            'model'     => 'App\Models\Struktur'
        ]);

        $this->crud->addField([
            'label'     => 'Left',
            'type'      => 'text',
            'name'      => 'lft',
            'prefix'    => 'Dalam angka'
        ]);

        $this->crud->addField([
            'label'     => 'Right',
            'type'      => 'text',
            'name'      => 'rgt',
            'prefix'    => 'Dalam Angka'
        ]);

        $this->crud->addField([
            'label'     => 'Depth',
            'type'      => 'text',
            'name'      => 'depth',
            'prefix'    => 'Dalam Angka'
        ]);

        $this->crud->addField([
            'label'     => 'Uraian Bagian',
            'type'      => 'text',
            'name'      => 'bagian'
        ]);

        $this->crud->addField([
            'label'     => 'Singkatan Bagian',
            'type'      => 'text',
            'name'      => 'singkatan_bagian'
        ]);

        $this->crud->addField([
            'label'     => 'Uraian Jabatan',
            'type'      => 'text',
            'name'      => 'jabatan'
        ]);

        $this->crud->addField([
            'label'     => 'Singkatan Jabatan',
            'type'      => 'text',
            'name'      => 'singkatan_jabatan'
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

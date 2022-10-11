@extends(backpack_view('blank'))

@php
    $widgets['before_content'][] = [
        'type'        => 'jumbotron',
        'heading'     => 'WELCOME!',
        'content'     => 'Silahkan gunakan sidebar untuk mengakses Laporan dan Kegiatan ^^',
        'button_link' => backpack_url('logout'),
        'button_text' => 'Logout',
    ];
@endphp

{{-- @section('content')
  <p>Your custom HTML can live here</p>
@endsection --}}
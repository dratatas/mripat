<!-- This file is used to store sidebar items, starting with Backpack\Base 0.9.0 -->
<li class="nav-item"><a class="nav-link" href="{{ backpack_url('dashboard') }}"><i class="la la-home nav-icon"></i> {{ trans('backpack::base.dashboard') }}</a></li>

<!-- Reports -->
@if(backpack_user()->can('laporan'))
<li class="nav-item nav-dropdown">
	<a class="nav-link nav-dropdown-toggle" href="#"><i class="nav-icon la la-file-alt"></i> Laporan</a>
	<ul class="nav-dropdown-items">
    <li class='nav-item'><a class='nav-link' href='{{ backpack_url('laporan') }}'><i class='nav-icon la la-stack-overflow'></i> Laporan</a></li>
    <li class='nav-item'><a class='nav-link' href='{{ backpack_url('jenis_laporan') }}'><i class='nav-icon la la-book'></i> Jenis Laporan</a></li>
  </ul>
</li>
@endif

<!-- Jadwal Kegiatan -->
@if(backpack_user()->can('jadwal_kegiatan'))
<li class='nav-item'><a class='nav-link' href='{{ backpack_url('kegiatan') }}'><i class='nav-icon la la-calendar'></i> Jadwal Kegiatan</a></li>
@endif

{{-- <!-- Stakeholders Service -->
@if(backpack_user()->can('layanan_informasi'))
<li class="nav-item nav-dropdown">
	<a class="nav-link nav-dropdown-toggle" href="#"><i class="nav-icon la la-concierge-bell"></i> Layanan Informasi</a>
	<ul class="nav-dropdown-items">
    <li class='nav-item'><a class='nav-link' href='{{ backpack_url('monitoringbos') }}'><i class='nav-icon la la-school'></i> Monitoring BOS</a></li>
  </ul>
</li>
@endif

<!-- Project Management -->
<li class="nav-item nav-dropdown">
	<a class="nav-link nav-dropdown-toggle" href="#"><i class="nav-icon la la-tasks"></i> Project Management</a>
	<ul class="nav-dropdown-items">
    <li class='nav-item'><a class='nav-link' href='//asana.com' target='_blank'><i class='nav-icon la la-project-diagram'></i> Asana</a></li>
  </ul>
</li> --}}

<!-- Referensi -->
@if(backpack_user()->can('referensi'))
<li class="nav-item nav-dropdown">
  <a class="nav-link nav-dropdown-toggle" href="#"><i class="nav-icon la la-book-open"></i> Referensi</a>
  <ul class="nav-dropdown-items">
    <li class='nav-item'><a class='nav-link' href='{{ backpack_url('level') }}'><i class='nav-icon la la-sort-amount-up-alt'></i> Levels</a></li>
    <li class='nav-item'><a class='nav-link' href='{{ backpack_url('kode_djpb') }}'><i class='nav-icon la la-file-code'></i> Kode_djpbs</a></li>
    <li class='nav-item'><a class='nav-link' href='{{ backpack_url('struktur') }}'><i class='nav-icon la la-sitemap'></i> Strukturs</a></li>
    <li class='nav-item'><a class='nav-link' href='{{ backpack_url('satker') }}'><i class='nav-icon la la-building'></i> Satkers</a></li>
  </ul>
</li>
@endif

<!-- Users, Roles, Permissions -->
@if(backpack_user()->can('autentikasi'))
<li class="nav-item nav-dropdown">
	<a class="nav-link nav-dropdown-toggle" href="#"><i class="nav-icon la la-users"></i> Autentikasi</a>
	<ul class="nav-dropdown-items">
	  <li class="nav-item"><a class="nav-link" href="{{ backpack_url('user') }}"><i class="nav-icon la la-user"></i> <span>Users</span></a></li>
	  <li class="nav-item"><a class="nav-link" href="{{ backpack_url('role') }}"><i class="nav-icon la la-id-badge"></i> <span>Roles</span></a></li>
	  <li class="nav-item"><a class="nav-link" href="{{ backpack_url('permission') }}"><i class="nav-icon la la-key"></i> <span>Permissions</span></a></li>
	</ul>
</li>
@endif

<!-- Tools -->
@if(backpack_user()->can('tools'))
<li class="nav-item nav-dropdown">
	<a class="nav-link nav-dropdown-toggle" href="#"><i class="nav-icon la la-tools"></i> Tools</a>
	<ul class="nav-dropdown-items">
    <li class="nav-item"><a class="nav-link" href="{{ backpack_url('elfinder') }}\"><i class="nav-icon la la-files-o"></i> <span>{{ trans('backpack::crud.file_manager') }}</span></a></li>
  </ul>
</li>
@endif
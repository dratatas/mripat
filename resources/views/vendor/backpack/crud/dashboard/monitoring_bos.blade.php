@extends(backpack_view('blank'))


@section('header')
	<section class="container-fluid">
	  <h2>
      <span class="text-capitalize">Monitoring Bantuan Operasional Sekolah</span>
      <small id="datatable_info_stack">DAK Non Fisik</small>
	  </h2>
	</section>
@endsection

@section('content')
    <!-- Default box -->
    <div class="row">
        <div class="col-md-8">
          
          <div class="row mb-0">
            <div class="col-sm-10">&nbsp;
            </div>
            <div class="col-sm-2">
              <div id="datatable_search_stack" class="mt-sm-0 mt-2 d-print-none"><div id="crudTable_filter" class="dataTables_filter"><label><input type="search" class="form-control" placeholder="Search..." aria-controls="crudTable"></label></div></div>
            </div>
          </div>

          <div id="crudTable_wrapper" class="dataTables_wrapper dt-bootstrap4">
            <div class="row hidden">
              <div class="col-sm-6"></div>
              <div class="col-sm-6 d-print-none">
            </div>
          </div>
          
          <div class="row">
            <div class="col-sm-12">
              <table id="crudTable" class="bg-white table table-striped table-hover nowrap rounded shadow-xs border-xs mt-2 dataTable dtr-inline collapsed has-hidden-columns" aria-describedby="crudTable_info" role="grid" cellspacing="0">
                <thead>

          <!-- <table id="crudTable" class="bg-white table table-striped table-hover nowrap rounded shadow-xs border-xs mt-2" cellspacing="0">
            <thead> -->
              <tr>
                <th>Pemda</th>
                <th>Jenis Dana BOS</th>
                <th>Sekolah</th>
                <th>No.SP2D</th>
                <th>Tgl.SP2D</th>
                <th>Nilai SP2D</th>
                <th>Batch</th>
                </tr>
            </thead>
            <tbody>

            @foreach($bos as $row)
              <tr>
                <td>{{ $row->pemda }}</td>
                <td>{{ $row->jenis_dana_bos }}</td>
                <td>{{ $row->sekolah }}</td>
                <td>{{ $row->no_sp2d }}</td>
                <td>{{ $row->tgl_sp2d }}</td>
                <td>{{ $row->nilai_sp2d }}</td>
                <td>{{ $row->batch }}</td>
              </tr>
            @endforeach

            </tbody>
          </table>
          </div>
        </div>

        </div>
    </div>
@endsection

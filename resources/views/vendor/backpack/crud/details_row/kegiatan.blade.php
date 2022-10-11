<div class="m-t-10 m-b-10 p-l-10 p-r-10 p-t-10 p-b-10">
	<div class="row">
		<div class="col-md-5">
            <ul class="list-group">
                <li class="list-group-item list-group-item-info">File Rencana Kegiatan (Nota Pertimbangan & RAB)</li>
                @php
                    $attachment = basename($entry->file_rab)
                @endphp
                <li class="list-group-item list-group-item-default"><a href="{{ asset('storage/' . $entry->file_rab) }}"  target="_blank">{{ $attachment }}</a></li>
                <!-- <li class="list-group-item list-group-item-default"><a href="{{ Storage::disk('public')->url($entry->file_rab) }}" target="_blank">{{ $attachment }}</a></li> -->
            </ul>
            <ul class="list-group">
                <li class="list-group-item list-group-item-info">File Laporan Kegiatan</li>
                @php
                    $attachment = basename($entry->file_lk)
                @endphp
                <li class="list-group-item list-group-item-default"><a href="{{ asset('storage/' . $entry->file_lk) }}"  target="_blank">{{ $attachment }}</a></li>
            </ul>
        </div>
		<div class="col-md-5">
            <ul class="list-group">
                <li class="list-group-item list-group-item-info">File Surat Tugas</li>
                @php
                    $attachment = basename($entry->file_st)
                @endphp
                <li class="list-group-item list-group-item-default"><a href="{{ asset('storage/' . $entry->file_st) }}"  target="_blank">{{ $attachment }}</a></li>
            </ul>
            <ul class="list-group">
                <li class="list-group-item list-group-item-info">File Surat Perjalanan Dinas</li>
                @php
                    $attachment = basename($entry->file_spd)
                @endphp
                <li class="list-group-item list-group-item-default"><a href="{{ asset('storage/' . $entry->file_spd) }}"  target="_blank">{{ $attachment }}</a></li>
            </ul>
		</div>
	</div>
</div>
<div class="clearfix"></div>
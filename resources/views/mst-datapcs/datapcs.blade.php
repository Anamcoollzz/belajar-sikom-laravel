@extends('master')

@section('title', 'Data PC CSLI')
@section('description', 'Data komputer di CSLI"')
@push('custom-styles')
  <style>
    td.details-control {
        background: url('/img/details_open.png') no-repeat center center;
        cursor: pointer;
      }
      tr.shown td.details-control {
        background: url('/img/details_close.png') no-repeat center center;
      }
  </style>
@endpush
@section('content')
  <br>

  <div class="row">
    <div class="col-xs-12">
      @if(Auth::user()->role === 1)
      <button type="button" class="btn btn-primary" data-toggle="modal" onclick="addForm()"><i class="glyphicon glyphicon-plus"></i> Add Data</button>
      <a href="{{ URL('/computer/export/excel')}}" class="btn btn-success pull-right" title="Download Data Computer Active"><i class="fa fa-file-excel-o"></i> Excel</a>
      @endif
    </div>
  </div>

  <br>

  <div class='row'>
    <div class="col-xs-12">
      <div class="box box-primary">
        <div class="box-header">
          <div class="row">
            <div class="col-sm-12">
              <h3 class="box-title">Data PC</h3>
              <button type="button" class="btn btn-danger btn-xs pull-right" id="btn-deleted">Deleted</button>
              <button type="button" class="btn btn-warning btn-xs pull-right" id="btn-deactive">Deactivate</button>
              <button type="button" class="btn btn-success btn-xs pull-right" id="btn-active">Active</button>
            </div>
          </div>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
          <table id="tbl-computers" class="table table-striped table-hover">
            <thead>
                <tr>
        				    <th></th>
                    <th>ID PC</th>
                    <th>Hostname</th>
                    <th>Proccessor</th>
                    <th>IP Address</th>
                    <th>RAM</th>
                    <th>OS</th>
                    <th>Hardisk</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
          </table>
        </div>
      </div>
    </div>
  </div>

@include('mst-datapcs.form')

@push('custom-scripts')

<script type="text/javascript">
$(document).ready(function() {
  getcmb_processor();
  getcmb_os();
  getcmb_model();
  /* Formatting function for row details - modify as you need */
  function format ( d ) {
    // `d` is the original data object for the row
    return  '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">'+
                '<tr>'+
                    '<td><strong>Model PC</strong>&nbsp&nbsp</td>'+
                    '<td>'+d.model+'</td>'+
                '</tr>'+
                '<tr>'+
                    '<td><strong>Remark</strong>&nbsp&nbsp</td>'+
                    '<td>'+d.remark+'</td>'+
                '</tr>'+
            '</table>';
  };

  var table = $('#tbl-computers').DataTable({
      processing  : true,
      serverSide  : true,
      destroy     : true,
      ajax        : {
                      url  : '{{ url("/computer/json/getdata") }}'
                    },
      columns     : [{
              'className'       : 'details-control',
              'orderable'       : false,
              'data'            : null,
              'defaultContent'  : ''
          },
          { data: 'id_computer',  name: ' id_computer'},
          { data: 'hostname',   name: 'hostname'},
          { data: 'proccessor', name: 'proccessor'},
          { data: 'ip_address',    name: 'ip_address'},
          { data: 'ram',        name: 'ram'},
          { data: 'os',         name: 'os'},
          { data: 'hardisk',    name: 'hardisk'},
          { data: 'status',     name: 'status'},
          { data: 'action',     name: 'action'}
      ],
      order: [[1, 'desc']]
  });

  // Add event listener for opening and closing details
  $('#tbl-computers tbody').on('click', 'td.details-control', function(){
      var tr = $(this).closest('tr');
      var row = table.row( tr );

      if(row.child.isShown()){
          // This row is already open - close it
          row.child.hide();
          tr.removeClass('shown');
      } else {
          // Open this row
          row.child(format(row.data())).show();
          tr.addClass('shown');
      }
  });

  // Handle click on "Expand All" button
  $('#btn-show-all-children').on('click', function(){
      // Enumerate all rows
      table.rows().every(function(){
          // If row has details collapsed
          if(!this.child.isShown()){
              // Open this row
              this.child(format(this.data())).show();
              $(this.node()).addClass('shown');
          }
      });
  });

  // Handle click on "Collapse All" button
  $('#btn-hide-all-children').on('click', function(){
      // Enumerate all rows
      table.rows().every(function(){
          // If row has details expanded
          if(this.child.isShown()){
              // Collapse row details
              this.child.hide();
              $(this.node()).removeClass('shown');
          }
      });
  });

  $('#btn-active').on( 'click', function () {
    table
      .columns( 8 )
      .search(  'Active' )
      .draw();
  });

  $('#btn-deactive').on( 'click', function () {
    table
      .columns( 8 )
      .search(  'Deactivated' )
      .draw();
  });

  $('#btn-deleted').on( 'click', function () {
    table
      .columns( 8 )
      .search(  'Deleted' )
      .draw();
  });

  $(function(){
      $('#modal-datapc').validator().on('submit', function(e){
        if (!e.isDefaultPrevented()) {
          var _token       = $('input[name=_token]').val();
          var _method      = $('input[name=_method]').val();
          var id 	   		   = $('#txt-id').val();
          var id_pc        = $('#txt-idpc').val();
          var hostname 		 = $('#txt-hostname').val();
          var ip 	         = $('#txt-ip').val();
          var proccessor   = $('#cmb-proccessor').val();;
          var ram 				 = $('#txt-ram').val();
          var ram_type 		 = $('#cmb-ram-type').val();
          var hardisk 		 = $('#txt-hardisk').val();
          var hardisk_type = $('#cmb-hardisk-type').val();
          var model 			 = $('#txt-model').val();
          var os 			     = $('#txt-os').val();
          var remark 			 = $('#txt-remark').val();

          if (save_method == 'add'){
            type = 'POST';
            url = "{{ url('computer/store') }}";
          }else{
            type = 'PUT';
            url = "{{ url('computer/update') . '/' }}" + id;
         };
          $.ajax({
            url     : url,
            type    : type,
            data    : { _method      : _method,
                        _token       : _token,
                        id_pc        : id_pc,
                        hostname     : hostname,
                        ip           : ip,
                        proccessor   : proccessor,
                        ram          : ram,
                        ram_type     : ram_type,
                        hardisk      : hardisk,
                        hardisk_type : hardisk_type,
                        model        : model,
                        serial       : 'test',
                        status       : '1',
                        os           : os,
                        remark       : remark
                      },
            success : function(data) {
              table.ajax.reload( null, false );
              $('#modal-datapc').modal('hide');
              bootoast.toast({
                message: 'Data berhasil disimpan!',
                type: 'success',
                position: 'right-top',
                icon: 'ok-sign',
                timeout: 4,
                animationDuration: 300,
                dismissible: false
              });
            },
            error: function(data){
              console.log('Error:', data);
            }
          });
          return false;
        }
      })
  });

  $('#btn-deactivatepc').on( 'click', function () {
    var id 	   		  = $('#txt-id').val();
    var _method     = $('input[name=_method]').val();
    var _token      = $('input[name=_token]').val();
    $.ajax({
            type      : "PUT",
            url       : "/computer/update-status/" + id,
            dataType  : 'json',
            data      : { _method     : _method,
                          _token      : _token,
                          status      : '2'
                      },
            success: function (data) {
              table.ajax.reload( null, false );
              $('#modal-datapc').modal('hide');
              bootoast.toast({
                message: 'Data berhasil disimpan!',
                type: 'success',
                position: 'right-top',
                icon: 'ok-sign',
                timeout: 4,
                animationDuration: 300,
                dismissible: false
              });
            },
            error: function (data) {
                console.log('Error:', data);
            }
        });
  });

  $('#btn-deletepc').on( 'click', function () {
    var id 	   		  = $('#txt-id').val();
    var _method     = $('input[name=_method]').val();
    var _token      = $('input[name=_token]').val();
    $.ajax({
            type      : "PUT",
            url       : "/computer/update-status/" + id,
            dataType  : 'json',
            data      : { _method     : _method,
                          _token      : _token,
                          status      : '0'
                      },
            success: function (data) {
              table.ajax.reload( null, false );
              $('#modal-datapc').modal('hide');
              bootoast.toast({
                message: 'Data berhasil disimpan!',
                type: 'success',
                position: 'right-top',
                icon: 'ok-sign',
                timeout: 4,
                animationDuration: 300,
                dismissible: false
              });
            },
            error: function (data) {
                console.log('Error:', data);
            }
        });
  });

  $('#btn-active').click();
});//document ready

function addForm() {
  save_method = "add";
  $('input[name=_method]').val('POST');
  $('#modal-datapc').modal('show');
  $('#modal-datapc form')[0].reset();
  $('.modal-title').text('Tambah Data Komputer');
  $('#btn-deactivatepc').hide();
  $('#btn-deletepc').hide();
  $('#btn-savepc').show();
  $('#frm-idpc').show();
  $('#lbl-status').hide();
  kodeOto();
};

function kodeOto(){
  $.ajax({
          type      : "GET",
          url       : "computer/json/getid",
          dataType  : 'json',
          success: function (data) {
            pc_id = data;
            $('#txt-idpc').val(pc_id);
          },
          error: function (data) {
              console.log('Error:', data);
          }
      });
}

function editForm(id) {
  save_method = 'edit';
  $('input[name=_method]').val('PATCH');
  $('#modal-datapc form')[0].reset();
  $('#txt-id').val(id);
  $.ajax({
    url       : "{{ url('computer') }}" + '/' + id + "/edit",
    type      : "GET",
    dataType  : "json",
    success   : function(data) {
      $('#modal-datapc').modal('show');
      $('#lbl-status').show();
      $('.modal-title').text(data.id_computer);
      $('#txt-hostname').val(data.hostname);
      $('#txt-ip').val(data.ip_address);
      $('#cmb-proccessor').val(data.proccessor);
      $('#txt-ram').val(data.ram);
      $('#cmb-ram-type').val(data.ram_type);
      $('#txt-hardisk').val(data.hardisk);
      $('#cmb-hardisk-type').val(data.hardisk_type);
      $('#txt-model').val(data.model);
      if (data.status===0){
         $('#lbl-status').attr('class', 'label label-danger arrowed');
         $('#lbl-status').text('Deleted');
         $('#btn-deactivatepc').hide();
         $('#btn-deletepc').hide();
         $('#btn-savepc').hide();
      }else if (data.status===1){
        $('#lbl-status').attr('class', 'label label-success arrowed');
        $('#lbl-status').text('Active');
        $('#btn-deactivatepc').show();
        $('#btn-deletepc').hide();
        $('#btn-savepc').show();
      }else if (data.status===2){
        $('#lbl-status').attr('class', 'label label-warning arrowed');
        $('#lbl-status').text('Deactivated');
        $('#btn-deactivatepc').hide();
        $('#btn-deletepc').show();
        $('#btn-savepc').show();
      };
      $('#txt-os').val(data.os);
      $('#txt-remark').val(data.remark);
      $('#txt-infoclient_create').text('Dibuat : ' + data.created_at);
      $('#txt-infoclient_update').text('Terakhir Update : ' + data.updated_at);
      $('#frm-idpc').hide();
      $('#frm-status').hide();
    },
    error: function(data){
      console.log('Error:', data);
    }
  })
}

function getcmb_processor (){
  $.ajax({
        url       : "{{ url('/computer/json/getprocessor') }}",
        type      : "GET",
        dataType  : 'json',
        data      : {},
        success: function (data){
          var len = data.length;
          $("#cmb-processor").empty();
          for( var i = 0; i<len; i++){
            var tipe = data[i]['type'];
            $("#cmb-processor").append("<option value='"+tipe+"'>"+tipe+"</option>");
          }
        },
        error: function (data) {
            console.log('Error:', data);
        }
      });
}

function getcmb_os (){
  $.ajax({
        url       : "{{ url('/computer/json/getos') }}",
        type      : "GET",
        dataType  : 'json',
        data      : {},
        success: function (data){
          var len = data.length;
          $("#cmb-os").empty();
          for( var i = 0; i<len; i++){
            var os = data[i]['os'];
            $("#cmb-os").append("<option value='"+os+"'>"+os+"</option>");
          }
        },
        error: function (data) {
            console.log('Error:', data);
        }
      });
}

function getcmb_model (){
  $.ajax({
        url       : "{{ url('/computer/json/getmodel') }}",
        type      : "GET",
        dataType  : 'json',
        data      : {},
        success: function (data){
          var len = data.length;
          $("#cmb-model").empty();
          for( var i = 0; i<len; i++){
            var model = data[i]['model'];
            $("#cmb-model").append("<option value='"+model+"'>"+model+"</option>");
          }
        },
        error: function (data) {
            console.log('Error:', data);
        }
      });
}
</script>
@endpush

@endsection

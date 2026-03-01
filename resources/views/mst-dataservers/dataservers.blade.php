@extends('master')

@section('title', 'Data Server CSLI')
@section('description', 'Data server di CSLI"')
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
      <button type="button" class="btn btn-primary" data-toggle="modal" onclick="addForm()"><i class="glyphicon glyphicon-plus"></i> Add Data</button>
      <a href="{{ URL('/excelServer')}}" class="btn btn-success pull-right" title="Download Data Server Active"><i class="fa fa-file-excel-o"></i> Excel</a>
    </div>
  </div>

  <br>

  <div class='row'>
    <div class="col-xs-12">
      <div class="box box-primary">
        <div class="box-header">
          <div class="row">
            <div class="col-sm-12">
              <h3 class="box-title">Data Server</h3>
              <button type="button" class="btn btn-danger btn-xs pull-right" id="btn-deleted">Deleted</button>
              <button type="button" class="btn btn-warning btn-xs pull-right" id="btn-deactive">Deactivate</button>
              <button type="button" class="btn btn-success btn-xs pull-right" id="btn-active">Active</button>
            </div>
          </div>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
          <table id="tbl-servers" class="table table-striped table-hover">
            <thead>
                <tr>
        				    <th></th>
                    <th>ID Server</th>
                    <th>Name</th>
                    <th>Hostname</th>
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

@include('mst-dataservers.form')
@include('mst-dataservers.form_list')

@push('custom-scripts')

<script type="text/javascript">

$(document).ready(function() {
  getCmbModel();
  getCmbOs();
  getCmbProcessor();

  function format ( d ) {
    // `d` is the original data object for the row
    return  '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">'+
                '<tr>'+
                    '<td><strong>Remark</strong>&nbsp&nbsp</td>'+
                    '<td>'+d.remark+'</td>'+
                '</tr>'+
            '</table>';
  };

  // function show_all(){
    var table     = $('#tbl-servers').DataTable({
      processing  : true,
      serverSide  : true,
      destroy     : true,
      ajax        : {
                      url  : '{{ url("/server/json/getdata") }}',
                    },
      columns     : [{
              'className'       : 'details-control',
              'orderable'       : false,
              'data'            : null,
              'defaultContent'  : ''
          },
          { data: 'id_server',  name: ' id_server'},
          { data: 'name',       name: 'name'},
          { data: 'hostname',   name: 'hostname'},
          { data: 'ip_address', name: 'ip_address'},
          { data: 'ram',        name: 'ram'},
          { data: 'os',         name: 'os'},
          { data: 'hardisk',    name: 'hardisk'},
          { data: 'status',     name: 'status'},
          { data: 'action',     name: 'action'}
      ],
      order: [[1, 'asc']]
    });
  // }

  // Add event listener for opening and closing details
  $('#tbl-servers tbody').on('click', 'td.details-control', function(){
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
      $('#modal-dataserver').validator().on('submit', function(e){
        if (!e.isDefaultPrevented()) {
          if ($('#chk-virtual').is(':checked')) {//cek bila checkbox virtual server tercek atau tidak
            var vir_status = 'vir-1';//bila terceklist statusnya ini
          }else {
            var vir_status = 'vir-0';//bila tidak statusnya ini
          }//kirim ke controller berdasarkan status

          var _token       = $('input[name=_token]').val();
          var _method      = $('input[name=_method]').val();
          var id 	   		   = $('#txt-id').val();
          var id_server    = $('#txt-idserver').val();
          var nm_server 	 = $('#txt-nmserver').val();
          var vm_on 	     = $('#cmb-vmon').val();
          var hostname 	   = $('#txt-hostname').val();
          var serial 			 = $('#txt-serial').val();
          var ip_addr      = $('#txt-ip').val();
          var pass 				 = $('#txt-password').val();
          var proccessor 	 = $('#cmb-processor').val();
          var ram 			   = $('#txt-ram').val();
          var ram_type 		 = $('#cmb-ram-type').val();
          var hardisk 		 = $('#txt-hardisk').val();
          var hardisk_type = $('#cmb-hardisk-type').val();
          var model 			 = $('#cmb-model').val();
          var os 			     = $('#cmb-os').val();
          var remark 			 = $('#txt-remark').val();

          if (save_method == 'add'){
            type = 'POST';
            url = "{{ url('server/store') }}";
          }else{
            type = 'PUT';
            url = "{{ url('server/update') . '/'  }}" + id;
         };
          $.ajax({
            url     : url,
            type    : type,
            data    : { _method      : _method,
                        _token       : _token,
                        isVirtual    : isVirtual,
                        vir_status   : vir_status,
                        id_server    : id_server,
                        nm_server    : nm_server,
                        vm_on        : vm_on,
                        hostname     : hostname,
                        ip_addr      : ip_addr,
                        pass         : pass,
                        proccessor   : proccessor,
                        ram          : ram,
                        ram_type     : ram_type,
                        hardisk      : hardisk,
                        hardisk_type : hardisk_type,
                        serial       : serial,
                        model        : model,
                        os           : os,
                        status       : '1',
                        remark       : remark
                      },
            success : function(data) {
              table.ajax.reload( null, false );
              $('#modal-dataserver').modal('hide');
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
      });
  });
  //
  $('#btn-deactivateserver').on( 'click', function () {
    var id 	   		  = $('#txt-id').val();
    var _method     = $('input[name=_method]').val();
    var _token      = $('input[name=_token]').val();
    $.ajax({
            type      : "PUT",
            url       : "/server/update-status/" + id,
            dataType  : 'json',
            data      : { _method     : _method,
                          _token      : _token,
                          isVirtual   : isVirtual,
                          status      : '2'
                      },
            success: function (data) {
              table.ajax.reload( null, false );
              $('#modal-dataserver').modal('hide');
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
  //
  $('#btn-deleteserver').on( 'click', function () {
    var id 	   		  = $('#txt-id').val();
    var _method     = $('input[name=_method]').val();
    var _token      = $('input[name=_token]').val();
    $.ajax({
            type      : "PUT",
            url       : "/server/update-status" + id,
            dataType  : 'json',
            data      : { _method     : _method,
                          _token      : _token,
                          isVirtual   : isVirtual,
                          status      : '0'
                      },
            success: function (data) {
              table.ajax.reload( null, false );
              $('#modal-dataserver').modal('hide');
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

});
//document ready

$("#chk-virtual").change(function() {//Sembunyikan input untuk virtual server
  if(this.checked) {
    $('#frm-proccessor').hide();
    $('#frm-model').hide();
    $('#frm-serial').hide();
    $('#frm-vmon').show();
    kodeOto('vir-1');
    isVirtual = '1';
  }else{
    $('#frm-proccessor').show();
    $('#frm-model').show();
    $('#frm-serial').show();
    $('#frm-vmon').hide();
    kodeOto('vir-0');
    isVirtual = '0';
  }
});
//
function addForm() {
  save_method = "add";
  $('input[name=_method]').val('POST');
  $('#modal-dataserver').modal('show');
  $('#modal-dataserver form')[0].reset();
  $('.modal-title').text('Tambah Data Server');
  $('#btn-deactivateserver').hide();
  $('#btn-deleteserver').hide();
  $('#btn-saveserver').show();
  $('#frm-vmon').hide();
  $('#frm-proccessor').show();
  $('#frm-model').show();
  $('#frm-serial').show();
  $('#frm-idserver').show();
  kodeOto('vir-0');
  isVirtual = '0';
  getCmbIdSrv();
};
//
function kodeOto(status){//fungsi untuk generate kode otomatis berdasarkan chekbox virtual atau bukan
  $.ajax({
          type      : "GET",
          url       : "/server/json/getid",
          dataType  : 'json',
          data      : {
                        vir_status : status
                      },
          success: function (data) {
            $('#txt-idserver').val(data);
          },
          error: function (data) {
              console.log('Error:', data);
          }
      });
}
//
function getCmbIdSrv()//fungsi untuk ambil kode server fisik
{
  $.ajax({
          type      : "GET",
          url       : "/server/json/getidserver",
          dataType  : 'json',
          data      : {},
          success: function (data) {
            var len = data.length;
            $("#cmb-vmon").empty();
            for( var i = 0; i<len; i++){
              var id = data[i]['id_server'];
              $("#cmb-vmon").append("<option value='"+id+"'>"+id+"</option>");
            }
          },
          error: function (data) {
              console.log('Error:', data);
          }
      });
}
//
function editForm(id)//fungsi edit untuk data non virtual
{
  save_method = 'edit';
  isVirtual = '0';//menandai untuk update jika ini bukan virtual
  $('input[name=_method]').val('PATCH');
  $('#modal-dataserver form')[0].reset();
  $('#txt-id').val(id);
  $('#frm-proccessor').show();
  $('#frm-model').show();
  $('#frm-serial').show();
  $('#frm-vmon').hide();
  $.ajax({
    url       : "{{ url('/server') }}" + '/' + id + "/edit",
    type      : "GET",
    dataType  : "json",
    success   : function(data) {
      $('#modal-dataserver').modal('show');
      $('.modal-title').text(data.id_server);
      $('#txt-nmserver').val(data.name);
      $('#txt-hostname').val(data.hostname);
      $('#txt-password').val(data.password);
      $('#txt-ip').val(data.ip_address);
      $('#txt-proccessor').val(data.proccessor);
      $('#txt-ram').val(data.ram);
      $('#txt-ram-type').val(data.ram_type);
      $('#txt-hardisk').val(data.hardisk);
      $('#txt-hardisk-type').val(data.hardisk_type);
      if (data.status===0){
         $('#lbl-status').attr('class', 'label label-danger arrowed');
         $('#lbl-status').text('Deleted');
         $('#btn-deactivateserver').hide();
         $('#btn-deleteserver').hide();
         $('#btn-saveserver').hide();
      }else if (data.status===1){
        $('#lbl-status').attr('class', 'label label-success arrowed');
        $('#lbl-status').text('Active');
        $('#btn-deactivateserver').show();
        $('#btn-deleteserver').hide();
        $('#btn-saveserver').show();
      }else if (data.status===2){
        $('#lbl-status').attr('class', 'label label-warning arrowed');
        $('#lbl-status').text('Deactivated');
        $('#btn-deactivateserver').hide();
        $('#btn-deleteserver').show();
        $('#btn-saveserver').show();
      };
      $('#txt-model').val(data.model);
      $('#txt-serial').val(data.serial);
      $('#txt-os').val(data.os);
      $('#txt-remark').val(data.remark);
      $('#txt-infoserver_create').text('Dibuat : ' + data.created_at);
      $('#txt-infoserver_update').text('Terakhir Update : ' + data.updated_at);
      $('#frm-idserver').hide();
      $('#frm-vmon').hide();
    },
    error: function(data){
      console.log('Error:', data);
    }
  })
}

function editFormVir(id)//fungsi edit untuk data virtual
{
  save_method = 'edit';
  isVirtual = '1';//menandai untuk update jika ini virtual
  $('input[name=_method]').val('PATCH');
  $('#modal-dataserver form')[0].reset();
  getCmbIdSrv();
  $('#frm-proccessor').hide();
  $('#frm-model').hide();
  $('#frm-serial').hide();
  $('#frm-vmon').show();
  $('#txt-id').val(id);
  $.ajax({
    url       : "{{ url('/server/virtual') }}" + '/' + id + "/edit",
    type      : "GET",
    dataType  : "json",
    success   : function(data) {
      $('#modal-dataserver').modal('show');
      $('.modal-title').text(data.id_server);
      $('#cmb-vmon').val(data.vm_on);
      $('#txt-nmserver').val(data.name);
      $('#txt-hostname').val(data.hostname);
      $('#txt-password').val(data.password);
      $('#txt-ip').val(data.ip_address);
      $('#txt-ram').val(data.ram);
      $('#txt-hardisk').val(data.hardisk);
      if (data.status===0){
         $('#lbl-status').attr('class', 'label label-danger arrowed');
         $('#lbl-status').text('Deleted');
         $('#btn-deactivateserver').hide();
         $('#btn-deleteserver').hide();
         $('#btn-saveserver').hide();
      }else if (data.status===1){
        $('#lbl-status').attr('class', 'label label-success arrowed');
        $('#lbl-status').text('Active');
        $('#btn-deactivateserver').show();
        $('#btn-deleteserver').hide();
        $('#btn-saveserver').show();
      }else if (data.status===2){
        $('#lbl-status').attr('class', 'label label-warning arrowed');
        $('#lbl-status').text('Deactivated');
        $('#btn-deactivateserver').hide();
        $('#btn-deleteserver').show();
        $('#btn-saveserver').show();
      };
      $('#txt-os').val(data.os);
      $('#txt-remark').val(data.remark);
      $('#txt-infoserver_create').text('Dibuat : ' + data.created_at);
      $('#txt-infoserver_update').text('Terakhir Update : ' + data.updated_at);
      $('#frm-idserver').hide();
    },
    error: function(data){
      console.log('Error:', data);
    }
  })
}
//
function showFormList(id)//fungsi menampilkan form list virtual server
{
  $("#tbl-list-servers tr td").remove();
  $.ajax({
          type      : "GET",
          url       : "/server/json/getvirtual",
          dataType  : 'json',
          data      : {
                        id  : id
                      },
          success: function (data) {
            // console.log(data);
            $('#tbl-list-servers tr').not(':first').not(':last').remove();
              var html = '';
              for(var i = 0; i < data.length; i++){
                if (data[i].status=='1') {
                  var status_list = '<span class="label label-success arrowed">Active</span>';
                }else if (data[i].status=='2') {
                  var status_list = '<span class="label label-warning arrowed">Deactivated</span>';
                }else if (data[i].status=='0') {
                  var status_list = '<span class="label label-danger arrowed">Deleted</span>';
                };
                html += '<tr>'+
                            '<td>' + data[i].id_server + '</td>' +
                            '<td>' + data[i].name + '</td>' +
                            '<td>' + data[i].ip_address + '</td>' +
                            '<td>' + data[i].ram + '</td>' +
                            '<td>' + data[i].os + '</td>' +
                            '<td>' + data[i].hardisk + '</td>' +
                            '<td>' + status_list + '</td>' +
                        '</tr>';
                }
            $('#tbl-list-servers tr').first().after(html);
          },
          error: function (data) {
              console.log('Error:', data);
          }
      });
      $('#modal-dataserverlist').modal('show');
}

function getCmbProcessor()//fungsi untuk ambil data setting processor
{
  $.ajax({
          type      : "GET",
          url       : "/server/json/getprocessor",
          dataType  : 'json',
          data      : {},
          success: function (data) {
            var len = data.length;
            $("#cmb-processor").empty();
            for( var i = 0; i<len; i++){
              var type = data[i]['type'];
              $("#cmb-processor").append("<option value='"+type+"'>"+type+"</option>");
            }
          },
          error: function (data) {
              console.log('Error:', data);
          }
      });
}

function getCmbOs()//fungsi untuk ambil data setting os
{
  $.ajax({
          type      : "GET",
          url       : "/server/json/getos",
          dataType  : 'json',
          data      : {},
          success: function (data) {
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

function getCmbModel()//fungsi untuk ambil data setting model
{
  $.ajax({
          type      : "GET",
          url       : "/server/json/getmodel",
          dataType  : 'json',
          data      : {},
          success: function (data) {
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

@extends('master')

@section('title', 'Data User CSLI')
@section('description', 'Data pengguna komputer di CSLI"')
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
      <a href="{{ URL('/client/export/excel')}}" class="btn btn-success pull-right" title="Download Data Client Active"><i class="fa  fa-file-excel-o"></i> Excel</a>
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
              <h3 class="box-title">Data User</h3>
              <button type="button" class="btn btn-danger btn-xs pull-right" id="btn-deleted">Deleted</button>
              <button type="button" class="btn btn-warning btn-xs pull-right" id="btn-deactive">Deactivate</button>
              <button type="button" class="btn btn-success btn-xs pull-right" id="btn-active">Active</button>
            </div>
          </div>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
          <table id="tbl-clients" class="table table-striped table-hover">
            <thead>
                <tr>
        				    <th></th>
                    <th>ID User</th>
                    <th>Name</th>
                    <th>Dept</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
          </table>
        </div>
      </div>
    </div>
  </div>

@include('mst-dataclients.form')

@push('custom-scripts')
  <script>
  $(document).ready(function() {
    getcmb_dept();
    /* Formatting function for row details - modify as you need */
    function format ( d ) {
      // `d` is the original data object for the row
      return  '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">'+
                  '<tr>'+
                      '<td><strong>Active Directory</strong>&nbsp&nbsp</td>'+
                      '<td>'+d.active_dir+'</td>'+
                  '</tr>'+
                  '<tr>'+
                      '<td><strong>Remark</strong>&nbsp&nbsp</td>'+
                      '<td>'+d.remark+'</td>'+
                  '</tr>'+
              '</table>';
    };

    var table = $('#tbl-clients').DataTable({
        processing  : true,
        serverSide  : true,
        destroy     : true,
        ajax        : {
                        url  : '{{ url("/client/json/getdata") }}'
                      },
        columns     : [{
                'className'       : 'details-control',
                'orderable'       : false,
                'data'            : null,
                'defaultContent'  : ''
            },
            { data: 'id_client', name: ' id_client'},
            { data: 'nama',     name: 'nama'},
            { data: 'dept',     name: 'dept'},
            { data: 'email',    name: 'email'},
            { data: 'phone',    name: 'phone'},
            { data: 'status',   name: 'status'},
            { data: 'action',   name: 'action'}
        ],
        order: [[1, 'desc']]
    });

    // Add event listener for opening and closing details
    $('#tbl-clients tbody').on('click', 'td.details-control', function(){
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
        .columns( 6 )
        .search(  'Active' )
        .draw();
    });

    $('#btn-deactive').on( 'click', function () {
      table
        .columns( 6 )
        .search(  'Deactivated' )
        .draw();
    });

    $('#btn-deleted').on( 'click', function () {
      table
        .columns( 6 )
        .search(  'Deleted' )
        .draw();
    });

    $('#btn-active').click();
    var client_id;

    $(function(){
        $('#modal-dataclient').validator().on('submit', function(e){
          if (!e.isDefaultPrevented()) {
            var _token      = $('input[name=_token]').val();
            var _method     = $('input[name=_method]').val();
            var id 	   		  = $('#txt-id').val();
            var id_client   = $('#txt-idclient').val();
            var nama 				= $('#txt-namaclient').val();
            var active_dir 	= $('#txt-ad').val();
            var dept        = $('#cmb-department :selected').val();
            var pass 				= $('#txt-password').val();
            var email 			= $('#txt-email').val();
            var phone 			= $('#txt-phone').val();
            var remark 			= $('#txt-remark').val();

            if (save_method == 'add'){
              type = 'POST';
              url = "{{ url('client/store') }}";
            }else{
              type = 'PUT';
              url = "{{ url('client/update') . '/' }}" + id;
           };
            $.ajax({
              url     : url,
              type    : type,
              data    : { _method     : _method,
                          _token      : _token,
                          id_client   : id_client,
                          nama        : nama,
                          active_dir  : active_dir,
                          dept        : dept,
                          pass        : pass,
                          email       : email,
                          phone       : phone,
                          status      : '1',
                          remark      : remark
                        },
              success : function(data) {
                table.ajax.reload( null, false );
                $('#modal-dataclient').modal('hide');
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

    $('#btn-deactivateclient').on( 'click', function () {
      var id 	   		  = $('#txt-id').val();
      var _method     = $('input[name=_method]').val();
      var _token      = $('input[name=_token]').val();
      $.ajax({
              type      : "PUT",
              url       : "/client/update-status/" + id,
              dataType  : 'json',
              data      : { _method     : _method,
                            _token      : _token,
                            status      : '2'
                        },
              success: function (data) {
                table.ajax.reload( null, false );
                $('#modal-dataclient').modal('hide');
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

    $('#btn-deleteclient').on( 'click', function () {
      var id 	   		  = $('#txt-id').val();
      var _method     = $('input[name=_method]').val();
      var _token      = $('input[name=_token]').val();
      $.ajax({
              type      : "PUT",
              url       : "/client/update-status" + id,
              dataType  : 'json',
              data      : { _method     : _method,
                            _token      : _token,
                            status      : '0'
                        },
              success: function (data) {
                table.ajax.reload( null, false );
                $('#modal-dataclient').modal('hide');
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
  });

  function addForm() {
    save_method = "add";
    $('input[name=_method]').val('POST');
    $('#modal-dataclient form')[0].reset();
    $('.modal-title').text('Tambah Data Client');
    $('#btn-deactivateclient').hide();
    $('#btn-deleteclient').hide();
    $('#btn-saveclient').show();
    $('#frm-idclient').show();
    $('#frm-status').show();
    kodeOto();
    $('#modal-dataclient').modal('show');
  };

  function kodeOto(){
    $.ajax({
            type: "GET",
            url: "/client/json/getid",
            dataType: 'json',
            success: function (data) {
              client_id = data;
              $('#txt-idclient').val(client_id);
            },
            error: function (data) {
                console.log('Error:', data);
            }
        });
  }

  function editForm(id) {
    save_method = 'edit';
    $('input[name=_method]').val('PATCH');
    $('#modal-dataclient form')[0].reset();
    $('#txt-id').val(id);
    $.ajax({
      url       : "{{ url('client') }}" + '/' + id + "/edit",
      type      : "GET",
      dataType  : "json",
      success   : function(data) {
        $('#modal-dataclient').modal('show');
        $('.modal-title').text(data.id_client);
        $('#txt-namaclient').val(data.nama);
        $('#txt-ad').val(data.active_dir);
        $('#cmb-department').val(data.dept);
        $('#txt-password').val(data.password);
        $('#txt-email').val(data.email);
        $('#txt-phone').val(data.phone);
        if (data.status===0){
           $('#lbl-status').attr('class', 'label label-danger arrowed');
           $('#lbl-status').text('Deleted');
           $('#btn-deactivateclient').hide();
           $('#btn-deleteclient').hide();
           $('#btn-saveclient').hide();
        }else if (data.status===1){
          $('#lbl-status').attr('class', 'label label-success arrowed');
          $('#lbl-status').text('Active');
          $('#btn-deactivateclient').show();
          $('#btn-deleteclient').hide();
          $('#btn-saveclient').show();
        }else if (data.status===2){
          $('#lbl-status').attr('class', 'label label-warning arrowed');
          $('#lbl-status').text('Deactivated');
          $('#btn-deactivateclient').hide();
          $('#btn-deleteclient').show();
          $('#btn-saveclient').show();
        };
        $('#txt-remark').val(data.remark);
        $('#txt-infoclient_create').text('Dibuat : ' + data.created_at);
        $('#txt-infoclient_update').text('Terakhir Update : ' + data.updated_at);
        $('#frm-idclient').hide();
        $('#frm-status').hide();
      },
      error: function(data){
        console.log('Error:', data);
      }
    })
  }

  function getcmb_dept (){
    $.ajax({
          url       : "{{ url('/client/json/getdept') }}",
          type      : "GET",
          dataType  : 'json',
          data      : {},
          success: function (data){
            var len = data.length;
            $("#cmb-department").empty();
            for( var i = 0; i<len; i++){
              var dept = data[i]['dept'];
              $("#cmb-department").append("<option value='"+dept+"'>"+dept+"</option>");
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

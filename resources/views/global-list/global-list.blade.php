@extends('master')

@section('title', 'Data Global CSLI')
@section('description', 'Data Global CSLI"')
@push('custom-styles')
  <style>
      td.details-control
      {
        background: url('/img/details_open.png') no-repeat center center;
        cursor: pointer;
      }
      tr.shown td.details-control
      {
        background: url('/img/details_close.png') no-repeat center center;
      }

  </style>
@endpush
@section('content')
  <br>
  <br>

  <div class='row'>
    <div class="col-xs-12">
      <div class="box box-primary">
        <div class="box-header">
          <div class="row">
            <div class="col-sm-12">
              <h3 class="box-title">Data Global</h3>
            </div>
          </div>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
          <table id="tbl-global" class="table table-striped table-hover">
            <thead>
                <tr>
                    <th></th>
                    <th>No Meja</th>
                    <th>Client</th>
                    <th>Dept</th>
                    <th>Hoastname</th>
                    <th>IP</th>
                    <th>Phone</th>
                    <th>Action</th>
                </tr>
            </thead>
          </table>
        </div>
      </div>
    </div>
  </div>

@include('global-list.form')

@push('custom-scripts')

<script type="text/javascript">
var table;
  $(document).ready(function() {
    table = $('#tbl-global').DataTable({
        processing  : true,
        serverSide  : true,
        destroy     : true,
        ajax        : {
                          url  : '{{ url("/get-dataglobal") }}'
                      },
        columns     : [{
                          'className'       : 'details-control',
                          'orderable'       : false,
                          'data'            : null,
                          'defaultContent'  : ''
                        },
                          { data: 'id_meja',    name: ' id_meja'},
                          { data: 'nama',       name: 'nama'},
                          { data: 'dept',       name: 'dept'},
                          { data: 'hostname',   name: 'hostname'},
                          { data: 'ip_address', name: 'ip_address'},
                          { data: 'phone_ext',  name: 'phone_ext'},
                          { data: 'action',     name: 'action'}
                      ],
        order: [[1, 'ASC']]
    });

    $("#lbl-loadinguser").hide();
    $("#lbl-loadingdevice").hide();
  });
  //document ready

  function getcmb_idpc (){
    $.ajax({
        url       : "{{ url('/get-dataglobal-cmbidpc') }}",
        type      : "GET",
        dataType  : 'json',
        data      : {},
        success: function (data) {
          var len = data.length;
          $("#cmb-pc").empty();
          for( var i = 0; i<len; i++){
            var id = data[i]['id_computer'];
            var hostname = data[i]['hostname'];
            $("#cmb-pc").append("<option value='"+id+"'>"+hostname+"</option>");
          }
        },
        error: function (data) {
            console.log('Error:', data);
        }
      });
  };

  function getcmb_idclient (){
    $.ajax({
          url       : "{{ url('/get-dataglobal-cmbidclient') }}",
          type      : "GET",
          dataType  : 'json',
          data      : {},
          success: function (data){
            var len = data.length;
            $("#cmb-client").empty();
            for( var i = 0; i<len; i++){
              var id = data[i]['id_client'];
              var nama = data[i]['nama'];
              $("#cmb-client").append("<option value='"+id+"'>"+nama+"</option>");
            }
          },
          error: function (data) {
              console.log('Error:', data);
          }
        });
  }

  function get_dataclient(){
  	var id			  = $('#txt-id').val();
    $.ajax({
   		url      : "{{ URL('/get-dataglobal-dataclient')}}",
      data     : {
                    id_meja     : id
       					 },
   		type     : 'GET',
   		dataType : 'json',
   		success: function (response){
        var htmlText  = '';
        if (response==null) {
           $('#td-client').hide();
        }else{
           $('#td-client').show();
           for (var key in response) {
                 if (response.hasOwnProperty(key)) {
                   htmlText += '<td style="text-align: center;">' + response[key]["id_client"] + '</td>';
                   htmlText += '<td style="text-align: center;">' + response[key]["nama"] + '</td>';
                   htmlText += '<td style="text-align: center;">' + response[key]["dept"] + '</td>';
                   htmlText += '<td style="text-align: center;">' + response[key]["status"] + '</td>';
                   htmlText += '<td style="text-align: center;">' + response[key]["action"] + '</td>';
                 }
           }
           getcmb_idclient();
           $('#td-client').html(htmlText);

        }
      },
      error: function(response){
        console.log('Error:', response);
      }

    });

  }

  function get_datadevice(){
    var id			  = $('#txt-id').val();
    $.ajax({
          url        : "{{ URL('/get-dataglobal-datacomputer')}}",
          type 		   : 'GET',
          dataType	 : 'json',
          data       : {
                         id_meja     : id
                       },
          success: function (response){
            var htmlText 	= '';
            htmlText += '<tr>';
            htmlText += '<td colspan="4"><select class="form-control col-sm-12" id="cmb-pc"></select></td>';
            htmlText += '<td style="text-align: center;"><a href="javascript:void(0)" class="btn btn-info btn-xs" onclick="udtDevice()" title="Update Data Device"><i class="glyphicon glyphicon-pencil"></i></a></td>';
            htmlText += '</tr>';
            for (var key in response) {
                  if (response.hasOwnProperty(key)) {
                    htmlText += '<tr bgcolor="#2EACF6">';
                    htmlText += '<td>' + response[key]["id_computer"] + '</td>';
                    htmlText += '<td>' + response[key]["hostname"] + '</td>';
                    htmlText += '<td>' + response[key]["ip_address"] + '</td>';
                    htmlText += '<td>' + response[key]["status"] + '</td>';
                    htmlText += '<td>' + response[key]["action"] + '</td>';
                  }
                }
            getcmb_idpc();
            $('#tbl_detaildevice tbody').html(htmlText);
          },
          error: function(response){
            console.log('Error:', response);
          }
        });
  };

  function rmvClient(idMeja)
  {
    $("#lbl-loadinguser").show();
    var _token      = $('input[name=_token]').val();
    $.ajax({
          url       : "{{ url('/get-dataglobal-dataclient') }}" + "/" + idMeja,
          type      : "POST",
          dataType  : 'json',
          data      : {
                        _token : _token
                      },
          success: function (data){
            get_dataclient();
            $("#lbl-loadinguser").hide();
            table.ajax.reload( null, false );
          },
          error: function (data) {
              console.log('Error:', data);
          }
        });
  }

  function rmvDevice(idDevice)
  {
    $("#lbl-loadingdevice").show();
    var _token      = $('input[name=_token]').val();
    var id_meja     = $('#txt-id').val();
    $.ajax({
          url       : "{{ url('/get-dataglobal-datadevice-rmv') }}",
          type      : "POST",
          dataType  : 'json',
          data      : {
                        _token    : _token,
                        id_meja   : id_meja,
                        id_device : idDevice
                      },
          success: function (data){
            get_datadevice();
            $("#lbl-loadingdevice").hide();
            table.ajax.reload( null, false );
          },
          error: function (data) {
              console.log('Error:', data);
          }
        });
  }

  function udtClient()
  {
    $("#lbl-loadinguser").show();
    var _token      = $('input[name=_token]').val();
    var id_meja     = $('#txt-id').val();
    var id_client   = $('#cmb-client').val();
    $.ajax({
          url       : "{{ url('/get-dataglobal-dataclient-add') }}" + "/" + id_meja,
          type      : "POST",
          dataType  : 'json',
          data      : {
                        _token    : _token,
                        id_client : id_client,
                        id_meja   : id_meja
                      },
          success: function (data){
            get_dataclient();
            $("#lbl-loadinguser").hide();
            table.ajax.reload( null, false );
          },
          error: function (data) {
              console.log('Error:', data);
          }
        });
  }

  function udtDevice()
  {
    $("#lbl-loadingdevice").show();
    var _token      = $('input[name=_token]').val();
    var id_meja     = $('#txt-id').val();
    var id_device   = $('#cmb-pc').val();
    $.ajax({
          url       : "{{ url('/get-dataglobal-datadevice') }}",
          type      : "POST",
          dataType  : 'json',
          data      : {
                        _token    : _token,
                        id_device : id_device,
                        id_meja   : id_meja
                      },
          success: function (data){
            get_datadevice();
            $("#lbl-loadingdevice").hide();
            table.ajax.reload( null, false );
          },
          error: function (data) {
              console.log('Error:', data);
          }
        });
  }

  function showForm(id){
    $('.modal-title').text('Meja ' + id);
    $('#txt-id').val(id);
    get_dataclient();
    get_datadevice();
    $('#modal-formlist').modal('show');
  };

</script>

@endpush

@endsection

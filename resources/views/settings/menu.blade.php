@extends('master')

@section('title', 'Settings')
@section('description', 'Settings Aplikasi"')
@push('custom-styles')
  <style>
    ul { padding-left:20px; list-style:none; }
    li { margin-bottom:10px; }
    li.plus:before {
      font-family: 'FontAwesome';
      content: '\f067';
      margin:0 5px 0 -15px;
    }
    li.toogle:before {
      font-family: 'FontAwesome';
      content: '\f067';
      margin:0 5px 0 -15px;
    }
  </style>
@endpush
@section('content')
<div class="row">
      <div class="col-md-3">
        <div class="box box-solid">
          <div class="box-header with-border">
            <h3 class="box-title"></h3>
          </div>
          <!-- /.box-header -->
          <div class="box-body">
            <ul data-widget="tree">

                <li class="treeview plus">
                  <a href="#">Dropdown Item</a>
                  <ul class="treeview-menu">
                    <li class="treeview">
                      <a href="#"><i class="fa fa-toggle-down"></i>Data Client</a>
                      <ul class="treeview-menu">
                      <li><a href="javascript:void(0)" onclick="showAddDept()"><i class="fa fa-group"></i>Department/Divisi</a></li>
                      </ul>
                    </li>

                    <li class="treeview">
                      <a href="#"><i class="fa fa-toggle-down"></i>Data Computer & Server</a>
                      <ul class="treeview-menu">
                      <li><a href="javascript:void(0)" onclick="showAddProcessor()"><i class="fa fa-database"></i>Proccessor</a></li>
                      <li><a href="javascript:void(0)" onclick="showAddOs()"><i class="fa fa-cloud"></i>Sistem Operasi</a></li>
                      <li><a href="javascript:void(0)" onclick="showAddModel()"><i class="fa fa-desktop"></i>Model Komputer/Server</a></li>
                      </ul>
                    </li>

                  </ul>
                </li>

              <li class="treeview plus">
                <a href="#">Administration</a>
                <ul class="treeview-menu">
                  <li><a href="#"><i class="fa fa-user"></i>Tambah User</a></li>
                  <li><a href="#"><i class="fa fa-globe"></i>Lokasi</a></li>
                </ul>
              </li>

            </ul>
          </div>
          <!-- /.box-body -->
        </div>
        <!-- /.box -->
</div>
@include('settings.form_dept')
@include('settings.form_proccessor')
@include('settings.form_os')
@include('settings.form_model')
</div>


@push('custom-scripts')
  <script type="text/javascript">
  //operasi department

    $(document).ready(function() {
      var tbl_Dept;
      var tbl_Processor;
      var tbl_Os;
      var tbl_Model;
      var save_method;
      $('#box-dept').hide();
      $('#box-processor').hide();
      $('#box-os').hide();
      $('#box-model').hide();
    })//document ready

    function showAddDept()
    {
      getDept();
      $('#box-dept').show();
      $('#txt-data').text('Data Department/Divisi');
      save_method = 'add';
      $('#frm-set-dept')[0].reset();
      $('#box-processor').hide();
      $('#box-os').hide();
    }

    function showAddProcessor()
    {
      getProcessor();
      $('#box-processor').show();
      $('#txt-data-processor').text('Data Processor');
      save_method = 'add';
      $('#frm-set-processor')[0].reset();
      $('#box-dept').hide();
      $('#box-os').hide();
      $('#box-model').hide();
    }

    function showAddOs()
    {
      getOs();
      $('#box-os').show();
      $('#txt-data-os').text('Data Sistem Operasi/Operating System');
      save_method = 'add';
      $('#frm-set-os')[0].reset();
      $('#box-dept').hide();
      $('#box-processor').hide();
      $('#box-model').hide();
    }

    function showAddModel()
    {
      getModel();
      $('#box-model').show();
      $('#txt-data-model').text('Data Model Komputer/Server');
      save_method = 'add';
      $('#frm-set-os')[0].reset();
      $('#box-dept').hide();
      $('#box-processor').hide();
      $('#box-os').hide();
    }

    //start of operasi department
    function getDept()
    {
      tbl_Dept = $('#tbl-dept').DataTable({
          processing: true,
          serverSide: true,
          destroy: true,
          ajax: '{{ URL("/setting/dept")}}',
          columns: [
                     {data: 'dept', name: 'dept'},
                     {data: 'comments', name: 'comments'},
                     {data: 'action', name: 'action'}
                   ],
          "bLengthChange": false,
          "bFilter": false,
          "bAutoWidth": true
      });
    }

    $(function(){
      $('#frm-set-dept').validator().on('submit', function(e){
        if (!e.isDefaultPrevented()) {
          var _token      = $('input[name=_token]').val();
          var _method     = $('input[name=_method]').val();
          var id 	   		  = $('#txt-id').val();
          var dept 	   	  = $('#txt-dept-dept').val();
          var comments    = $('#txt-dept-remark').val();

          if (save_method == 'add') {
            type = 'POST';
            url = "{{ url('/setting/dept/store')}}";
          }else{
            type = 'PUT';
            url = "{{ url('/setting/dept/update') . '/' }}" + id;
          };

          $.ajax({
            url     : url,
            type    : type,
            dataType : 'json',
            data    : { _method     : _method,
                        _token      : _token,
                        dept        : dept,
                        comments    : comments,
                      },
            success : function(data) {
              tbl_Dept.ajax.reload( null, false );
              $('#frm-set-dept')[0].reset();
              save_method = 'add';
              $('input[name=_method]').val('POST');
            },
            error: function(data){
              console.log('Error:', data);
            }
          });
          return false;
        }
      });
    });

    function showDataDept(id)
    {
      save_method = 'edit';
      $('input[name=_method]').val('PATCH');
      $('#frm-set-dept')[0].reset();
      $('#txt-id').val(id);
      $.ajax({
        url       : "{{ url('setting/dept') }}" + '/' + id + "/edit",
        type      : "GET",
        dataType  : "json",
        success   : function(data) {
            $('#txt-dept-dept').val(data.dept);
            $('#txt-dept-remark').val(data.comments);
        },
        error: function(data){
          console.log('Error:', data);
        }
      });
    };

    function deleteDataDept(id)
    {
      $.ajax({
        url       : "{{ url('setting/dept') }}" + '/' + id + "/delete",
        type      : "GET",
        data      : {id:id},
        dataType  : "json",
        success   : function(data) {
          tbl_Dept.ajax.reload( null, false );
          $('#frm-set-dept')[0].reset();
          console.log(data);
        },
        error: function(data){
          console.log('Error:', data);
        }
      });
    };
  //end of operasi department

  //start of operasi processor
  function getProcessor()
  {
    tbl_Processor = $('#tbl-processor').DataTable({
        processing: true,
        serverSide: true,
        destroy: true,
        ajax: '{{ URL("/setting/processor")}}',
        columns: [
                   {data: 'type', name: 'type'},
                   {data: 'comments', name: 'comments'},
                   {data: 'action', name: 'action'}
                 ],
        "bLengthChange": false,
        "bFilter": false,
        "bAutoWidth": true
    });
  }

  $(function(){
    $('#frm-set-processor').validator().on('submit', function(e){
      if (!e.isDefaultPrevented()) {
        var _token      = $('input[name=_token]').val();
        var _method     = $('input[name=_method]').val();
        var id 	   		  = $('#txt-id-processor').val();
        var tipe	   	  = $('#txt-processor-nm').val();
        var comments    = $('#txt-processor-remark').val();

        if (save_method == 'add') {
          type = 'POST';
          url = "{{ url('/setting/processor/store')}}";
        }else{
          type = 'PUT';
          url = "{{ url('/setting/processor/update') . '/' }}" + id;
        };

        $.ajax({
          url     : url,
          type    : type,
          dataType : 'json',
          data    : { _method     : _method,
                      _token      : _token,
                      tipe        : tipe,
                      comments    : comments,
                    },
          success : function(data) {
            tbl_Processor.ajax.reload( null, false );
            $('#frm-set-processor')[0].reset();
            save_method = 'add';
            $('input[name=_method]').val('POST');
          },
          error: function(data){
            console.log('Error:', data);
          }
        });
        return false;
      }
    });
  });

  function showDataProcessor(id)
  {
    save_method = 'edit';
    $('input[name=_method]').val('PATCH');
    $('#frm-set-processor')[0].reset();
    $('#txt-id-processor').val(id);
    $.ajax({
      url       : "{{ url('setting/processor') }}" + '/' + id + "/edit",
      type      : "GET",
      dataType  : "json",
      success   : function(data) {
          $('#txt-processor-nm').val(data.type);
          $('#txt-processor-remark').val(data.comments);
      },
      error: function(data){
        console.log('Error:', data);
      }
    });
  };

  function deleteDataProcessor(id)
  {
    $.ajax({
      url       : "{{ url('setting/processor') }}" + '/' + id + "/delete",
      type      : "GET",
      data      : {id:id},
      dataType  : "json",
      success   : function(data) {
        tbl_Processor.ajax.reload( null, false );
        $('#frm-set-processor')[0].reset();
        console.log(data);
      },
      error: function(data){
        console.log('Error:', data);
      }
    });
  };
  //end of operasi proccessor

  //start of operasi OS
  function getOs()
  {
    tbl_Os = $('#tbl-os').DataTable({
        processing: true,
        serverSide: true,
        destroy: true,
        ajax: '{{ URL("/setting/os")}}',
        columns: [
                   {data: 'os', name: 'os'},
                   {data: 'comments', name: 'comments'},
                   {data: 'action', name: 'action'}
                 ],
        "bLengthChange": false,
        "bFilter": false,
        "bAutoWidth": true
    });
  }

  $(function(){
    $('#frm-set-os').validator().on('submit', function(e){
      if (!e.isDefaultPrevented()) {
        var _token      = $('input[name=_token]').val();
        var _method     = $('input[name=_method]').val();
        var id 	   		  = $('#txt-id-os').val();
        var os	   	    = $('#txt-os-nm').val();
        var comments    = $('#txt-os-remark').val();

        if (save_method == 'add') {
          type = 'POST';
          url = "{{ url('/setting/os/store')}}";
        }else{
          type = 'PUT';
          url = "{{ url('/setting/os/update') . '/' }}" + id;
        };

        $.ajax({
          url     : url,
          type    : type,
          dataType : 'json',
          data    : { _method     : _method,
                      _token      : _token,
                      os          : os,
                      comments    : comments,
                    },
          success : function(data) {
            tbl_Os.ajax.reload( null, false );
            $('#frm-set-os')[0].reset();
            save_method = 'add';
            $('input[name=_method]').val('POST');
          },
          error: function(data){
            console.log('Error:', data);
          }
        });
        return false;
      }
    });
  });

  function showDataOs(id)
  {
    save_method = 'edit';
    $('input[name=_method]').val('PATCH');
    $('#frm-set-os')[0].reset();
    $('#txt-id-os').val(id);
    $.ajax({
      url       : "{{ url('setting/os') }}" + '/' + id + "/edit",
      type      : "GET",
      dataType  : "json",
      success   : function(data) {
          $('#txt-os-nm').val(data.os);
          $('#txt-os-remark').val(data.comments);
      },
      error: function(data){
        console.log('Error:', data);
      }
    });
  };

  function deleteDataOs(id)
  {
    $.ajax({
      url       : "{{ url('setting/os') }}" + '/' + id + "/delete",
      type      : "GET",
      data      : {id:id},
      dataType  : "json",
      success   : function(data) {
        tbl_Os.ajax.reload( null, false );
        $('#frm-set-os')[0].reset();
        console.log(data);
      },
      error: function(data){
        console.log('Error:', data);
      }
    });
  };
  //end of operasi OS

  //start of operasi Model
  function getModel()
  {
    tbl_Model = $('#tbl-model').DataTable({
        processing: true,
        serverSide: true,
        destroy: true,
        ajax: '{{ URL("/setting/model")}}',
        columns: [
                   {data: 'model', name: 'model'},
                   {data: 'comments', name: 'comments'},
                   {data: 'action', name: 'action'}
                 ],
        "bLengthChange": false,
        "bFilter": false,
        "bAutoWidth": true
    });
  }

  $(function(){
    $('#frm-set-model').validator().on('submit', function(e){
      if (!e.isDefaultPrevented()) {
        var _token      = $('input[name=_token]').val();
        var _method     = $('input[name=_method]').val();
        var id 	   		  = $('#txt-id-model').val();
        var model	   	    = $('#txt-model-nm').val();
        var comments    = $('#txt-model-remark').val();

        if (save_method == 'add') {
          type = 'POST';
          url = "{{ url('/setting/model/store')}}";
        }else{
          type = 'PUT';
          url = "{{ url('/setting/model/update') . '/' }}" + id;
        };

        $.ajax({
          url     : url,
          type    : type,
          dataType : 'json',
          data    : { _method     : _method,
                      _token      : _token,
                      model          : model,
                      comments    : comments,
                    },
          success : function(data) {
            tbl_Model.ajax.reload( null, false );
            $('#frm-set-model')[0].reset();
            save_method = 'add';
            $('input[name=_method]').val('POST');
          },
          error: function(data){
            console.log('Error:', data);
          }
        });
        return false;
      }
    });
  });

  function showDataModel(id)
  {
    save_method = 'edit';
    $('input[name=_method]').val('PATCH');
    $('#frm-set-model')[0].reset();
    $('#txt-id-model').val(id);
    $.ajax({
      url       : "{{ url('setting/model') }}" + '/' + id + "/edit",
      type      : "GET",
      dataType  : "json",
      success   : function(data) {
          $('#txt-model-nm').val(data.model);
          $('#txt-model-remark').val(data.comments);
      },
      error: function(data){
        console.log('Error:', data);
      }
    });
  };

  function deleteDataModel(id)
  {
    $.ajax({
      url       : "{{ url('setting/model') }}" + '/' + id + "/delete",
      type      : "GET",
      data      : {id:id},
      dataType  : "json",
      success   : function(data) {
        tbl_Model.ajax.reload( null, false );
        $('#frm-set-model')[0].reset();
        console.log(data);
      },
      error: function(data){
        console.log('Error:', data);
      }
    });
  };
  //end of operasi Model
  </script>
@endpush
@endsection

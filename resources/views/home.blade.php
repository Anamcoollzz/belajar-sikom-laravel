@extends('master')

@section('title', 'Dashboard')
@section('description', 'Pendataan Komputer Cosco Shipping Lines Indonesia')

@section('content')

  <div class='row'>
    <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-aqua"><i class="fa fa-desktop"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Active Computer</span>
              <span class="info-box-number" id="txt-totalPC"></span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-red"><i class="fa fa-database"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Active Server</span>
              <span class="info-box-number" id="txt-totalSrv"></span>
              <span class="info-box-number" id="txt-totalVirSrv"></span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->

        <!-- fix for small devices only -->
        <div class="clearfix visible-sm-block"></div>

        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-green"><i class="fa fa-group"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Active Client</span>
              <span class="info-box-number" id="txt-totalClient"></span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->

        <!-- /.col -->

  </div><!-- /.row -->

@push('custom-scripts')
  <script type="text/javascript">
    $(document).ready(function() {
      $.ajax({
          url       : "{{ url('/get-total') }}",
          type      : "GET",
          dataType  : 'json',
          data      : {},
          success: function (data) {
            $('#txt-totalPC').html(data.TotalPC);
            $('#txt-totalClient').html(data.TotalClient);
            $('#txt-totalSrv').html('Server Fisik : ' + data.Server);
            $('#txt-totalVirSrv').html('Server Virtual : ' + data.VirtualServer);
          },
          error: function (data) {
              console.log('Error:', data);
          }
        });
    });
  </script>
@endpush

@endsection

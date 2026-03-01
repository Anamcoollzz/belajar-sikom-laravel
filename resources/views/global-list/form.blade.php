<div class="modal fade" id="modal-formlist">
  <div class="modal-dialog">
    <div class="modal-content">
      <form>
        {{  csrf_field() }}
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title"></h4>
            <input type="hidden" name="" id="txt-id">
      </div>
      <div class="modal-body">
        <h4>Detail User <span class="label label-primary" id="lbl-loadinguser"> Sedang Mengupdate...</span></h4>
                      <table class="table table-striped table-bordered" id="tbl_detailuser">
                        <thead>
                          <td style="text-align: center;">Kode User</td>
                          <td style="text-align: center;">Nama User</td>
                          <td style="text-align: center;">Department</td>
                          <td style="text-align: center;">Status</td>
                          <td style="text-align: center;">Action</td>
                        </thead>
                        <tr>
                          <td colspan="4"><select class="form-control col-sm-12" id="cmb-client"></select></td>
                          <td style="text-align: center;"><a href="javascript:void(0)" class="btn btn-info btn-xs btn-udtclient" onclick="udtClient()" title="Update Data User"><i class="glyphicon glyphicon-pencil"></i></a></td>
                        </tr>
                        <tr id="td-client" bgcolor="#2EACF6"></tr>
                      </table>
                      <h4>Detail Device <span class="label label-primary" id="lbl-loadingdevice"> Sedang Mengupdate...</span></h4>
                      <table class="table table-striped table-bordered" id="tbl_detaildevice">
                        <thead align="center">
                          <td style="text-align: center;">Kode Device</td>
                          <td style="text-align: center;">Hostname</td>
                          <td style="text-align: center;">IP Address</td>
                          <td style="text-align: center;">Status</td>
                          <td style="text-align: center;">Action</td>
                        </thead>
                        <tbody></tbody>
                      </table>
      </div>
      <div class="modal-footer">

      </div>
      </form>
    </div>
    <!-- /.modal-content -->
  </div>
  <!-- /.modal-dialog -->
</div>

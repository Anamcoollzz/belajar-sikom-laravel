<div class="modal fade" id="modal-dataclient">
  <div class="modal-dialog">
    <div class="modal-content">
      <form method="post" class="form-horizontal" role="form" data-toggle="validator">
        {{  csrf_field() }} {{ method_field('POST') }}
        <input type="hidden" name="" id="txt-id">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title"></h4>
            <span id="lbl-status" class="label arrowed"></span>
      </div>
      <div class="modal-body">
          <div class="box-body">
              <div class="form-group" id="frm-idclient">
                <label for="txt-idclient" class="col-sm-3 control-label">ID</label>
                <div class="col-sm-9">
                  <input class="form-control" id="txt-idclient" placeholder="ID" type="text" disabled>
                </div>
              </div>

              <div class="form-group">
                <label for="txt-namaclient" class="col-sm-3 control-label">Nama Client</label>
                <div class="col-sm-9">
                  <input class="form-control" id="txt-namaclient" placeholder="Nama Client" type="text" required>
                  <span class="help-block with-errors"></span>
                </div>
              </div>

              <div class="form-group">
                <label for="txt-ad" class="col-sm-3 control-label">Active Directory</label>
                <div class="col-sm-9">
                  <input class="form-control" id="txt-ad" placeholder="Active Directory" type="text" required>
                  <span class="help-block with-errors"></span>
                </div>
              </div>

              <div class="form-group">
                <label for="txt-dept" class="col-sm-3 control-label">Department</label>
                <div class="col-sm-9">
                  <select class="form-control" id="cmb-department"></select>
                </div>
              </div>

              <div class="form-group">
                <label for="txt-password" class="col-sm-3 control-label">Password AD</label>
                <div class="col-sm-9">
                  <input class="form-control" id="txt-password" placeholder="Password Active Directory" type="text" required>
                  <span class="help-block with-errors"></span>
                </div>
              </div>

              <div class="form-group">
                <label for="txt-email" class="col-sm-3 control-label">Email</label>
                <div class="col-sm-9">
                  <input class="form-control" id="txt-email" placeholder="Email" type="email" required>
                  <span class="help-block with-errors"></span>
                </div>
              </div>

              <div class="form-group">
                <label for="txt-phone" class="col-sm-3 control-label">Phone Extension</label>
                <div class="col-sm-9">
                  <input class="form-control" id="txt-phone" placeholder="Phone Extension" type="text" required>
                  <span class="help-block with-errors"></span>
                </div>
              </div>

              <div class="form-group">
                <label for="txt-remark" class="col-sm-3 control-label">Remark</label>
                <div class="col-sm-9">
                  <textarea class="form-control" id="txt-remark" placeholder="Remark" type="text"></textarea>
                </div>
              </div>

              <h6 id="txt-infoclient_create">Create at</h6>
              <h6 id="txt-infoclient_update">Terakhir Edit</h6>
          </div>
              <!-- /.box-body -->


      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-primary" id="btn-saveclient"><i class="fa fa-save fa-lg"></i> Save</button>
        <button type="button" class="btn btn-warning" id="btn-deactivateclient"><i class="fa fa-power-off fa-lg"></i> Deactivate</button>
        <button type="button" class="btn btn-danger" id="btn-deleteclient"><i class="fa fa-trash fa-lg"></i> Delete</button>
      </div>
      </form>
    </div>
    <!-- /.modal-content -->
  </div>
  <!-- /.modal-dialog -->
</div>

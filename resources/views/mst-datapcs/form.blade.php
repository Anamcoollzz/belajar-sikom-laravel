<div class="modal fade" id="modal-datapc">
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
              <div class="form-group" id="frm-idpc">
                <label for="txt-idclient" class="col-sm-3 control-label">ID</label>
                <div class="col-sm-9">
                  <input class="form-control" id="txt-idpc" placeholder="ID" type="text" disabled>
                </div>
              </div>

              <div class="form-group">
                <label for="txt-namaclient" class="col-sm-3 control-label">Hostname</label>
                <div class="col-sm-9">
                  <input class="form-control" id="txt-hostname" placeholder="Hostname" type="text" required>
                  <span class="help-block with-errors"></span>
                </div>
              </div>

              <div class="form-group">
                <label for="txt-ad" class="col-sm-3 control-label">IP Address</label>
                <div class="col-sm-9">
                  <input type="text" class="form-control" id="txt-ip" placeholder="IP Address" required>
                  <span class="help-block with-errors"></span>
                </div>
              </div>

              <div class="form-group">
                <label for="txt-dept" class="col-sm-3 control-label">Proccessor</label>
                <div class="col-sm-9">
                  <select class="form-control" id="cmb-processor"></select>
                  <span class="help-block with-errors"></span>
                </div>
              </div>

              <div class="form-group">
                <label for="txt-ram" class="col-sm-3 control-label">RAM(MB)</label>
                <div class="col-sm-4">
                  <input class="form-control" id="txt-ram" placeholder="Memori RAM" type="number" name="txt-ram" min="512" step="256" max="" required>
                  <span class="help-block with-errors"></span>
                </div>
                <div class="col-sm-5">
                  <select class="form-control" id="cmb-ram-type">
                    <option val="1">DDR1</option>
                    <option val="2">DDR2</option>
                    <option val="3">DDR3</option>
                    <option val="4">DDR4</option>
                  </select>
                </div>
              </div>

              <div class="form-group">
                <label for="txt-email" class="col-sm-3 control-label">Hardisk(GB)</label>
                <div class="col-sm-4">
                  <input class="form-control" id="txt-hardisk" placeholder="Hardisk" type="number" name="txt-hardisk" min="10" step="10" max="" required>
                  <span class="help-block with-errors"></span>
                </div>
                <div class="col-sm-5">
                  <select class="form-control" id="cmb-hardisk-type">
                    <option val="1">IDE</option>
                    <option val="2">SATA</option>
                  </select>
                </div>
              </div>

              <div class="form-group">
                <label for="txt-phone" class="col-sm-3 control-label">Model</label>
                <div class="col-sm-9">
                  <select class="form-control" id="cmb-model"></select>
                  <span class="help-block with-errors"></span>
                </div>
              </div>

              <div class="form-group">
                <label for="txt-phone" class="col-sm-3 control-label">OS</label>
                <div class="col-sm-9">
                  <select class="form-control" id="cmb-os"></select>
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
        <button type="submit" class="btn btn-primary" id="btn-savepc"><i class="fa fa-save fa-lg"></i> Save</button>
        <button type="button" class="btn btn-warning" id="btn-deactivatepc"><i class="fa fa-power-off fa-lg"></i> Deactivate</button>
        <button type="button" class="btn btn-danger" id="btn-deletepc"><i class="fa fa-trash fa-lg"></i> Delete</button>
      </div>
      </form>
    </div>
    <!-- /.modal-content -->
  </div>
  <!-- /.modal-dialog -->
</div>

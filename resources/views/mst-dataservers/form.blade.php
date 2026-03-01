<div class="modal fade" id="modal-dataserver">
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
            <div class="row">
              <div class="form-group" id="frm-idserver">
                <label for="txt-idclient" class="col-sm-3 control-label">ID</label>
                <div class="col-sm-3">
                  <input class="form-control" id="txt-idserver" placeholder="ID" type="text" disabled>
                </div>
                <div class="col-sm-6 checkbox">
                  <label><input type="checkbox" id="chk-virtual" value="vmc">Virtual Machine</label>
                </div>
              </div>
            </div>

            <div class="row">
              <div class="form-group">
                <label for="txt-namaclient" class="col-sm-3 control-label">Nama Server</label>
                <div class="col-sm-9">
                  <input class="form-control" id="txt-nmserver" placeholder="Nama Server" type="text" required>
                  <span class="help-block with-errors"></span>
                </div>
              </div>
            </div>

            <div class="row" id="frm-vmon">
              <div class="form-group">
                <label for="txt-phone" class="col-sm-3 control-label">V-Machine On</label>
                <div class="col-sm-9">
                  <select class="form-control" id="cmb-vmon"></select>
                  <span class="help-block with-errors"></span>
                </div>
              </div>
            </div>

            <div class="row">
              <div class="form-group" id="frm-idpc">
                <label for="txt-namaclient" class="col-sm-3 control-label">Hostname</label>
                <div class="col-sm-9">
                  <input class="form-control" id="txt-hostname" placeholder="Hostname" type="text" required>
                  <span class="help-block with-errors"></span>
                </div>
              </div>
            </div>

            <div class="row">
              <div class="form-group">
                <label for="txt-namaclient" class="col-sm-3 control-label">Password</label>
                <div class="col-sm-9">
                  <input class="form-control" id="txt-password" placeholder="Password" type="text" required>
                  <span class="help-block with-errors"></span>
                </div>
              </div>
            </div>

            <div class="row">
              <div class="form-group">
                <label for="txt-ad" class="col-sm-3 control-label">IP Address</label>
                <div class="col-sm-9">
                  <input type="text" class="form-control" placeholder="IP Address" id="txt-ip" required>
                  <span class="help-block with-errors"></span>
                </div>
              </div>
            </div>

            <div class="row" id="frm-proccessor">
              <div class="form-group">
                <label for="txt-dept" class="col-sm-3 control-label">Processor</label>
                <div class="col-sm-9">
                  <select class="form-control" id="cmb-processor"></select>
                  <span class="help-block with-errors"></span>
                </div>
              </div>
            </div>

            <div class="row">
              <div class="form-group">
                <label for="txt-password" class="col-sm-3 control-label">RAM(MB)</label>
                <div class="col-sm-4">
                  <input class="form-control" id="txt-ram" placeholder="Memori RAM" type="number" step="512" min="512" required>
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
            </div>

            <div class="row">
              <div class="form-group">
                <label for="txt-password" class="col-sm-3 control-label">Hardisk(GB)</label>
                <div class="col-sm-4">
                  <input class="form-control" id="txt-hardisk" placeholder="Hardisk" type="number" step="10" min="10"required>
                  <span class="help-block with-errors"></span>
                </div>
                <div class="col-sm-5">
                  <select class="form-control" id="cmb-hardisk-type">
                    <option val="1">IDE</option>
                    <option val="2">SATA</option>
                  </select>
                </div>
              </div>
            </div>

            <div class="row" id="frm-model">
              <div class="form-group">
                <label for="txt-phone" class="col-sm-3 control-label">Model</label>
                <div class="col-sm-9">
                  <select class="form-control" id="cmb-model"></select>
                  <span class="help-block with-errors"></span>
                </div>
              </div>
            </div>

            <div class="row" id="frm-serial">
              <div class="form-group">
                <label for="txt-phone" class="col-sm-3 control-label">Serial Number</label>
                <div class="col-sm-9">
                  <input class="form-control" id="txt-serial" placeholder="Serial Number" type="text">
                  <span class="help-block with-errors"></span>
                </div>
              </div>
            </div>

            <div class="row">
              <div class="form-group">
                <label for="txt-phone" class="col-sm-3 control-label">OS</label>
                <div class="col-sm-9">
                  <select class="form-control" id="cmb-os"></select>
                  <span class="help-block with-errors"></span>
                </div>
              </div>
            </div>

            <div class="row">
              <div class="form-group">
                <label for="txt-remark" class="col-sm-3 control-label">Remark</label>
                <div class="col-sm-9">
                  <textarea class="form-control" id="txt-remark" placeholder="Remark" type="text"></textarea>
                </div>
              </div>
            </div>

              <h6 id="txt-infoserver_create">Create at</h6>
              <h6 id="txt-infoserver_update">Terakhir Edit</h6>
          </div>
              <!-- /.box-body -->
      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-primary" id="btn-saveserver"><i class="fa fa-save fa-lg"></i> Save</button>
        <button type="button" class="btn btn-warning" id="btn-deactivateserver"><i class="fa fa-power-off fa-lg"></i> Deactivate</button>
        <button type="button" class="btn btn-danger" id="btn-deleteserver"><i class="fa fa-trash fa-lg"></i> Delete</button>
      </div>
      </form>
    </div>
    <!-- /.modal-content -->
  </div>
  <!-- /.modal-dialog -->
</div>

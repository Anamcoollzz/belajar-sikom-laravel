<div class="col-md-9">
  <div class="box box-solid" id="box-dept">
    <div class="box-header with-border">
      <h3 class="box-title" id="txt-data"></h3>
    </div>
    <!-- /.box-header -->
    <div class="box-body">
      <form method="post" class="form-horizontal" role="form" data-toggle="validator" id="frm-set-dept">
        {{  csrf_field() }} {{ method_field('POST') }}
            <input type="hidden" name="" value="" id="txt-id">
            <div class="form-group">
              <label for="txt-namaclient" class="col-sm-3 control-label">Department</label>
              <div class="col-sm-9">
                <input class="form-control" id="txt-dept-dept" placeholder="Nama Department/Divisi" type="text" required>
                <span class="help-block with-errors"></span>
              </div>
            </div>

            <div class="form-group">
              <label for="txt-remark" class="col-sm-3 control-label">Remark</label>
              <div class="col-sm-9">
                <textarea class="form-control" id="txt-dept-remark" placeholder="Remark" type="text"></textarea>
              </div>
            </div>

          <button type="submit" class="btn btn-primary pull-right" id="btn-dept-save"><i class="fa fa-save fa-lg"></i> Save</button>
      </form>

      <table id="tbl-dept" class="table table-striped table-hover">
        <thead>
            <tr>
                <th>Department</th>
                <th>Comments</th>
                <th>Action</th>
            </tr>
        </thead>
      </table>
    </div>
    <!-- /.box-body -->
  </div>
  <!-- /.box -->
</div>

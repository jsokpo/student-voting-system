<!-- Config -->
<?php
ini_set('display_errors', 0);
ini_set('display_startup_errors', 0);
error_reporting(-1);
?>
<div class="modal fade" id="counterconfig">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title"><b>Please Set Time for Voting</b></h4>
            </div>
            <div class="modal-body">
              <div class="text-center">
                <form class="form-horizontal" method="POST" action="config_countdown_save.php" enctype="multipart/form-data">
                  <div class="form-group">
                    <label for="title" class="col-sm-3 control-label">Counter</label>

                    <div class="col-sm-9">
                    Date*<input type="date" class="form-control" name="date" value="<?php echo $date;?>">
                    H* <input type="number" class="form-control" name="h" value="<?php echo $h;?>">
                    M* <input type="number" class="form-control" name="m" value="<?php echo $m;?>">
                    S*<input type="number" class="form-control" name="s" value="<?php echo $s;?>">
                    </div>
                  </div>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default btn-flat pull-left" data-dismiss="modal"><i class="fa fa-close"></i> Close</button>
              <button type="submit" class="btn btn-success btn-flat" name="save"><i class="fa fa-save"></i> Save</button>
              </form>
            </div>
        </div>
    </div>
</div>
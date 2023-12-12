<!-- Preview -->
<div class="modal fade" id="preview_modal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title">Result View</h4>
            </div>
            <div class="modal-body">
              <div id="preview_body"></div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default btn-flat pull-left" data-dismiss="modal"><i class="fa fa-close"></i> Close</button>
            </div>
        </div>
    </div>
</div>

<!-- View Live Election Result -->
<div class="modal fade" id="check">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title">Updated Results</h4>
            </div>
            <div class="box-body">
              <table id="example1" class="table table-bordered">
                <thead>
                  <th class="hidden"></th>
                  <th>Position</th>
                  <th>Candidate</th>
                  <th>Election Type</th>
                  <th>Votes</th>
                </thead>
                <tbody>
            <div class="modal-body">
              <?php
                $sql = "SELECT p.description AS description,
                c.firstname AS canfirst,
                c.lastname AS canlast,
                e.ElectionName AS election_name,       
                v.vottotal 
         FROM (SELECT  COUNT(*) AS vottotal,
                       candidate_id,
                       position_id,
                       votetypeID
               FROM votes
               GROUP BY candidate_id, position_id, votetypeID
           ) AS v
         INNER JOIN  positions p ON v.position_id=p.id
         INNER JOIN  candidates c ON c.id=v.candidate_id
         INNER JOIN  election_type e ON e.ID=v.votetypeID";
                $query = $conn->query($sql);
                while($row = $query->fetch_assoc()){
                  echo "
                  <tr>
                  <td class='hidden'></td>
                  <td>".$row['description']."</td>
                  <td>".$row['canfirst'].' '.$row['canlast']."</td>
                  <td>".$row['election_name']."</td>
                  <td>".$row['vottotal']."</td>
                </tr>
                  ";
                }
              ?>
            </div>
            </table>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default btn-flat pull-left" data-dismiss="modal"><i class="fa fa-close"></i> Close</button>
            </div>
        </div>
    </div>
</div>

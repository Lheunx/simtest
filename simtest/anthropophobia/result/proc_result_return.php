<?php
  include("../../sql/conn.php");
  $member = [];
  $total=0;
  $sql = "SELECT * FROM testselect WHERE mainNo = '1'";
  $result = mysqli_query($conn, $sql);
  if($result === false){
    echo mysqli_error($conn);
  }
  for($i=1; $i < mysqli_num_rows($result)+1; $i++){

      $total = (int)$total+$_GET['q'.$i];
  }

  $sql2 = "SELECT * FROM testresult WHERE rate > $total";
  $result2 = mysqli_query($conn, $sql2);
  $info = mysqli_fetch_array($result2);
  if($result2 === false){
    echo mysqli_error($conn);
  }


?>

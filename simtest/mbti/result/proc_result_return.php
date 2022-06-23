<?php
  include("../../sql/conn.php");
  $member = [];
  $totalEI=0;
  $totalSN=0;
  $totalTF=0;
  $totalJP=0;
  $result= '';
  // $sql = "SELECT * FROM testselect WHERE mainNo = '2'";
  // $result = mysqli_query($conn, $sql);
  if($result === false){
    echo mysqli_error($conn);
  }
  for($i=1; $i < 37; $i++){
    if ($i<10) {
      $totalEI=(int)$totalEI+$_GET['radio'.$i];
    }
    elseif ($i<19) {
      $totalSN=(int)$totalSN+$_GET['radio'.$i];
    }
    elseif ($i<28) {
      $totalTF=(int)$totalTF+$_GET['radio'.$i];
    }
    else {
      $totalJP=(int)$totalJP+$_GET['radio'.$i];
    }
  }
  if($totalEI > 0){
    $result = $result.'I';
  }
  else {
    $result = $result.'E';
  }
  if($totalSN > 0){
    $result = $result.'S';
  }
  else {
    $result = $result.'N';
  }
  if($totalTF > 0){
    $result = $result.'T';
  }
  else {
    $result = $result.'F';
  }
  if($totalJP > 0){
    $result = $result.'J';
  }
  else {
    $result = $result.'P';
  }
  echo $result;

  $sql = "SELECT * FROM mbtiresult WHERE result ='".$result."'";
  echo $sql;
  $result2 = mysqli_query($conn, $sql);
  $info = mysqli_fetch_array($result2);
  if($result2 === false){
    echo mysqli_error($conn);
  }


?>

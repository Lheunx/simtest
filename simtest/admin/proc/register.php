<?php
  $title=$_POST['title'];
  $warn=$_POST['warn'];
  $date='2020-09-18';
  // echo $title;
  $Smember = [];
  $Rmember = [];
  $RRmember = [];
  $RRRmember = [];
  $titleNo = 1;
  for ($i=0; $i < $_POST['selectNo']; $i++) {
    $Smember[$i] = $_POST['select'.$i];
    // echo $Smember[$i];
  }
  for ($i=0; $i < $_POST['resultNo']; $i++) {
    $Rmember[$i] = $_POST['result'.$i];
    $RRmember[$i] = $_POST['resultarticle'.$i];
    $RRRmember[$i] = $_POST['resultrate'.$i];
    // echo $Rmember[$i];
  }
  for ($i=0; $i < $_POST['resultNo']; $i++) {

    // echo $Rmember[$i];
  }
 // 여기서부터 mysql+PDO를 이용해서 데이터베이스에 저장
  $conn = mysqli_connect(
    'localhost',
    'root',
    '111111',
    'simtest'
  );
  if(mysqli_connect_errno()){
    echo "error";
  }

  $sql = "INSERT INTO testmain(No,Title,Warn,Date) VALUES('0','".$title."','".$warn."',now())";
  $result = mysqli_query($conn, $sql);
  if($result === false){
    echo mysqli_error($conn);
  }
  $info = mysqli_query($conn, "SELECT * FROM testmain");
  $titleNo = mysqli_num_rows($info);
  echo $titleNo;

  for ($i=0; $i < $_POST['selectNo'] ; $i++) {
    $sql2 = "INSERT INTO testselect(No,mainNo,selectNo,article) VALUES('0','".$titleNo."','".($i+1)."','".$Smember[$i]."')";
    $result2 = mysqli_query($conn, $sql2);
    if($result2 === false){
      echo mysqli_error($conn);
    }
  }

  for ($i=0; $i < $_POST['resultNo'] ; $i++) {
    $sql2 = "INSERT INTO testresult(No,mainNo,result,article,rate) VALUES('0','".$titleNo."','".$Rmember[$i]."','".$RRmember[$i]."','".intval($RRRmember[$i])."')";
    $result2 = mysqli_query($conn, $sql2);
    if($result2 === false){
      echo mysqli_error($conn);
    }
  }



  // while($info=mysqli_fetch_array($result)){
  //   print_r($info);
  //   echo "<br/>";
  // }
?>

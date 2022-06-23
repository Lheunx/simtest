<?php
  include $_SERVER['DOCUMENT_ROOT']."/sql/conn.php";
  $member = [];
  $total=0;
  $sql = "SELECT * FROM testmain WHERE No = '1'";
  // echo $conn;
  $result = mysqli_query($conn, $sql);
  if($result === false){
    echo mysqli_error($conn);
  }
  while($info=mysqli_fetch_array($result)){
    echo "<h1>".$info['Title']."</h1>
      <hr>
      <p><h2>유의사항</h2>
      <h2>
      ".$info['Warn']."
      </h2></p>
      <div>
        <a href='start'><button type='button' class='btn3'>테스트 시작</button></a>
      </div>
    ";
  }
?>

<?php
  include("sql/conn.php");
  $member = [];
  $total=0;
  $sql = "SELECT * FROM testmain";
  $result = mysqli_query($conn, $sql);
  if($result === false){
    echo mysqli_error($conn);
  }
  while($info=mysqli_fetch_array($result)){
    echo "<div class='box1'>
            <span class='badgeHere'>Here</span>
            <h2>".$info['Title']."</h2>
            <p>".$info['Title']." 입니다.</p>
            <a href='".$info['dir']."'>
              <button type='button' class='btn'>테스트 시작</button>
            </a>
          </div>
    ";
  }
?>

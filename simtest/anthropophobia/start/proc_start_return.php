<?php
  include $_SERVER['DOCUMENT_ROOT']."/sql/conn.php";

$sql = "SELECT * FROM testselect WHERE mainNo = '1'";
$result = mysqli_query($conn, $sql);
if($result === false){
  echo mysqli_error($conn);
}
echo "\n";
while($info=mysqli_fetch_assoc($result)){
  echo "$('p#radio').append(\"<section id='q".$info['No']."' name='q".$info['No']."'><p>".$info['article']."</p><p class='radio1'><input type='radio' value='1'> 동의함</p><p class='radio1'><input type='radio' value='3'> 중간</p><p class='radio1'><input type='radio' value='5'> 동의안함</p></section></p>\");";
}


?>

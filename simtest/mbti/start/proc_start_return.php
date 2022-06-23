<?php
  include $_SERVER['DOCUMENT_ROOT']."/sql/conn.php";
$array = array(0 => 'E' ,1 => 'I',2 => 'S',3 => 'N',4 => 'T',5 => 'F',6 => 'J',7 => 'P' );
$arrayE = array();
$arrayI = array();
$arrayS = array();
$arrayN = array();
$arrayT = array();
$arrayF = array();
$arrayJ = array();
$arrayP = array();
$j=0;
// for($i=0;$i<8;$i++){
  // echo $array[$i];
  // $sql = "SELECT * FROM mbtiselect WHERE mainNo = '2' AND group1 = '".$array[$i]."'";
  $sql = "SELECT * FROM mbtiselect WHERE mainNo = '2' ";
  // echo $sql;
  $result = mysqli_query($conn, $sql);
  if($result === false){
    echo mysqli_error($conn);
  }
  $num = mysqli_num_rows($result);
  // $j=0;
  while($info=mysqli_fetch_assoc($result)){
    $arrayE[$j] = $info['article'];
    $j+=1;
  }
  // $string1 = "$('p#radio').append(\"<section>1<br>".$arrayE[$i]."<input type='radio' name='radio' value='-1'><input type='radio' name='radio' value='1'>".$arrayE[$i+9]."</section>\");";

  for ($i=0; $i < 9 ; $i++) {
    // echo $arrayE[$i]; echo $arrayE[$i+9];
    echo "$('p#radio1').append(\"<section>".($i+1)."<br>".$arrayE[$i]."<input type='radio' name='radio".($i+1)."' value='-1'><br>".$arrayE[$i+9]."<input type='radio' name='radio".($i+1)."' value='1'></section>\");";
    // echo "<br>";
  }
  for ($i=18; $i < 18+9 ; $i++) {
    // echo $arrayE[$i]; echo $arrayE[$i+9];
    echo "$('p#radio2').append(\"<section>".($i-8)."<br>".$arrayE[$i]."<input type='radio' name='radio".($i-8)."' value='-1'><br>".$arrayE[$i+9]."<input type='radio' name='radio".($i-8)."' value='1'></section>\");";
    // echo "<br>";
  }
  for ($i=36; $i < 36+9 ; $i++) {
    // echo $arrayE[$i]; echo $arrayE[$i+9];
    echo "$('p#radio3').append(\"<section>".($i-17)."<br>".$arrayE[$i]."<input type='radio' name='radio".($i-17)."' value='-1'><br>".$arrayE[$i+9]."<input type='radio' name='radio".($i-17)."' value='1'></section>\");";
    // echo "<br>";
  }
  for ($i=54; $i < 54+9 ; $i++) {
    // echo $arrayE[$i]; echo $arrayE[$i+9];
    echo "$('p#radio4').append(\"<section>".($i-26)."<br>".$arrayE[$i]."<input type='radio' name='radio".($i-26)."' value='-1'><br>".$arrayE[$i+9]."<input type='radio' name='radio".($i-26)."' value='1'></section>\");";
    // echo "<br>";
  }


// }
?>

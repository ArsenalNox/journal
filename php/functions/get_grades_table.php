<?php
include_once "../dtb/dtb.php";
$date_start = $_POST['date1'];
$date_end = $_POST['date2'];
$uqid = $_COOKIE['SSSUIDH'];
$sql = "SELECT * FROM marksall WHERE studid='$uqid' AND date >= '$date_start' and date <= '$date_end' ORDER BY date";
$result= mysqli_query($conn, $sql);
echo "<table>";
while($row = mysqli_fetch_assoc($result)){
  echo "
  <tr>
  <td> ". $row['date'] ." : '".$row['mark']." : ".$row['lessonName']."'
  ";
}
echo "</table>";

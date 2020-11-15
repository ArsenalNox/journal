<?php
include_once 'php/dtb/dtb.php';
?>
<!DOCTYPE html>
<html lang="ru" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="theme-color" content="#FFFFFF"/>
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/right-nav-style.css">
    <link rel="apple-touch-icon" sizes="192x19Asia/Yekaterinburg	2" href="img/192.png">
    <link rel="apple-touch-icon" sizes="48x48" href="img/48.png">
    <link rel="apple-touch-icon" sizes="57x57" href="img/57.png">
    <!-- <link rel="apple-touch-icon" sizes="114x114" href="img/114.png"> -->
    <link rel="apple-touch-icon" sizes="512x512" href="img/512.png">
    <link rel="apple-touch-icon" sizes="1024x1024" href="img/1024.png">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="img/114.png" />
    <title>Электронный журнал Родителя</title>
  </head>
  <style media="screen">
    .day-table{
        display: grid;
        border: 3px solid linear-gradient(to bottom right, #fc346c, #fa6555);;
        margin-bottom: 1rem;
    }
  </style>
  <body>
    <nav id='nav1'>
      <div class="footer">
        <img src="./img/logo.png" class="logo">
        <h1 class="eljour">Электронный дневник</h1>
        <div class="burger">
          <input type="checkbox" id="nav-toggle" hidden>
          <nav class="nav">
            <label for="nav-toggle" class="nav-toggle" onclick>
              <!-- <img src="img/cross burger.png" class="cross"> -->
            </label>
            <h2 class="logo">
              <a href="#"></a>
            </h2>
            <div class="button-icon" onclick='ShowMenu()'></div>
              <ul class='menu'>
                <li> <a href="student.php">Главная</a></li>
                <li> <a href="communication.php"> Общение с преподавателями </a> </li>
                <li> <a href="gradesParent.php"> Успеваемость </a> </li>
                <li> <a href="php/functions/logout.php">Выйти из аккаунта</a>  </li>
                <br> <hr>
                <li> <span id='current-lesson'> </span> </li><table>
                			<tr>
                				<th colspan="2">Расписание звонокв</th>
                			<tr>
                				<td>8:30</td>
                				<td>9:15</td>
                			</tr>
                			<tr>
                				<td>9:20</td>
                				<td>10:05</td>
                			</tr>
                			<tr>
                				<td>10:15</td>
                				<td>10:50</td>
                			</tr>
                			<tr>
                				<td>11:10</td>
                				<td>11:55</td>
                			</tr>
                			<tr>
                				<td>12:10</td>
                				<td>12:55</td>
                			</tr>
                				<td>13:00</td>
                				<td>13:45</td>
                			</tr>
                		</table>
                <?php echo '<li> Вы вошли как: '.$_COOKIE['SSSIDH'].'</li>'; ?>
              </ul>
          </div>
          </nav>
        </div>
      </div>
    </nav>
  <section class="main">

<h2>Объявления школы</h2>
<?php
$id = $_COOKIE['SSSCLS'];
$sql = "SELECT * FROM class_comment WHERE class_id ='$id'";
$result = mysqli_query($conn, $sql);
while ($row = mysqli_fetch_assoc($result)) {
  echo "<p>".$row['date'].": ".$row['comment']."</p>";
}
 ?>
</section>
  </body>
  <script src="js/main.js" charset="utf-8"></script>
  <script src="js/requests.js" charset="utf-8"></script>
</html>

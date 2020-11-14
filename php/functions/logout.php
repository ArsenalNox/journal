<?php
if(isset($_COOKIE['SSSIDH'])){
  unset($_COOKIE['SSSIDH']);
  setcookie('SSSIDH', null, time()-1, '/');
  setcookie("SSSIDH", null, time()-3600, '/');
  header("Location: ../../index.php");
}
exit;

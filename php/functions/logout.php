<?php
if(isset($_COOKIE['SSSIDH'])){
  unset($_COOKIE['SSSIDH']);
  unset($_COOKIE['SSSCLS']);
  unset($_COOKIE['SSSUIDH']);
  setcookie('SSSIDH', null, time()-1, '/');
  setcookie("SSSIDH", null, time()-3600, '/');
  setcookie("SSSCLS", null, time()-3600, '/');
  setcookie("SSSUIDH", null, time()-3600, '/');
  setcookie("WHO", null, time()-3600, '/');
  header("Location: ../../index.php");
}
exit;

<?php
$name=$_POST['fullname'];
$apellidos=$_POST['name2'];
$email=$_POST['emailid'];

//echo "Hola". $name . $apellidos . "bienvenid@ a ESCOMPRAS, tu cuenta fue registrada exitosamente";

mail($email, "Registro a ESCOMPRAS", "bienvenid@ a ESCOMPRAS, tu cuenta fue registrada exitosamente");






?>
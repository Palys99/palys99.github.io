<?php
session_start();
error_reporting(0);
include('includes/config.php');
// Code client user Registration
if(isset($_POST['submit']))
{
$name=$_POST['fullname'];
$apellidos=$_POST['name2'];
$email=$_POST['emailid'];
$contactno=$_POST['contactno'];
$f_nac=$_POST['nacimiento'];
$password=md5($_POST['password']);
$query=mysqli_query($con,"insert into users(name,apellidos,email,contactno,f_nac,password) values('$name','$apellidos','$email','$contactno','$f_nac','$password')");
if($query)
{	
	echo "<script>alert('Te has registrado correctamente como cliente');</script>";
}
else{
echo "<script>alert('¡Algo salió mal! No te has podido registrar');</script>";
}
}
// Code provider user Registration
if(isset($_POST['submit2']))
{
$name=$_POST['businessname'];
$email=$_POST['emailid2'];
$rfc=$_POST['rfc'];
$password=md5($_POST['password2']);
$query=mysqli_query($con,"insert into provider(name,email,rfc,password) values('$name','$email','$rfc','$password')");
if($query)
{
	echo "<script>alert('Te has registrado correctamente como proveedor');</script>";
}
else{
echo "<script>alert('¡Algo salió mal! No te has podido registrar');</script>";
}
}


?>


<!DOCTYPE html>
<html lang="es">
	<head>
		<!-- Meta -->
		<meta charset="utf-8">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
		<meta name="description" content="">
		<meta name="author" content="">
	    <meta name="keywords" content="MediaCenter, Template, eCommerce">
	    <meta name="robots" content="all">

	    <title>ESCOMPRAS | Registro</title>

	    <!-- Bootstrap Core CSS -->
	    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
	    
	    <!-- Customizable CSS -->
	    <link rel="stylesheet" href="assets/css/main.css">
	    <link rel="stylesheet" href="assets/css/green.css">
	    <link rel="stylesheet" href="assets/css/owl.carousel.css">
		<link rel="stylesheet" href="assets/css/owl.transitions.css">
		<!--<link rel="stylesheet" href="assets/css/owl.theme.css">-->
		<link href="assets/css/lightbox.css" rel="stylesheet">
		<link rel="stylesheet" href="assets/css/animate.min.css">
		<link rel="stylesheet" href="assets/css/rateit.css">
		<link rel="stylesheet" href="assets/css/bootstrap-select.min.css">

		<!-- Demo Purpose Only. Should be removed in production -->
		<link rel="stylesheet" href="assets/css/config.css">

		<link href="assets/css/green.css" rel="alternate stylesheet" title="Green color">
		<link href="assets/css/blue.css" rel="alternate stylesheet" title="Blue color">
		<link href="assets/css/red.css" rel="alternate stylesheet" title="Red color">
		<link href="assets/css/orange.css" rel="alternate stylesheet" title="Orange color">
		<link href="assets/css/dark-green.css" rel="alternate stylesheet" title="Darkgreen color">
		<!-- Demo Purpose Only. Should be removed in production : END -->

		
		<!-- Icons/Glyphs -->
		<link rel="stylesheet" href="assets/css/font-awesome.min.css">

        <!-- Fonts --> 
		<link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>
		
		<!-- Favicon -->
		<link rel="shortcut icon" href="assets/images/favicon.ico">
<script type="text/javascript">
/*function valid()
{
 if(document.register.password.value!= document.register.confirmpassword.value)
{
alert("Password and Confirm Password Field do not match  !!");
document.register.confirmpassword.focus();
return false;
}
return true;
}
*/

 function validarPasswd() {
   
  var p1 = document.getElementById("password").value;
  var p2 = document.getElementById("confirmpassword").value;
  var espacios = false;
  var cont = 0;

  // Este bucle recorre la cadena para comprobar
  // que no todo son espacios
	while (!espacios && (cont < p1.length)) {
		if (p1.charAt(cont) == " ")
			espacios = true;
		cont++;
	}
   
  if (espacios) {
   alert ("La contraseña no puede contener espacios en blanco");
   return false;
  }
   
  if (p1.length == 0 || p2.length == 0) {
   alert("Los campos de la password no pueden quedar vacios");
   return false;
  }
   
  if (p1 != p2) {
   alert("Las contraseñas deben de coincidir");
   return false;
  } else {
   alert("La contraseña está correcta");
   return true; 
  }
 }

function userAvailability() {
$("#loaderIcon").show();
jQuery.ajax({
url: "check_availability.php",
data:'email='+$("#email").val(),
type: "POST",
success:function(data){
$("#user-availability-status1").html(data);
$("#loaderIcon").hide();
},
error:function (){}
});
}


/*
function userAvailability(valor) {
  if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3,4})+$/.test(valor)){
   alert("La dirección de email " + valor + " es correcta.");
  } else {
   alert("La dirección de email es incorrecta.");
  }
}*/

</script>



	</head>
    <body class="cnt-home">
	
		
	
		<!-- ============================================== HEADER ============================================== -->
<header class="header-style-1">

	<!-- ============================================== TOP MENU ============================================== -->
<?php include('includes/top-header.php');?>
<!-- ============================================== TOP MENU : END ============================================== -->
<?php include('includes/main-header.php');?>
	<!-- ============================================== NAVBAR ============================================== -->
<?php include('includes/menu-bar.php');?>
<!-- ============================================== NAVBAR : END ============================================== -->

</header>

<!-- ============================================== HEADER : END ============================================== -->
<div class="breadcrumb">
	<div class="container">
		<div class="breadcrumb-inner">
			<ul class="list-inline list-unstyled">
				<li><a href="index.php">Inicio</a></li>
				<li class='active'>Registro</li>
			</ul>
		</div><!-- /.breadcrumb-inner -->
	</div><!-- /.container -->
</div><!-- /.breadcrumb -->

<div class="body-content outer-top-bd">
	<div class="container">
		<div class="sign-in-page inner-bottom-sm">
			<div class="row">
				<!-- Sign-in -->			
<div class="col-md-6 col-sm-6 sign-in">
	<h4 class="">Regístrate como cliente</h4>
	<p class="">Está opción está indicada para personas que quieran ser nuestros clientes y que <b>no</b> quieran vender productos.</p>
	<form class="register-form outer-top-xs" role="form" method="post" name="register" onSubmit="return valid();">
<div class="form-group">
	    	<label class="info-title" for="fullname">Nombre(s) <span>*</span></label>
	    	<input type="text" class="form-control unicase-form-control text-input" id="fullname" name="fullname" required="required">
	  	</div>
<div class="form-group">
	    	<label class="info-title" for="fullname">Apellidos <span>*</span></label>
	    	<input type="text" class="form-control unicase-form-control text-input" id="name2" name="name2" required="required">
	  	</div>

		<div class="form-group">
	    	<label class="info-title" for="exampleInputEmail2">Correo electrónico <span>*</span></label>
	    	<input type="email" class="form-control unicase-form-control text-input" placeholder="Ej. correo@gmail.com" id="email" pattern="^[^@]+@[^@]+\.[a-zA-Z]{2,}$" onBlur="userAvailability()" name="emailid" required >
	    	       <span id="user-availability-status1" style="font-size:12px;"></span>
	  	</div>

<div class="form-group">
	    	<label class="info-title" for="contactno">Teléfono/Celular. <span>*</span></label>
	    	<input type="tel" class="form-control unicase-form-control text-input" id="contactno" placeholder="Ej. 5555555555" maxlength="10" name="contactno" pattern="[\(]?[\+]?(\d{2}|\d{3})[\)]?[\s]?((\d{6}|\d{8})|(\d{3}[\*\.\-\s]){3}|(\d{2}[\*\.\-\s]){4}|(\d{4}[\*\.\-\s]){2})|\d{8}|\d{10}|\d{12}" required >
	  	</div>
		
<div class="form-group">
	    	<label class="info-title" for="contactno">Fecha de nacimiento. <span>*</span></label>
	    	<input type="date" class="form-control unicase-form-control text-input" id="nacimiento" name="nacimiento" required >
	  	</div>

<div class="form-group">
	    	<label class="info-title" for="password">Contraseña. <span>*</span></label>
	    	<input type="password" class="form-control unicase-form-control text-input" pattern="[A-Za-z][A-Za-z0-9]*[0-9][A-Za-z0-9]*"  maxlength="12" minlength="8" title="Una contraseña válida es un conjuto de caracteres, donde cada uno consiste de una letra mayúscula o minúscula, o un dígito. La contraseña debe empezar con una letra y contener al menor un dígito" id="password" name="password"  required >
			<span style='color:black'>Debe de empezar con una letra, tener una letra mayúscula o mínúscula, un dígito y una longitud de 8-12</span>
	  	</div>

<div class="form-group">
	    	<label class="info-title" for="confirmpassword">Confirmar contraseña. <span>*</span></label>
	    	<input type="password" class="form-control unicase-form-control text-input" pattern="[A-Za-z][A-Za-z0-9]*[0-9][A-Za-z0-9]*"  maxlength="12" minlength="8" title="Una contraseña válida es un conjuto de caracteres, donde cada uno consiste de una letra mayúscula o minúscula, o un dígito. La contraseña debe empezar con una letra y contener al menor un dígito" id="confirmpassword" name="confirmpassword" onBlur="validarPasswd()" required >
	  	</div>


	  	<button type="submit" name="submit" class="btn-upper btn btn-primary checkout-page-button" id="submit">Registrarse como cliente</button>
	</form>		
</div>
<!-- Sign-in -->

<!-- create a new account -->
<div class="col-md-6 col-sm-6 create-new-account">
	<h4 class="checkout-subtitle">Regístrate como proveedor</h4>
	<p class="text title-tag-line">Está opción está indicada para empresas que deseen vender sus productos.</p><br>
	<form class="register-form outer-top-xs" role="form" method="post" name="register" onSubmit="return valid();">
<div class="form-group">
	    	<label class="info-title" for="fullname">Nombre de la empresa <span>*</span></label>
	    	<input type="text" class="form-control unicase-form-control text-input" id="businessname" name="businessname" required="required">
	  	</div>


		<div class="form-group">
	    	<label class="info-title" for="exampleInputEmail2">Correo electrónico <span>*</span></label>
	    	<input type="email" class="form-control unicase-form-control text-input" placeholder="Ej. correo@gmail.com" id="email2" pattern="^[^@]+@[^@]+\.[a-zA-Z]{2,}$" onBlur="userAvailability()" name="emailid2" required >
	    	       <span id="user-availability-status1" style="font-size:12px;"></span>
	  	</div>

<div class="form-group">
	    	<label class="info-title" for="contactno">RFC. <span>*</span></label>
	    	<input type="text" class="form-control unicase-form-control text-input" pattern="/^[a-zA-Z]{3,4}(\d{6})((\D|\d){2,3})?$/" id="rfc" name="rfc" maxlength="13" required >
	  	</div>

<div class="form-group">
	    	<label class="info-title" for="password">Contraseña. <span>*</span></label>
	    	<input type="password" class="form-control unicase-form-control text-input" pattern="[A-Za-z][A-Za-z0-9]*[0-9][A-Za-z0-9]*"  maxlength="12" minlength="8" title="Una contraseña válida es un conjuto de caracteres, donde cada uno consiste de una letra mayúscula o minúscula, o un dígito. La contraseña debe empezar con una letra y contener al menor un dígito" id="password2" name="password2"  required >
			<span style='color:black'>Debe de empezar con una letra, tener una letra mayúscula o mínúscula, un dígito y una longitud de 8-12</span>
	  	</div>

<div class="form-group">
	    	<label class="info-title" for="confirmpassword">Confirmar contraseña. <span>*</span></label>
	    	<input type="password" class="form-control unicase-form-control text-input" pattern="[A-Za-z][A-Za-z0-9]*[0-9][A-Za-z0-9]*"  maxlength="12" minlength="8" title="Una contraseña válida es un conjuto de caracteres, donde cada uno consiste de una letra mayúscula o minúscula, o un dígito. La contraseña debe empezar con una letra y contener al menor un dígito" id="confirmpassword" name="confirmpassword" onBlur="validarPasswd()" required >
	  	</div>


	  	<button type="submit" name="submit2" class="btn-upper btn btn-primary checkout-page-button" id="submit2">Registrarse como proveedor</button>
	</form>
	<span class="checkout-subtitle outer-top-xs">Registrate ahora y obten nuestros beneficios :  </span>
	<div class="checkbox">
	  	<label class="checkbox">
		  	Rapidez y seguridad en tu forma de pagos.
		</label>
		<label class="checkbox">
		Seguimiento de pedidos.
		</label>
		<label class="checkbox">
			Revisa tu Historial de pedidos.
		</label>
	</div>
</div>	
<!-- create a new account -->			</div><!-- /.row -->
		</div>
<?php include('includes/brands-slider.php');?>
</div>
</div>
<?php include('includes/footer.php');?>
	<script src="assets/js/jquery-1.11.1.min.js"></script>
	
	<script src="assets/js/bootstrap.min.js"></script>
	
	<script src="assets/js/bootstrap-hover-dropdown.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>
	
	<script src="assets/js/echo.min.js"></script>
	<script src="assets/js/jquery.easing-1.3.min.js"></script>
	<script src="assets/js/bootstrap-slider.min.js"></script>
    <script src="assets/js/jquery.rateit.min.js"></script>
    <script type="text/javascript" src="assets/js/lightbox.min.js"></script>
    <script src="assets/js/bootstrap-select.min.js"></script>
    <script src="assets/js/wow.min.js"></script>
	<script src="assets/js/scripts.js"></script>

	<!-- For demo purposes – can be removed on production -->
	
	<script src="switchstylesheet/switchstylesheet.js"></script>
	
	<script>
		$(document).ready(function(){ 
			$(".changecolor").switchstylesheet( { seperator:"color"} );
			$('.show-theme-options').click(function(){
				$(this).parent().toggleClass('open');
				return false;
			});
		});

		$(window).bind("load", function() {
		   $('.show-theme-options').delay(2000).trigger('click');
		});
	</script>
	<!-- For demo purposes – can be removed on production : End -->

	

</body>
</html>
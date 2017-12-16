<!DOCTYPE html>
<html>
<head>
	<title>Catalogo</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="estilos.css"/>

</head>
<body>

	<!-- header -->
	<div class="row" id="fondos">
		<div class="col-xs-1 col-xs-offset-5"><img src="img/logo.png"></div>
		<div class="col-xs-2 col-xs-offset-4"><img src="img/telefono.png"></div>
	</div>

	<!-- menu -->
	<div class="container">
		<div class="col-xs-9">
			<div class="row">
				<div class="col-xs-2"><strong><a id="menu" href="#">BIENVENIDA</a></strong></div>
				<div class="col-xs-2"><strong><a id="menu" href="#">NOSOTROS</a></strong></div>
				<div class="col-xs-2"><strong><a id="menu" href="#">CATÁLOGO</a></strong></div>
				<div class="col-xs-2"><strong><a id="menu" href="#">GALERÍA</a></strong></div>
				<div class="col-xs-2"><strong><a id="menu" href="#">CONTÁCTENOS</a></strong></div>
			</div>
		</div>
		
		<div class="col-xs-3">
			<strong>SÍGUENOS EN </strong>
			<a href="#"><img src="img/social.png"></a>
		</div>
	</div>

	<!-- fondo -->
	<div class="row"><img src="img/fondo.png"></div>
	<div class="col-xs-12" style="height: 30px;"></div>

	<!-- catalogo -->
	<div class="container">
		
		<div class="col-xs-12 col-sm-4" style="padding: 30px;">
			<div class="col-xs-5 col-xs-offset-2" id="categoria"><b>CATEGORÍA</b></div>
			<div class="col-xs-12" style="height: 30px;"></div>
			<a href="#"><div class="col-xs-5 col-xs-offset-2" id="polo"><b>POLOS</b></div></a>
		</div>

		<div class="col-xs-12 col-sm-8">
			<?php

				$host = "localhost";
				$user = "root";
				$pass = "";
				$db = "catalogo";

				$conexion = mysqli_connect($host, $user, $pass, $db);
				$query = "select * from productos";

				$result = mysqli_query($conexion, $query);

				
				while($fila = mysqli_fetch_row($result)){
			?>
				<a href="#">
					<div class="col-xs-12 col-sm-6" id="producto">
						<img src="img/<?php echo $fila[3]; ?> " style="border: solid;">
						<b><?php echo $fila[1]; ?></b><br>
						<b><?php echo $fila[2]; ?></b>
					</div>					
				</a>
			<?php
				}

				mysqli_close($conexion);
			?>

		</div>
	</div>

	<!-- informacion -->
	<div class="container" id="informacion">
		<div class="col-xs-12"><b><h1 style="text-align: center;">INFORMACION</h1></b></div>

		<div class="col-xs-12 col-sm-6 col-md-3">
			<b><h5>JR. FRANCISCO DE ZELA 1009<br>
			JESÚS MARÍA - LIMA</h5></b>
		</div>
		<div class="col-xs-12 col-sm-6 col-md-3">
			<h5>CENTRAL TELEFÓNICA: 759 9971<br>
			CEL.: 931 176 849</h5>
		</div>
		<div class="col-xs-12 col-sm-6 col-md-3">
			<h5>consultas@cranevieux.pe<br>
			ventas@cranevieux.pe</h5>
		</div>
		<div class="col-xs-12 col-sm-6 col-md-3">
			<h5><img src="img/telefono2.png"><br>
			SÍGUENOS EN <img src="img/social.png"></h5>
		</div>
	</div>

	<div class="row" id="fondos">
		<a href="#" style="color: white;">DESARROLLADO POR MI</a>
	</div>

</body>
</html>
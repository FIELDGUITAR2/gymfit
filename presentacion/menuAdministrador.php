<?php
$id = $_SESSION["id"];
$admin = new Admin($id);
$admin->consultar();
$_SESSION["nombre"] = $admin->getNombre();
$_SESSION["apellido"] = $admin->getApellido();
?>

<div class="container py-5">

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="container-fluid">

		<a class="navbar-brand" href="?pid=<?php echo base64_encode("presentacion/inicio.php"); ?>">
			<img src="img/gymfit_logo.png" alt="logo" width="35" height="30" class="d-inline-block align-text-top">
			GymFit
		</a>

		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAdmin" aria-controls="navbarNavAdmin" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarNavAdmin">

			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item">
					<a class="nav-link active" href="?pid=<?php echo base64_encode("presentacion/sesionAdmin.php"); ?>">
						Inicio
					</a>
				</li>	
			
				<li class="nav-item">
					<a class="nav-link active" href="?pid=<?php echo base64_encode("presentacion/colaborador/consultarColaboradores.php"); ?>">
						Colaboradores
					</a>
				</li>

				<li class="nav-item">
					<a class="nav-link" href="?pid=<?php echo base64_encode("presentacion/gestionarUsuarios.php"); ?>">
						Usuarios
					</a>
				</li>

				<li class="nav-item">
					<a class="nav-link" href="?pid=<?php echo base64_encode("presentacion/gestionarPlanes.php"); ?>">
						Planes
					</a>
				</li>

				<li class="nav-item">
					<a class="nav-link" href="?pid=<?php echo base64_encode("presentacion/reportes.php"); ?>">
						Reportes
					</a>
				</li>
			</ul>

			<!-- Info administrador -->
			<ul class="navbar-nav">

				<li class="nav-item">
					<span class="nav-link">
						<b><?php echo $admin->getNombre() . " " . $admin->getApellido(); ?></b>
					</span>
				</li>

				<li class="nav-item">
					<a class="btn btn-danger ms-2" href="?pid=<?php echo base64_encode("presentacion/autenticar.php"); ?>&sesion=false">
						Cerrar Sesión
					</a>
				</li>

			</ul>

		</div>
	</div>
</nav>


</div>
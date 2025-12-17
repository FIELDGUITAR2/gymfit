<body>
	<!-- NAVBAR -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container">
			<a class="navbar-brand" href="#">GymFit</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarNav">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item"><a class="nav-link" href="#">Inicio</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Servicios</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Planes</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Contacto</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- HERO -->
	<header class="hero text-dark text-center">
		<h1>Bienvenido a GymFit</h1>
		<p class="lead">Convierte tu energía en resultados</p>
		<a href="#" class="btn btn-hero btn-lg mt-3">Únete Ahora</a>
	</header>

	<div id="carouselGymFit" class="carousel slide" data-bs-ride="carousel">

		<!-- Indicadores -->
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselGymFit" data-bs-slide-to="0" class="active"></button>
			<button type="button" data-bs-target="#carouselGymFit" data-bs-slide-to="1"></button>
			<button type="button" data-bs-target="#carouselGymFit" data-bs-slide-to="2"></button>
		</div>

		<!-- Imágenes del carrusel -->
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/gym6.jpg" class="d-block w-100" alt="Gimnasio">
				<div class="carousel-caption d-none d-md-block">
					<h5>Entrenamiento Personalizado</h5>
					<p>Rutinas para cada objetivo.</p>
				</div>
			</div>

			<div class="carousel-item">
				<img src="img/gym2.webp" class="d-block w-100" alt="Pesas">
				<div class="carousel-caption d-none d-md-block">
					<h5>Equipos Modernos</h5>
					<p>La mejor tecnología para tu progreso.</p>
				</div>
			</div>

			<div class="carousel-item">
				<img src="img/gym4.jpeg" class="d-block w-100" alt="Clases">
				<div class="carousel-caption d-none d-md-block">
					<h5>Clases Grupales</h5>
					<p>Ambiente motivador y energético.</p>
				</div>
			</div>
		</div>

		<!-- Controles -->
		<button class="carousel-control-prev" type="button" data-bs-target="#carouselGymFit" data-bs-slide="prev">
			<span class="carousel-control-prev-icon"></span>
		</button>

		<button class="carousel-control-next" type="button" data-bs-target="#carouselGymFit" data-bs-slide="next">
			<span class="carousel-control-next-icon"></span>
		</button>

	</div>


	<!-- SECCIÓN -->
	<section class="container py-5">
		<h2 class="text-center mb-4">¿Por qué elegirnos?</h2>
		<p class="text-center fs-5">
			En GymFit encontrarás equipos de última generación, entrenadores certificados,
			clases dinámicas y un ambiente motivador para alcanzar tu mejor versión.
		</p>

		<div class="row text-center mt-4">
			<div class="col-md-4">
				<h4>⚡ Entrenamiento Personalizado</h4>
				<p>Planes hechos para ti según tus objetivos y nivel.</p>
			</div>
			<div class="col-md-4">
				<h4>🏋️ Equipos Modernos</h4>
				<p>Instalaciones con tecnología de punta.</p>
			</div>
			<div class="col-md-4">
				<h4>🔥 Clases Grupales</h4>
				<p>Ambiente motivador y rutinas intensas.</p>
			</div>
		</div>
	</section>

	<footer class="bg-dark text-center text-white py-3">
		<p class="m-0">© 2025 GymFit. Todos los derechos reservados.</p>
	</footer>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
	</script>
</body>
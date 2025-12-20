<body class="bg-light">

    <div class="container py-5">
        <div class="row justify-content-center">

            <div class="col-12 col-sm-10 col-md-6 col-lg-4">

                <div class="card shadow border-0">
                    <a href="?pid=<?php echo base64_encode('presentacion/inicio.php') ?>" class="text-center mt-4">
                        <img class="card-img-top d-none d-sm-block" src="img/gymfit_logo.png" alt="Logo">
                    </a>
                    

                    <div class="card-body">

                        <h4 class="card-title text-center mb-4">Autenticar</h4>

                        <form action="" method="post">

                            <div class="mb-3">
                                <label for="usuario" class="form-label">Usuario</label>
                                <input type="email" class="form-control" id="usuario" name="usuario" required>
                            </div>

                            <div class="mb-3">
                                <label for="contrasena" class="form-label">Contraseña</label>
                                <input type="password" class="form-control" id="contrasena" name="contrasena" required>
                            </div>

                            <button type="submit" class="btn btn-secondary w-100 mb-3">
                                Iniciar sesión
                            </button>

                            <div class="text-center text-muted">
                                <a href="#" class="text-decoration-none">
                                    Crear cuenta
                                </a>
                            </div>

                        </form>

                    </div>
                </div>

            </div>

        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
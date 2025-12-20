<?php
    if(isset($_POST['autenticar'])){
        $correo = $_POST['correo'];
        $clave = $_POST['clave'];
        echo "correo: " . $correo . " clave: " . $clave;
        $admin = new Admin(0, "", "", $correo, $clave);
        if($admin->autenticar())
        {
            $_SESSION["id"] = $admin->getId();
            $_SESSION["rol"] = "admin";
            header('Location: ?pid=' . base64_encode("presentacion/sesionAdmin.php"));
        } else {
            echo "<script>alert('Credenciales incorrectas');</script>";
        }

    }

?>

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

                        <form action="?pid=<?php echo base64_encode('presentacion/autenticar.php') ?>" method="post">

                            <div class="mb-3">
                                <label for="correo" class="form-label">Usuario</label>
                                <input type="email" class="form-control" id="correo" name="correo" required>
                            </div>

                            <div class="mb-3">
                                <label for="clave" class="form-label">Contraseña</label>
                                <input type="password" class="form-control" id="clave" name="clave" required>
                            </div>

                            <button type="submit" class="btn btn-secondary w-100 mb-3" name="autenticar">
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
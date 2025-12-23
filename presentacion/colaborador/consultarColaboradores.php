<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');

if ($_SESSION["rol"] != "admin") {
    header('Location: ?pid=' . base64_encode("noAutorizado.php"));
}
?>

<body>
    <?php
    include('presentacion/encabezado.php');
    include("presentacion/menuAdministrador.php");
    ?>
    <div
        class="container">
        <div
            class="row justify-content-center align-items-center g-2">
            <div class="col">
                <div class="card text-start">
                    <div class="card-body">
                        <h4 class="card-title">Colaboradores</h4>
                        <p class="card-text">
                        <div
                            class="table-responsive">
                            <table
                                class="table table-primary">
                                <thead>
                                    <tr>
                                        <th scope="col">Id Colaborador</th>
                                        <th scope="col">Nombres</th>
                                        <th scope="col">Apellidos</th>
                                        <th scope="col">Correo</th>
                                        <th scope="col">Telefono</th>
                                        <th scope="col">Direccion</th>
                                        <th scope="col">Salario</th>
                                        <th scope="col">Opciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $colaboradores = $controladorColaborador->consultarColaboradores();
                                    ?>

                                </tbody>
                            </table>
                        </div>
                        </p>
                    </div>
                </div>


            </div>
        </div>

    </div>



</body>
<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');

if (!isset($_SESSION["id"])) {
    header("Location: login.php");
    exit();
}

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
                            <table class="table table-primary">
                                <thead>
                                    <tr>
                                        <th scope="col">Id Colaborador</th>
                                        <th scope="col">Nombres</th>
                                        <th scope="col">Apellidos</th>
                                        <th scope="col">Correo</th>
                                        <th scope="col">Telefono</th>
                                        <th scope="col">Direccion</th>
                                        <th scope="col">Estado</th>
                                        <th scope="col">Salario</th>
                                        <th scope="col">Opciones</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <?php
                                    $colaborador = new Colaborador();
                                    $colaboradores = $colaborador->consultarLista();

                                    foreach ($colaboradores as $colaboradorActual) {

                                        $modalId = "modal" . $colaboradorActual->getId();

                                        echo "<tr>";
                                        echo "<td>" . $colaboradorActual->getId() . "</td>";
                                        echo "<td>" . $colaboradorActual->getNombre() . "</td>";
                                        echo "<td>" . $colaboradorActual->getApellido() . "</td>";
                                        echo "<td>" . $colaboradorActual->getCorreo() . "</td>";
                                        echo "<td>" . $colaboradorActual->getTelefono() . "</td>";
                                        echo "<td>" . $colaboradorActual->getDireccion() . "</td>";
                                        echo "<td>" . $colaboradorActual->getEstado() . "</td>";
                                        echo "<td>" . $colaboradorActual->getSalario() . "</td>";
                                        echo "<td>
                                                <button type='button' class='btn btn-primary' 
                                                    data-bs-toggle='modal' data-bs-target='#$modalId'>
                                                    Editar
                                                </button>
                                              </td>";
                                        echo "</tr>";
                                        // Modal único por colaborador
                                        echo "
                                                <div class='modal fade' id='$modalId' tabindex='-1'>
                                                    <div class='modal-dialog'>
                                                        <div class='modal-content'>

                                                            <div class='modal-header'>
                                                                <h5 class='modal-title'>Editar Colaborador #" . $colaboradorActual->getId() . "</h5>
                                                                <button type='button' class='btn-close' data-bs-dismiss='modal'></button>
                                                            </div>

                                                            <div class='modal-body'>
                                                                <p>Aquí va el formulario de edición.</p>
                                                            </div>

                                                            <div class='modal-footer'>
                                                                <button type='button' class='btn btn-secondary' data-bs-dismiss='modal'>Cerrar</button>
                                                                <button type='button' class='btn btn-primary'>Guardar cambios</button>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                                ";
                                    }
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
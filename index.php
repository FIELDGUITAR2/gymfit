<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');

session_start();

require ("logica/Admin.php");
require ("logica/Colaborador.php");
require ("logica/Usuario.php");
/*
require ("logica/Especialidad.php");
*/

?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>GymFit</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- FontAwesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">

    <!-- jQuery (solo una vez) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>

    <!-- Bootstrap JS + Popper -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Google Charts -->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

    <style>
        #carruselPaisajes .carousel-item img {
            height: 420px;
            object-fit: cover;
        }

        .hero {
            background: url('gym.jpg') center/cover no-repeat;
            height: 450px;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            color: white;
            text-shadow: 2px 2px 4px black;
        }

        .hero h1 {
            font-size: 4rem;
        }

        .btn-hero {
            background: #ff3b3b;
            color: #fff;
        }

        .btn-hero:hover {
            background: #d82f2f;
            color: #fff;
        }

        .carousel-inner img {
            height: 450px;
            /* Ajusta la altura */
            object-fit: cover;
            /* Hace que la imagen no se deforme */
            width: 100%;
            /* Ocupa todo el ancho */
            /*quien sabe*/
        }
    </style>

</head>

<?php

$paginas_sin_autenticacion = array(
    "presentacion/autenticar.php",
    "presentacion/inicio.php",
    "presentacion/cerrar.php"
);

$paginas_con_autenticacion = array(

    "presentacion/sesionAdmin.php",
    "presentacion/colaborador/consultarColaboradores.php",
    /*"presentacion/sesionMedico.php",
    "presentacion/sesionPaciente.php",
    "presentacion/cita/consultarCita.php",
    "presentacion/paciente/buscarPaciente.php",
    "presentacion/medico/editarFotoPerfil.php",*/);


if (!isset($_GET["pid"])) {
    include("presentacion/inicio.php");
} else {

    $pid = base64_decode($_GET["pid"]);
    if (in_array($pid, $paginas_sin_autenticacion)) {
        include $pid;
    } else if (in_array($pid, $paginas_con_autenticacion)) {
        if (!isset($_SESSION["id"])) {
            include "presentacion/autenticar.php";
        } else {
            include $pid;
        }
    } else {
        echo "error 404";
    }
}
?>

</html>
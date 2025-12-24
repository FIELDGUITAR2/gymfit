<?php

error_reporting(E_ALL);
ini_set('display_errors', '1');

if (!isset($_SESSION["id"])) {
    header("Location: login.php");
    exit();
}

$id = $_SESSION["id"];

if ($_SESSION["rol"] != "admin") {
    header('Location: ?pid=' . base64_encode("noAutorizado.php"));
}
?>

<body>
    <?php include('presentacion/encabezado.php'); ?>
    <?php include 'presentacion/menuAdministrador.php'; ?>
    <div
        class="container">
        <div
            class="row justify-content-center align-items-center g-2">
            <div class="col-7">
                <div class="card text-start">
                    <div class="card-body">
                        <h4 class="card-title">Clientes este mes</h4>
                        <p class="card-text">Body</p>
                    </div>
                </div>
                
            </div>
            <div class="col-5">
                <div class="card text-start">
                    <img class="card-img-top" src="holder.js/100px180/" alt="Title" />
                    <div class="card-body">
                        <h4 class="card-title">Title</h4>
                        <p class="card-text">Body</p>
                    </div>
                </div>
                
            </div>
            
        </div>

    </div>

</body>
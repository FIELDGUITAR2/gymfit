<?php

error_reporting(E_ALL);
ini_set('display_errors', '1');

$id = $_SESSION["id"];
if ($_SESSION["rol"] != "admin") {
    header('Location: ?pid=' . base64_encode("noAutorizado.php"));
}

echo "inicio admin";
?>
<body>
<?php include 'presentacion/menuAdministrador.php'; ?>
<!-- otros jaja -->
</body>
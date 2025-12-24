<?php
    session_start();
    session_unset();   // Elimina variables de sesión
    session_destroy(); // Destruye la sesión completa

    header("Location: ?pid= ".base64_encode('presentacion/inicio.php')." "); // Redirige al login
    exit();
?>
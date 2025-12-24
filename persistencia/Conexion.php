<?php

class Conexion
{
    private $conexion;
    private $resultado;

    public function abrir()
{
    // Detecta si estás usando XAMPP (localhost)
    if ($_SERVER['HTTP_HOST'] == "localhost" || $_SERVER['HTTP_HOST'] == "127.0.0.1") {
        $this->conexion = new mysqli("localhost", "root", "", "gymfit");
    } else {
        // Producción (InfinityFree)
        $this->conexion = new mysqli(
            "sql211.infinityfree.com",
            "if0_40714857",
            "q0Lbvh0J8K",
            "if0_40714857_gymfit"
        );
    }

    // Mostrar error si falla
    if ($this->conexion->connect_error) {
        die("Error conexión: " . $this->conexion->connect_error);
    }
}


    public function cerrar()
    {
        $this->conexion->close();
    }

    public function ejecutar($sentencia)
    {
        $this->resultado = $this->conexion->query($sentencia);
    }

    public function registro()
    {
        return $this->resultado->fetch_row();
    }

    public function filas()
    {
        return $this->resultado->num_rows;
    }
}

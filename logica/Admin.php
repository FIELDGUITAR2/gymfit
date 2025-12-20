<?php
require_once("persistencia/Conexion.php");
require_once("logica/Persona.php");
require_once("persistencia/AdminDAO.php");

class Admin extends Persona
{

    private $qr;
    private $telefono;
    private $foto;

    public function __construct($id = 0, $nombre = "", $apellido = "", $correo = "", $clave = "", $telefono = "", $qr = "", $foto = "")
    {
        parent::__construct($id, $nombre, $apellido, $correo, $clave);
        $this->telefono = $telefono;
        $this->qr = $qr;
        $this->foto = $foto;
    }


    /**
     * Get the value of qr
     */
    public function getQr()
    {
        return $this->qr;
    }

    /**
     * Set the value of qr
     *
     * @return  self
     */
    public function setQr($qr)
    {
        $this->qr = $qr;

        return $this;
    }

    /**
     * Get the value of telefono
     */
    public function getTelefono()
    {
        return $this->telefono;
    }

    /**
     * Set the value of telefono
     *
     * @return  self
     */
    public function setTelefono($telefono)
    {
        $this->telefono = $telefono;

        return $this;
    }

    /**
     * Get the value of foto
     */
    public function getFoto()
    {
        return $this->foto;
    }

    /**
     * Set the value of foto
     *
     * @return  self
     */
    public function setFoto($foto)
    {
        $this->foto = $foto;

        return $this;
    }

    public function autenticar()
    {
        $conexion = new Conexion();
        $adminDAO = new AdminDAO(
            "",
            "",
            "",
            $this->getCorreo(),
            $this->getClave()
        );
        $conexion->abrir();
        $conexion->ejecutar($adminDAO->autenticar());
        if ($conexion->filas() > 0) {
            $registro = $conexion->registro();
            $this->setId($registro[0]);
            $conexion->cerrar();
            return true;
        } else {
            $conexion->cerrar();
            return false;
        }
    }
    public function consultar()
    {
        $conexion = new Conexion();
        $adminDAO = new AdminDAO(
            $this->getId()
        );
        $conexion->abrir();
        $conexion->ejecutar($adminDAO->consultar());
        if ($conexion->filas() > 0) {
            $registro = $conexion->registro();
            $this->setNombre($registro[0]);
            $this->setApellido($registro[1]);
            $conexion->cerrar();
            return true;
        } else {
            $conexion->cerrar();
            return false;
        }
    }
    //hola

}

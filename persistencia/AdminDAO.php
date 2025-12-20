<?php
class AdminDAO {
    private $id;
    private $nombre;
    private $apellido;
    private $correo;
    private $clave;
    private $telefono;
    private $qr;
    private $foto;

    public function __construct($id=0, $nombre="", $apellido="", $correo="", $clave="", $telefono="", $qr="", $foto=""){
        $this->id = $id;
        $this->nombre = $nombre;
        $this->apellido = $apellido;
        $this->correo = $correo;
        $this->clave = $clave;
        $this->telefono = $telefono;
        $this->qr = $qr;
        $this->foto = $foto;
    }

    public function autenticar()
    {
        return "select id_admin from admin where correo = '".$this->correo."' and clave = md5('".$this->clave."');";
    }

    public function consultar()
    {
        return "select nombre, apellido from admin where id_admin = " . $this->id . ";";
    }
}


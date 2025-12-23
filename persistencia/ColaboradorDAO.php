<?php
require_once("logica/Persona.php");
class ColaboradorDAO extends Persona
{
    private $salario;
    private $telefono;
    private $direccion;
    private $foto;
    private $estado;
    private $tip_id;
    private $numero_id;

    public function __construct($id = "", $nombre = "", $apellido = "", $correo = "", $clave = "", $salario = 0, $telefono = "", $direccion = "", $foto = "", $estado = "", $tip_id = "", $numero_id = "")
    {
        parent::__construct($id, $nombre, $apellido, $correo, $clave);
        $this->salario = $salario;
        $this->telefono = "";
        $this->direccion = "";
        $this->foto = "";
        $this->estado = "";
        $this->tip_id = "";
        $this->numero_id = "";
    }

    public function getTelefono()
    {
        return $this->telefono;
    }

    public function setTelefono($telefono)
    {
        $this->telefono = $telefono;
    }

    public function getDireccion()
    {
        return $this->direccion;
    }

    public function setDireccion($direccion)
    {
        $this->direccion = $direccion;
    }

    public function getFoto()
    {
        return $this->foto;
    }

    public function setFoto($foto)
    {
        $this->foto = $foto;
    }

    public function getEstado()
    {
        return $this->estado;
    }

    public function setEstado($estado)
    {
        $this->estado = $estado;
    }

    public function getTip_id()
    {
        return $this->tip_id;
    }

    public function setTip_id($tip_id)
    {
        $this->tip_id = $tip_id;
    }

    public function getNumero_id()
    {
        return $this->numero_id;
    }

    public function setNumero_id($numero_id)
    {
        $this->numero_id = $numero_id;
    }

    public function getSalario()
    {
        return $this->salario;
    }

    public function setSalario($salario)
    {
        $this->salario = $salario;
    }

    public function consultarLista()
    {
        return "select 
                c.id_colaborador,
                c.nombre,
                c.apellido,
                c.correo,
                c.telefono,
                c.salario,
                c.direccion,
                c.n_identificacion,
                ti.nombre as `tipo id`,
                ec.nombre as estado,
                c.foto
                from
                colaborador c
                INNER JOIN 
                estado_colaborador ec on c.id_estado_colaborador = ec.id_estado_colaborador
                INNER JOIN
                tipo_id ti on c.id_tipo_id = ti.id_tipo";
    }
}

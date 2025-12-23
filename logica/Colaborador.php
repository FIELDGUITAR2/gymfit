<?php
    require_once('persistencia/Conexion.php');
    require_once("persistencia/ColaboradorDAO.php");
    require_once("logica/Persona.php");
    class Colaborador extends Persona {
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
            $this->telefono = $telefono;
            $this->direccion = $direccion;
            $this->foto = $foto;
            $this->estado = $estado;
            $this->tip_id = $tip_id;
            $this->numero_id = $numero_id;
        }

        public function getTelefono() {
            return $this->telefono;
        }

        public function setTelefono($telefono) {
            $this->telefono = $telefono;
        }

        public function getDireccion() {
            return $this->direccion;
        }

        public function setDireccion($direccion) {
            $this->direccion = $direccion;
        }

        public function getFoto() {
            return $this->foto;
        }

        public function setFoto($foto) {
            $this->foto = $foto;
        }

        public function getEstado() {
            return $this->estado;
        }

        public function setEstado($estado) {
            $this->estado = $estado;
        }

        public function getTip_id() {
            return $this->tip_id;
        }

        public function setTip_id($tip_id) {
            $this->tip_id = $tip_id;
        }

        public function getNumero_id() {
            return $this->numero_id;
        }

        public function setNumero_id($numero_id) {
            $this->numero_id = $numero_id;
        }

        public function getSalario() {
            return $this->salario;
        }

        public function setSalario($salario) {
            $this->salario = $salario;
        }

        public function consultarLista()
        {
            $conexion = new Conexion;
            $colaboradorDAO = new ColaboradorDAO();
            $conexion->abrir();
            $conexion->ejecutar($colaboradorDAO->consultarLista());
            $colaboradores = array();
            while (($resultado = $conexion->registro()) != null) {
                $colaborador = new Colaborador(
                    $resultado[0], 
                    $resultado[1], 
                    $resultado[2], 
                    $resultado[3], 
                    "", 
                    $resultado[5], 
                    $resultado[4],
                    $resultado[6], 
                    $resultado[10], 
                    $resultado[9], 
                    $resultado[8], 
                    $resultado[7]);
                array_push($colaboradores, $colaborador);
            }
            $conexion->cerrar();
            return $colaboradores;
        }
    }
?>
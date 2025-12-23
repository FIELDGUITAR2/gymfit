<?php
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
            $this->telefono = "";
            $this->direccion = "";
            $this->foto = "";
            $this->estado = "";
            $this->tip_id = "";
            $this->numero_id = "";
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
    }
?>
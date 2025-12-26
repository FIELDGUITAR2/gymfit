<?php

    require_once ('logica/Persona.php');
        class UsuarioDAO extends Persona{
        private $deuda;
        private $foto;
        private $estado;
        private $tipo_id;
        private $meses_mora;
        private $n_id;
        private $qr;
        private $telefono;
        public function __construct($id = "", $nombre = "", $apellido = "", $correo = "", $clave = "")
        {
            parent::__construct($id, $nombre, $apellido, $correo, $clave);

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
         * Get the value of n_id
         */ 
        public function getN_id()
        {
                return $this->n_id;
        }

        /**
         * Set the value of n_id
         *
         * @return  self
         */ 
        public function setN_id($n_id)
        {
                $this->n_id = $n_id;

                return $this;
        }

        /**
         * Get the value of meses_mora
         */ 
        public function getMeses_mora()
        {
                return $this->meses_mora;
        }

        /**
         * Set the value of meses_mora
         *
         * @return  self
         */ 
        public function setMeses_mora($meses_mora)
        {
                $this->meses_mora = $meses_mora;

                return $this;
        }

        /**
         * Get the value of tipo_id
         */ 
        public function getTipo_id()
        {
                return $this->tipo_id;
        }

        /**
         * Set the value of tipo_id
         *
         * @return  self
         */ 
        public function setTipo_id($tipo_id)
        {
                $this->tipo_id = $tipo_id;

                return $this;
        }

        /**
         * Get the value of estado
         */ 
        public function getEstado()
        {
                return $this->estado;
        }

        /**
         * Set the value of estado
         *
         * @return  self
         */ 
        public function setEstado($estado)
        {
                $this->estado = $estado;

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

        /**
         * Get the value of deuda
         */ 
        public function getDeuda()
        {
                return $this->deuda;
        }

        /**
         * Set the value of deuda
         *
         * @return  self
         */ 
        public function setDeuda($deuda)
        {
                $this->deuda = $deuda;

                return $this;
        }

        public function consultarPorNombre()
        {

        }
    }
?>
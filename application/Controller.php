<?php

abstract class Controller
{
    protected $_view;
    protected $_modelo;


    public function __construct() {
        $this->_modelo = $this->loadModel('modulo');
        $this->_modeloalert = $this->loadModel('alertas');
        $idperfil = 9999;
        if(session::get('autenticado')){
            $idperfil = session::get('level');
        }
//        die($idperfil);
        $menu = $this->_modelo->menu($idperfil);
        $alerta = $this->_modeloalert->alertas();
//        echo "<pre>";print_r($alerta); exit;
        $this->_view = new View(new request, $menu, $alerta);
    }

        abstract public function index();
        
        protected function loadModel($modelo){
            $modelo = $modelo . 'Model';
            $rutaModelo = ROOT . 'models' . DS . $modelo . '.php';
            
            if(is_readable($rutaModelo)){
                require_once $rutaModelo;
                $modelo = new $modelo;
                return $modelo;
            }
            else{
                throw new Exception('Error del Modelo');
            }
        }
        
        public function acceso() {
            if (!session::get('autenticado')) {
                header('location:' . BASE_URL );
                exit;
            }
            $url = explode("/",$_SERVER["REQUEST_URI"]);
            $url = $url[2];
            $permisos = $this->loadModel('permiso');
            $idperfil= session::get('level');
//	    echo $idperfil;
            $permiso = $permisos->valida_acceso($idperfil,$url);
    //        print_r($permiso);exit;
            if ($permiso[0]['id_perfil']!=session::get('level')) {
                return false;
            } else {
                return true;
            }
        }
	
	protected function get_Libreria($libreria) {
	    //ruta 
	    $rutaLibreria = ROOT . 'libs' . DS . $libreria . '.php';
	    //verificamos si existe y es legible
	    if (is_readable($rutaLibreria)) {
		require_once $rutaLibreria;
	    } else {
		throw new Exception('Error de libreria');
	    }
	}
        
        protected function getTexto($dato){
            if(isset($_POST[$dato]) && !empty($_POST[$dato])){
                $_POST[$dato] = htmlspecialchars($_POST[$dato], ENT_QUOTES);
                return $_POST[$dato];
            }
            
            return '';
        }
        
        protected function getInt($dato){
           if(isset($_POST[$dato]) && !empty($_POST[$dato])){
                $_POST[$dato] = filter_input(INPUT_POST, $dato, FILTER_VALIDATE_INT);
                return $_POST[$dato];
            }
            
            return 0; 
        }
        
        protected function getFecha($dato) {
            if(isset($_POST[$dato])){
                $dia = substr($_POST[$dato], 0, 2);
                $mes = substr($_POST[$dato], 3, 2);
                $anio = substr($_POST[$dato], 6, 4);
                $fecha = $anio . "-" . $mes . "-" . $dia;
                return $fecha;
            }
            return 0000-00-00;
        }
        
        protected function getFechaES($dato) {
            if(isset($dato)){
                $dia = substr($dato, 8, 2);
                $mes = substr($dato, 5, 2);
                $anio = substr($dato, 0, 4);
                $fecha = $dia . "-" . $mes . "-" . $anio;
                return $fecha;
            }
            return 00-00-0000;
        }
        
        protected function getEstado($dato){
            if(isset($_POST[$dato])){
                $_POST[$dato] = 1;
                return $_POST[$dato];
            }
            return 0;
        }

                protected function redireccionar($ruta = false){
            if($ruta){
                header('location:' . BASE_URL . $ruta);
                exit;
            }
            else{
                header('location:' . BASE_URL);
                exit;
            }
        }
        
        protected function filtarInt($int){
            $int = (int) $int;
            if(is_int($int)){
                return $int;
            }
            else {
                return 0;
            }
        }
        
        protected function getSql($clave)
    {
        if(isset($_POST[$clave]) && !empty($_POST[$clave])){
            $_POST[$clave] = strip_tags($_POST[$clave]);
            
            if(!get_magic_quotes_gpc()){
                $_POST[$clave] = mysql_escape_string($_POST[$clave]);
            }
            
            return trim($_POST[$clave]);
        }
    }
    
    protected function getAlphaNum($clave)
    {
        if(isset($_POST[$clave]) && !empty($_POST[$clave])){
            $_POST[$clave] = (string) preg_replace('/[^A-Z0-9_]/i', '', $_POST[$clave]);
            return trim($_POST[$clave]);
        }
        
    }
}

?>

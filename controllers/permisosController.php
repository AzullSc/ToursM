<?php

class permisosController extends Controller{
    
    private $_permiso;

    public function __construct() {
        if (!$this->acceso()) {
            $this->redireccionar('error/access/5050');
        }
        parent::__construct();
        $this->_permiso = $this->loadModel('permiso');
        $this->_perfil = $this->loadModel('perfil');
        $this->_modulo = $this->loadModel('modulo');
    }
    
    public function index() {
        
        $this->_view->titulo = 'Permisos';
        $this->_view->principal = 'Permisos';
	$this->_view->perfiles = $this->_perfil->getPerfil();
	$this->_view->modulos = $this->_modulo->getModulo();
	$this->_view->setJs(array('permisos'));
        $this->_view->renderizar('index');
    }
    
    public function get_permisos(){
	$idperfil = $_POST['idperfil'];
        echo json_encode($this->_permiso->getPermiso($idperfil));
    }
    
    public function inserta_permiso(){
	$idperfil = $_POST['idperfil'];
	$idmodulo = $_POST['idmodulo'];
        $this->_permiso->eliminaPermiso($idperfil,$idmodulo);
        $this->_permiso->insertaPermiso($idperfil,$idmodulo);
    }
    
    public function elimina_permiso(){
	$idperfil = $_POST['idperfil'];
	$idmodulo = $_POST['idmodulo'];
        $this->_permiso->eliminaPermiso($idperfil,$idmodulo);
    }
    
}

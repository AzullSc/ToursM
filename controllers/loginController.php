<?php

class loginController extends Controller
{
    
    private $_login;

    public function __construct(){
        parent::__construct();
        $this->_login = $this->loadModel('login');
    }
    
    public function index()
    {
        $this->_view->titulo = 'Iniciar Sesion';
//        die($_POST['guardar']);
        if(isset($_POST['guardar']) && $_POST['guardar']==1){
            $this->datos = $_POST;
                      
            $row = $this->_login->validar(
                $_POST['usuario'],
                $_POST['clave']
            );
                       
            Session::set('autenticado', true);
            Session::set('level', $row['id_perfil']);
            Session::set('perfil', $row['perfil']);
            Session::set('usuario', $row['usuario']);
            Session::set('id_usuario', $row['bibliotecario_ID']);
            
            $this->redireccionar('inicio');
        }
        
        $this->_view->renderizar_web('index');
        
    }
        
    public function cerrar()
    {
        Session::destroy();
        $this->redireccionar();
    }
}

?>

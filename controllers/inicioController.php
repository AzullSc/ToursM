<?php


class inicioController extends Controller
{
    public function __construct() {
        parent::__construct();
    }

        public function index()
    {      
            
            $this->_view->titulo = 'Principal';
            $this->_view->principal ='Bienvenido';
            $this->_view->renderizar('index','inicio');
    }
}

?>
<?php

class indexController extends Controller {
    public function __construct() {
        parent::__construct();
    }
    
    public function index() {
        $this->_view->titulo = 'Portal Web';
            $this->_view->principal ='pagina';
            $this->_view->renderizar_web('index');
    }
}

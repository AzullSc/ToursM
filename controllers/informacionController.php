<?php
class informacionController extends Controller{
     public function __construct() {
        parent::__construct();
    }
    
        public function index()
    {      
            
            $this->_view->titulo = 'Informacion Bsica';
            $this->_view->renderizar_web('index','informacion');
    }
    
}

?>

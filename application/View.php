<?php

    class View
{
    private $_controlador;
    private $_js;
    private $_menu;


    public function __construct(Request $peticion, $menu, $alerta) {
        $this->_controlador = $peticion->getControlador();
        $this->_menu = $menu;
        $this->_alerta = $alerta;
        $this->_js = array();
    }
   
    public function renderizar($vista, $item = false)
    {
        /*
        $menuweb=array(
            array(
                'id'=>'index',
                'titulo'=>'Bienvenidos',
                'enlace'=> BASE_URL
            ),
            array(
                'id'=>'index',
                'titulo'=>'Conocenos',
                'enlace'=> BASE_URL.'conocenos'
            ) ,
            array(
                'id'=>'index',
                'titulo'=>'Galeria',
                'enlace'=> BASE_URL.'galeria'
            ),
            array(
                'id'=>'index',
                'titulo'=>'Catalogo',
                'enlace'=> BASE_URL.'catalogo'
            ),
            array(
                'id'=>'index',
                'titulo'=>'Contactenos',
                'enlace'=> BASE_URL.'contactenos'
            )
        );*/
            
        $js = array();
        
        if(count($this->_js)){
            $js = $this->_js;
        }
        
        $_params = array(
            'ruta_css' => BASE_URL . 'views/layout/' . DEFAULT_LAYOUT . '/css/',
            'ruta_img' => BASE_URL . 'views/layout/' . DEFAULT_LAYOUT . '/img/',
            'ruta_js' => BASE_URL . 'views/layout/' . DEFAULT_LAYOUT . '/js/',
            'js'=>$js,

            //'menuweb'=>$menuweb
        );
        
        $rutaView = ROOT . 'views' . DS . $this->_controlador . DS . $vista . '.php';
        
        if(is_readable($rutaView)){
            include_once ROOT . 'views'. DS . 'layout' . DS . DEFAULT_LAYOUT . DS . 'header.php';
            include_once ROOT . DS . 'alerta.php';
            new alerta($this->_alerta);
            include_once ROOT . DS . 'menu.php';
            new menu($this->_menu);
            include_once $rutaView;
            include_once ROOT . 'views'. DS . 'layout' . DS . DEFAULT_LAYOUT . DS . 'footer.php';
        } 
        else {
            throw new Exception('Error de vista');
        }
    }
    
    public function renderizar_web($vista, $item = false)
    {/*
        $menuweb=array(
            array(
                'id'=>'index',
                'titulo'=>'Bienvenidos',
                'enlace'=> BASE_URL
            ),
            array(
                'id'=>'index',
                'titulo'=>'Conocenos',
                'enlace'=> BASE_URL.'conocenos'
            ) ,
            array(
                'id'=>'index',
                'titulo'=>'Galeria',
                'enlace'=> BASE_URL.'galeria'
            ),
            array(
                'id'=>'catalogo',
                'titulo'=>'Catalogo',
                'enlace'=> BASE_URL.'catalogo'
            ),
            array(
                'id'=>'index',
                'titulo'=>'Contactenos',
                'enlace'=> BASE_URL.'contactenos'
            )
        );
        */
        $menucate=array(
            array(
                'id'=>'sintesis',
                'titulo'=>'Sintesis Historica',
                'enlace'=> BASE_URL.'historia'
            ),
            array(
                'id'=>'mision',
                'titulo'=>'Mision',
                'enlace'=> BASE_URL.'mision'
            ),
            array(
                'id'=>'vision',
                'titulo'=>'Vision',
                'enlace'=> BASE_URL.'vision'
            ),
            array(
                'id'=>'informacion',
                'titulo'=>'Informacion Basica',
                'enlace'=> BASE_URL.'informacion'
            ),
            array(
                'id'=>'organigrama',
                'titulo'=>'Organigrama',
                'enlace'=> BASE_URL.'organigrama'
            )
        );
        $js = array();
        
        if(count($this->_js)){
            $js = $this->_js;
        }
        
        $_layoutParams = array(
            'ruta_css' => BASE_URL . 'views/layout/' . DEFAULT_LAYOUT . '/css/',
            'ruta_img' => BASE_URL . 'views/layout/' . DEFAULT_LAYOUT . '/img/',
            'ruta_js' => BASE_URL . 'views/layout/' . DEFAULT_LAYOUT . '/js/',
            'js'=>$js,
            'menuweb'=>$menuweb,
            'menucate'=>$menucate
        );
        
        $rutaView = ROOT . 'views' . DS . $this->_controlador . DS . $vista . '.php';
        
        if(is_readable($rutaView)){
            include_once ROOT . 'views'. DS . 'layout' . DS . 'web' . DS . 'header.php';
            include_once $rutaView;
            include_once ROOT . 'views'. DS . 'layout' . DS . 'web' . DS . 'footer.php';
        } 
        else {
            throw new Exception('Error de vista');
        }
    }
   

        public function setJs(array $js)
    {
        if(is_array($js) && count($js)){
            for($i=0; $i < count($js); $i++){
                $this->_js[] = BASE_URL . 'views/' . $this->_controlador . '/js/' . $js[$i] . '.js';
            }
        } else {
            throw new Exception('Error de js');
        }
    }
    
    
    public function renderizar_reporte($vista, $item = false) {
        //aqui podemos poner el menu
        //creamos la ruta de la vista

        $ruta_vista = ROOT . 'views' . DS . $this->_controlador . DS . $vista . '.php';
        //comprobamos si el archivo existe y es legible

        if (is_readable($ruta_vista)) {
            //incluimos los layout
            include_once $ruta_vista;
            //incluimos la vista
        } else {
            throw new Exception('Error de vista');
        }
    }
    
}

?>

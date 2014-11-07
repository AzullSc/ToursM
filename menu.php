<?php

Class menu {

//cargarmenu("0"); // Donde 0 es el Idpadre principal
    protected $_id;
    protected $_datos;
    private $_c = 0;

    public function __construct($datos) {
        $this->_datos = $datos;
//        echo '<pre>';
//        print_r($this->_datos);
//        die();
        $this->unemenu();
    }

    function unemenu() {
        echo '<nav class="navbar-default navbar-static-side" role="navigation">';
        echo '<div class="sidebar-collapse">';
        echo '<ul class="nav" id="side-menu">';
        $this->cargarmenu();
        echo "<li><a href='".BASE_URL."' title='Acceda a la pagina web'>Web</a></li>";
        echo '</ul>';
        echo "</div>";
        echo "</nav>";
        echo '<br/><div id="page-wrapper">';
    }

    function cargarmenu() {
        if(isset($this->_datos) && count($this->_datos)){
            for($i=0; $i< count($this->_datos); $i++){
                if($this->_c==0){
                    $descripcion=  $this->_datos[$i]['modulo_padre'];
                    echo "<li><a href=''>$descripcion<span class='fa arrow'></span></a><ul class='nav nav-second-level'>";
                    $this->_c = 1;
                }
                if ($descripcion == $this->_datos[$i]['modulo_padre']){
                    $url = BASE_URL . $this->_datos[$i]['url'];
                    echo "<li><a href='$url'>" . $this->_datos[$i]['modulo_hijo'] . "</a></li>";
                } else {
                    echo "</ul></li>";
                    $this->_c = 0;
                    $i = $i -1;
                }
            }
            echo "</ul></li>";
        }
    }
}
?>
<!--FIn menu-->
<?php

Class alerta {

    protected $_datos;

    public function __construct($datos) {
//	echo "<pre>"; print_r($datos);exit;
        $this->_datos = $datos;
        $this->newalertas();
    }

    function newalertas() {
        if(isset($this->_datos) && count($this->_datos)){
                echo '<li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-bell fa-fw"></i>';
                                $cantidad = 0;
                                for($i=0; $i< count($this->_datos); $i++){
                                    $cantidad = $cantidad + $this->_datos[$i]['cantidad'];
                                }
                                echo '<span class="badge badge-important">'.$cantidad.'</span>
				    <i class="fa fa-caret-down"></i>
                                </a>
                            <ul class="dropdown-menu dropdown-alert">';
                for($i=0; $i< count($this->_datos); $i++){
                echo '<li>
                            <a href="'.BASE_URL . strtolower($this->_datos[$i]['xmodulo']).'">
                                <span class="label label-warning"><i class="fa fa-plus"></i></span>
                                <span class="time">'.$this->_datos[$i]['cantidad'].'</span>
                                '.strtolower($this->_datos[$i]['descripcion']).'
                            </a>
                        </li>
                        <li class="divider"></li>';
                }
                                            
                    echo '</ul>
                 </li>';
        } 
        else {
                echo '<li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-bell fa-fw"></i>
                                <span class="badge badge-green">0</span>
                            </a>
                            <ul class="dropdown-menu dropdown-alert">
                                <li>
                                    <div style="padding-left:1em">No hay nuevas notificaciones</div>
                                </li>
                            </ul>
                    </li>';
        }
	echo '
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="'.BASE_URL.'login/cerrar"><i class="fa fa-sign-out fa-fw"></i> Cerrar Sesión</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

        </nav>
        
        </header>';
    }
}
?>
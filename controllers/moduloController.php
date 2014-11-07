<?php

class moduloController extends Controller {
    private $_modulo;

    public function __construct() {
        if (!$this->acceso()) {
            $this->redireccionar('error/access/5050');
        }
        parent::__construct();
         $this->_modulo = $this->loadModel('modulo'); 
    }
    
    public function index() {
        
    $this->_view->modulos = $this->_modulo->getModulo();
        $this->_view->titulo = 'Modulos';
        $this->_view->principal = 'Registro de Modulo';
         $this->_view->setJs(array('index'));
         $this->_view->renderizar('index');
    }
    
    public function buscar(){
	$modulo = $this->_modulo->getModulo();
	$cad = '<table id="dataTables-example" class="table table-bordered table-hover table-striped">'.
	    '<thead>'.
		'<tr>
		     <th>Items</th>
                     <th>Modulo</th>
                     <th>URL</th>
                     <th>Acci&oacute;n</th>
		</tr>'.
	    '</thead>'.
	    '<tbody>';
	for($i=0; $i<count($modulo);$i++){
	    $cad .= '<tr>';
	    $cad .= '<td>' . ($i+1) . '</td>';
	    $cad .= '<td>' . $modulo[$i]['descripcion'] . '</td>';
	    $cad .= '<td>' . $modulo[$i]['url'] . '</td>';
	    $cad .= '<td>
		<a data-toggle="modal" href="#myModal" class="btn btn-xs btn-primary" 
		onclick="editar(\''.$modulo[$i]['id_modulo'].'\',\''.$modulo[$i]['id_modulopadre'].'\',\''.$modulo[$i]['descripcion'].'\',\''.$modulo[$i]['url'].'\',\''.$modulo[$i]['estado'].'\')">
		editar
		</a>
                <a data-toggle="modal" href="#myModal2" class="btn btn-xs btn-danger" 
		onclick="eliminar(\''.$modulo[$i]['id_modulo'].'\')">
		Eliminar
		</a>
                </td>';
	    $cad .= '</tr>';
	}
	$cad .= '</tbody></table>';
	echo $cad;
    }
    
    
    public function grabar(){
               
        $this->_modulo->insertarModulo( 
        $this->getTexto('descripcion'),
        $this->getTexto('url'),                
        $this->getInt('modulo'),
        $this->getEstado('estado')
        );
    }
    
    public function editar(){
       
      
        $this->_modulo->editarModulo(
                $this->getInt('id_modulo'),
		$this->getInt('modulo'),                  
                $this->getTexto('descripcion'),
                 $this->getTexto('url'),
                $this->getEstado('estado')
        );
    }
    
    public function eliminar(){
 
        $this->_modulo->eliminarModulo(
                $this->getInt('id_modulo')
        );
    }
}

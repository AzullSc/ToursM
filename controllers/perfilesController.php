<?php

class perfilesController extends Controller{
    private $_perfiles;


    public function __construct() {
        if (!$this->acceso()) {
            $this->redireccionar('error/access/5050');
        }
        parent::__construct();
        $this->_perfiles = $this->loadModel('perfil');
    }
    
    public function index() {
//        $this->_view->cursos = $this->_curso->getPost();
                     
            $this->_view->titulo = 'Perfiles';
            $this->_view->setJs(array('index'));
            $this->_view->renderizar('index');
    }
    
     public function buscar(){
	$perfil = $this->_perfiles->getPerfil();
	$cad = '<table id="dataTables-example" class="table table-bordered table-hover table-striped">'.
	    '<thead>'.
		'<tr>
		    <th>Items</th>
                    <th>Perfil</th>
                    <th>Acci&oacute;n</th>
		</tr>'.
	    '</thead>'.
	    '<tbody>';
	for($i=0; $i<count($perfil);$i++){
	    $cad .= '<tr>';
	    $cad .= '<td>' . ($i+1) . '</td>';
	    $cad .= '<td>' . $perfil[$i]['descripcion'] . '</td>';
	    $cad .= '<td>
		<a data-toggle="modal" href="#myModal" class="btn btn-xs btn-primary" 
		onclick="editar(\''.$perfil[$i]['id_perfil'].'\',\''.$perfil[$i]['descripcion'].'\',\''.$perfil[$i]['estado'].'\')">
		editar
		</a>
                <a data-toggle="modal" href="#myModal2" class="btn btn-xs btn-danger" 
		onclick="eliminar(\''.$perfil[$i]['id_perfil'].'\')">
		Eliminar
		</a>
                </td>';
	    $cad .= '</tr>';
	}
	$cad .= '</tbody></table>';
	echo $cad;
    }
    
      public function grabar(){
               
        $this->_perfiles->insertarPerfil(
        $this->getTexto('perfil'),
        $this->getEstado('estado')
        );       
    }
    
    public function editar(){
               
        $this->_perfiles->editarPerfil(
        $this->getInt('id_perfil'),        
        $this->getTexto('perfil'),
        $this->getEstado('estado')
        );       
    }
    
    public function eliminar(){
 
        $this->_perfiles->eliminarPerfil(
                $this->getInt('id_perfil')
        );
    }
}

<?php
class bibliotecarioController extends Controller {
    
    private $_bibliotecario;
    private $_comboPerfil;


    public function __construct() {
        if (!$this->acceso()) {
            $this->redireccionar('error/access/5050');
        }
        parent::__construct();
        $this->_bibliotecario = $this->loadModel('bibliotecario');
        $this->_comboPerfil = $this->loadModel('bibliotecario');
    }
  ///para validar
    public function validarBibliotecario(){
        $valor = $this->_bibliotecario->validarBibliotecario($_POST['dni']);
        echo $valor;
    }
    //////////
        public function index()
    {
            
            $this->_view->bibliotecario = $this->_bibliotecario->getPost();
            $this->_view->perfil = $this->_comboPerfil->getCombo();        
            $this->_view->titulo = 'Bibliotecario';
            $this->_view->principal = 'Bibliotecario';
            $this->_view->setJs(array('index'));
            $this->_view->renderizar('index');
    }
    
    public function buscar(){
	$bibliotecario = $this->_bibliotecario->getPost();
	$cad = '<table id="dataTables-example" class="table table-bordered table-hover table-striped">'.
	    '<thead>'.
		'<tr>
		    <th>Items</th>
		    <th>Nombre</th>
		    <th>Apellido</th>
                    <th>Usuario</th>
		    <th>Acci&oacute;n</th>
		</tr>'.
	    '</thead>'.
	    '<tbody>';
	for($i=0; $i<count($bibliotecario);$i++){
	    $cad .= '<tr>';
	    $cad .= '<td>' . ($i+1) . '</td>';
	    $cad .= '<td>' . $bibliotecario[$i]['nombre'] . '</td>';
	    $cad .= '<td>' . $bibliotecario[$i]['apellido'] . '</td>';
	    $cad .= '<td>' . $bibliotecario[$i]['usuario'] . '</td>';  
	    $cad .= '<td>
		<a data-toggle="modal" href="#myModal" class="btn btn-xs btn-primary" 
		onclick="editar(\''.$bibliotecario[$i]['bibliotecario_ID'].'\',\''.$bibliotecario[$i]['nombre'].'\',\''.$bibliotecario[$i]['apellido'].'\',\''.$bibliotecario[$i]['usuario'].'\',\''.$bibliotecario[$i]['clave'].'\',\''.$bibliotecario[$i]['telefono'].'\',\''.$bibliotecario[$i]['direccion'].'\',\''.$bibliotecario[$i]['dni'].'\',\''.$bibliotecario[$i]['ultimoingreso'].'\',\''.$bibliotecario[$i]['id_perfil'].'\')">
		editar
		</a>
                <a data-toggle="modal" href="#myModal2" class="btn btn-xs btn-danger" 
		onclick="eliminar(\''.$bibliotecario[$i]['bibliotecario_ID'].'\')">
		Eliminar
		</a>
                </td>';
	    $cad .= '</tr>';
	}
	$cad .= '</tbody></table>';
	echo $cad;
    }
    
    public function grabar(){
	$this->_bibliotecario->insertarBibliotecario(
            $this->getInt('perfil'),
            $this->getTexto('nombre'),
            $this->getTexto('apellido'),        
            $this->getTexto('usuario'),
            $this->getTexto('clave'),
            $this->getTexto('telefono'),        
            $this->getTexto('direccion'),
            $this->getTexto('dni'),        
            $this->getTexto('ultimoingreso'),
            $this->getEstado('estado')
        );
	
    }
    
    public function editar(){
       
      
        $this->_bibliotecario->editarBibliotecario(
                $this->getInt('id_bibliotecario'),
                $this->getInt('perfil'),
		$this->getTexto('nombre'),
                $this->getTexto('apellido'),        
                $this->getTexto('usuario'),
                $this->getTexto('clave'),
                $this->getTexto('telefono'),        
                $this->getTexto('direccion'),
                $this->getTexto('dni'),        
                $this->getTexto('ultimoingreso'),
                $this->getEstado('estado')
        );
    }
    
    public function eliminar(){
 
        $this->_bibliotecario->eliminarBibliotecario(
                $this->getInt('id_bibliotecario')
        );
    }
}

<?php

class alertasModel extends Model{
    
    public function __construct() {
        parent::__construct();
    }
    
    public function alertas(){
	$id = 1;
	if(session::get('autenticado')){
	    $id = session::get('level');
	}
//	die(session::get('level'));
	$this->_db->prepare("update alertas 
	    set cantidad = (select count(*) from prestamo where Fecha_devolucion <='".date("Y-m-d")."')
		where idalerta=1")->execute();
	
	$alertas = $this->_db->query("SELECT a.*,m.url as 'xmodulo'
		FROM alertas as a inner join permisos as per on  (per.id_modulo=a.idmodulo)
		inner join modulo as m on (a.idmodulo=m.id_modulo)
		where a.cantidad>0 and per.id_perfil=".$id."");
        //return $alertas->fetchall();
    }
}

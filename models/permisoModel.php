<?php

class permisoModel  extends Model{
    
    public function __construct() {
        parent::__construct();
    }
    
     public function listaPermisosPadre(){
        $permisos = $this->_db->query("SELECT modulo.id_modulo,modulo.descripcion,modulo.id_modulopadre,modulo.estado
                        FROM modulo WHERE modulo.id_modulopadre = 0");
        return $permisos->fetchall();
    }
    
    public function valida_acceso($idperfil,$url){
        $sql = $this->_db->query('SELECT p.*, per.descripcion, m.descripcion
                FROM permisos as p inner join perfil as per on(p.id_perfil=per.id_perfil)
                    inner join modulo as m on(p.id_modulo=m.id_modulo)
                WHERE p.id_perfil='.$idperfil.' AND m.url="'.$url.'" AND m.estado = 1');
//        echo "<pre>";print_r($sql);exit;
        return $sql->fetchall();
    }
    
    public function getPermiso($idperfil){
	$sql = $this->_db->query('SELECT p.*
		FROM permisos as p 
		WHERE p.id_perfil='.$idperfil.'');
	return $sql->fetchall();
    }
    
    public function eliminaPermiso($idperfil,$idmodulo){
	$this->_db->query('DELETE FROM permisos '
                . 'WHERE (id_perfil = "'.$idperfil.'" and id_modulo = "'.$idmodulo.'")');
    }
    
    public function insertaPermiso($idperfil,$idmodulo){
	$this->_db->query('INSERT into permisos VALUES("'.$idperfil.'", "'.$idmodulo.'")');
    }
    
}

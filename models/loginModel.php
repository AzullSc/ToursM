<?php

class loginModel extends Model {
    public function __construct() {
        parent::__construct();
    }
    
    public function validar($usuario, $clave){
    	/*
        $datos = $this->_db->query("SELECT b.*,p.descripcion as perfil FROM bibliotecario as b inner join perfil as p
		WHERE b.usuario='".$usuario."' AND b.clave = '".$clave."'");
        return $datos->fetch();*/
        $datos = $this->_db->query("SELECT
        	perfil.id_perfil as id_perfil,
			perfil.descripcion as perfil,
			bibliotecario.usuario as usuario,
			bibliotecario.clave as clave
			FROM
			bibliotecario
			INNER JOIN perfil ON perfil.id_perfil = bibliotecario.id_perfil
			WHERE usuario ='$usuario' AND clave='$clave'");

        return $datos->fetch();

    }
}

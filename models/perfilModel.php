<?php

class perfilModel extends Model{
    
    public function __construct() {
        parent::__construct();
    }
    
    public function getPerfil(){
        $modulo = $this->_db->query("SELECT * FROM perfil where estado=1");
        return $modulo->fetchall();
    }
    
      public function insertarPerfil($perfil,$estado){
        $this->_db->prepare("INSERT INTO perfil VALUES(null, :perfil, :estado)")
            ->execute(
                    array(
                        ':perfil' => $perfil,
                        ':estado'=>$estado
                    )
                    );
    }
    
    public function editarPerfil($id_perfil,$perfil,$estado){
        $this->_db->prepare("UPDATE perfil SET descripcion=:perfil, estado=:estado WHERE id_perfil=:id")
            ->execute(
                    array(
                        ':id' =>$id_perfil,
                        ':perfil' => $perfil,
                        ':estado'=>$estado
                    )
                    );
    }

public function eliminarPerfil($id_perfil){
        $this->_db->prepare("UPDATE perfil SET estado=0 WHERE id_perfil= :id")
                ->execute(
                        array(
                         ':id'=>$id_perfil   
                        )
                        );
    }
    
}

<?php

class moduloModel extends Model{
    
    public function __construct() {
        parent::__construct();
    }
    
    public function menu($idperfil){
        if($idperfil != 9999){
            $menu = $this->_db->query("select m.*, m.descripcion as modulo_padre, mo.descripcion as modulo_hijo, mo.url
		from modulo as m inner join modulo as mo on(m.id_modulo=mo.id_modulopadre)
		inner join permisos as per on  (per.id_modulo=mo.id_modulo)
		where m.id_modulo<>0 and per.id_perfil='".$idperfil."' and mo.estado<>0 and mo.id_modulo<>0
		order by m.id_modulo");
        }else{
            $menu = $this->_db->query("select * from modulo where id_modulo<>0 and estado<>0");
        }
        return $menu->fetchall();
    }
    
    public function getModulo(){
        $modulo = $this->_db->query("SELECT id_modulo, descripcion, url, id_modulopadre,estado FROM modulo where estado=1");
        return $modulo->fetchall();
    }
    
        
    public function getId($id){
        $id = (int) $id;
        $modulos = $this->_db->query("select * from modulo where id = $id");
        return $modulos->fetch();
    }
    
    public function insertarModulo(  $descripcion, $url,$id_padre, $estado){
        $this->_db->prepare("INSERT INTO modulo VALUES(null, :descripcion, :url, :id_modulopadre,  :estado)")
            ->execute(
                    array(
                        ':descripcion'=>$descripcion,
                        ':url' => $url,
                        ':id_modulopadre'=>$id_padre,
                        ':estado'=>$estado
                    )
                    );
    }
    
      public function editarModulo($id_modulo, $modulopadre, $descripcion, $url, $estado){
//         $id = (int) $id;
         
         $this->_db->prepare("UPDATE modulo SET  id_modulopadre=:id_modulopadre, descripcion=:descripcion, url=:url, estado=:estado WHERE id_modulo= :id")
            ->execute(
                    array(
                        ':id'=>$id_modulo,                        
                        ':id_modulopadre'=>$modulopadre,
                        ':descripcion'=>$descripcion,
                        ':url'=>$url,
                        ':estado'=>$estado
                    )
                    );
    }
    
    public function eliminarModulo($id_modulo){
        $this->_db->prepare("UPDATE modulo SET Estado=0 WHERE id_modulo= :id")
                ->execute(
                        array(
                         ':id'=>$id_modulo   
                        )
                        );
    }
}

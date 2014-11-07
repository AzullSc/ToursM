<?php

class tipolectorModel extends Model {
    public function __construct() {
        parent::__construct();
    }
    
    public function getPost(){
        $tipolector = $this->_db->query("select * from tipo_lector WHERE Estado=1");
        return $tipolector->fetchall();
    }
    
    public function getCombo(){
        $comboCate = $this->_db->query("select Categoria_Lector_ID,Descripcion from categoria_lector WHERE Estado=1");       
        return $comboCate->fetchall();
        
    }
    
    public function getId($id){
        $id = (int) $id;
        $tipolector = $this->_db->query("select * from tipo_lector where id = $id");
        return $tipolector->fetch();
    }

        public function insertarTipolector($categorialector, $cantidad, $casa, $descripcion, $estado){
        $this->_db->prepare("INSERT INTO tipo_lector VALUES(null, :Categoria_Lector_ID, :Cantidad_sala, :Cantidad_casa, :Descripcion, :Estado)")
            ->execute(
                    array(
                        ':Categoria_Lector_ID'=>$categorialector,
                        ':Cantidad_sala'=>$cantidad,
                        ':Cantidad_casa'=>$casa,
                        ':Descripcion' => $descripcion,
                        ':Estado'=>$estado
                    )
                    );
    }
    
    public function validarTipolector($descripcion){
        $resul=$this->_db->query("SELECT Descripcion FROM tipo_lector WHERE Descripcion='".$descripcion."'");
        return $resul->fetch();
        
    }

        public function editarTipolector($id_tipolector, $categorialector, $cantidad, $casa, $descripcion, $estado){
//         $id = (int) $id;
         
         $this->_db->prepare("UPDATE tipo_lector SET Categoria_Lector_ID=:Categoria_Lector_ID, Cantidad_sala=:Cantidad_sala, Cantidad_casa=:Cantidad_casa, Descripcion=:Descripcion, Estado=:Estado WHERE Tipo_Lector_ID= :id")
            ->execute(
                    array(
                        ':id'=>$id_tipolector,
                        ':Categoria_Lector_ID'=>$categorialector,
                        ':Cantidad_sala'=>$cantidad,
                        ':Cantidad_casa'=>$casa,
                        ':Descripcion'=> $descripcion,
                        ':Estado'=>$estado
                    )
                    );
    }
    
    public function eliminarTipolector($id_tipolector){
        $this->_db->prepare("UPDATE tipo_lector SET Estado=0 WHERE Tipo_Lector_ID= :id")
                ->execute(
                        array(
                         ':id'=>$id_tipolector   
                        )
                        );
    }
}

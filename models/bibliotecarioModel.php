<?php

class bibliotecarioModel extends Model {
    public function __construct() {
        parent::__construct();
    }
    
    public function getPost(){
        $bibliotecario = $this->_db->query("select * from bibliotecario WHERE estado=1");
        return $bibliotecario->fetchall();
    }
    
    public function getCombo(){
        $comboPerfil = $this->_db->query("select id_perfil ,descripcion from perfil WHERE estado=1");       
        return $comboPerfil->fetchall();
        
    }
    
    public function getId($id){
        $id = (int) $id;
        $bibliotecario = $this->_db->query("select * from bibliotecario where id = $id");
        return $bibliotecario->fetch();
    }
    /////para validar
    public function validarBibliotecario($dni){
        $resul=$this->_db->query("SELECT dni FROM bibliotecario WHERE dni='".$dni."'");
        return $resul->fetch();
        
    }
    /////
        public function insertarBibliotecario($perfil,$nombre, $apellido, $usuario, $clave,$telefono, $direccion,$dni,$ultimoingreso , $estado){
        $this->_db->prepare("INSERT INTO bibliotecario VALUES(null, :id_perfil,:nombre, :apellido, :usuario,:clave, :telefono, :direccion, :dni, :ultimoingreso,  :estado)")
            ->execute(
                    array(
                        ':id_perfil'=>$perfil,
                        ':nombre'=>$nombre,
                        ':apellido'=>$apellido,
                        ':usuario' => $usuario,
                        ':clave'=>$clave,
                        ':telefono'=>$telefono,
                        ':direccion'=>$direccion,
                        ':dni'=>$dni,
                        ':ultimoingreso'=>$ultimoingreso,
                        ':estado'=>$estado
                    )
                    );
    }
    
    public function editarBibliotecario($id_bibliotecario,  $perfil,$nombre, $apellido, $usuario, $clave, $telefono, $direccion, $dni, $ultimoingreso, $estado){
//         $id = (int) $id;
         
         $this->_db->prepare("UPDATE bibliotecario SET id_perfil=:id_perfil,nombre=:nombre, apellido=:apellido, usuario=:usuario,clave=:clave,telefono=:telefono, direccion=:direccion, dni=:dni, ultimoingreso=:ultimoingreso,  estado=:estado WHERE bibliotecario_ID= :id")
            ->execute(
                    array(
                        ':id'=>$id_bibliotecario,
                        ':id_perfil'=>$perfil,
                        ':nombre'=>$nombre,
                        ':apellido'=>$apellido,
                        ':usuario'=> $usuario,
                        ':clave'=>$clave,
                        ':telefono'=>$telefono,
                        ':direccion'=>$direccion,
                        ':dni'=>$dni,
                        ':ultimoingreso'=>$ultimoingreso,
                        ':estado'=>$estado
                    )
                    );
    }
    
    public function eliminarBibliotecario($id_bibliotecario){
        $this->_db->prepare("UPDATE bibliotecario SET estado=0 WHERE bibliotecario_ID= :id")
                ->execute(
                        array(
                         ':id'=>$id_bibliotecario   
                        )
                        );
    }
}

<?php

class movimientoModel extends Model{
    public function __construct() {
        parent::__construct();
    }
    
    public function getPost(){
        $movimiento = $this->_db->query("select * from movimiento WHERE Estado=1");
        return $movimiento->fetchall();
    }
    
    public function getCombo(){
        $comboTipo = $this->_db->query("select TipoMovimiento_ID,Descripcion from tipo_movimiento WHERE Estado=1");       
        return $comboTipo->fetchall();
        
    }
    
     public function getLibro(){
	$doc = $this->_db->query("SELECT 
		ejemplar_libro.Ejemplar_Libro_ID as id_e,
		ejemplar_libro.Libro_ID as id, 
		libro.Titulo as titulo,
		ejemplar_libro.ISBN as ident
		FROM ejemplar_libro
		INNER JOIN libro ON libro.Libro_ID = ejemplar_libro.Libro_ID
		WHERE ejemplar_libro.Estado=1");
	return $doc->fetchall();
    }
    
    public function getRevista(){
	$doc = $this->_db->query("SELECT 
		ejemplar_revista.Ejemplar_Revista_ID as id_e,
		ejemplar_revista.Revista_ID as id, 
		revista.Titulo as titulo,
		ejemplar_revista.ISNN as ident
		FROM ejemplar_revista
		INNER JOIN revista ON revista.Revista_ID = ejemplar_revista.Revista_ID
		WHERE ejemplar_revista.Estado=1");
	return $doc->fetchall();
    }
    
    public function getMonografia(){
	$doc = $this->_db->query("SELECT 
		ejemplar_monografia.Ejemplar_Monografia_ID as id_e,
		ejemplar_monografia.Monografia_ID as id, 
		monografia.Titulo as titulo
		FROM ejemplar_monografia
		INNER JOIN monografia ON monografia.Monografia_ID = ejemplar_monografia.Monografia_ID
		WHERE ejemplar_monografia.Estado=1");
	return $doc->fetchall();
    }
    
    public function getLaminaMapa(){
	$doc = $this->_db->query("SELECT 
		ejemplar_laminamapa.Ejemplar_LaminaMapa_ID as id_e,
		ejemplar_laminamapa.LaminaMapa_ID as id, 
		laminamapa.Titulo as titulo
		FROM ejemplar_laminamapa
		INNER JOIN laminamapa ON laminamapa.LaminaMapa_ID = ejemplar_laminamapa.LaminaMapa_ID
		WHERE ejemplar_laminamapa.Estado=1");
	return $doc->fetchall();
    }
    
    public function getId($id){
        $id = (int) $id;
        $movimiento = $this->_db->query("select * from movimiento where id = $id");
        return $movimiento->fetch();
    }

        public function insertarMEL($tipo, $movimiento){
        $this->_db->prepare("INSERT INTO movimiento VALUES(null, :TipoMovimiento_ID, :Movimiento, :Estado)")
            ->execute(
                    array(
                        ':TipoMovimiento_ID'=>$tipo,
                        ':Movimiento' => $movimiento,
                        ':Estado'=>1
                    )
                    );
                    
    }
    
      public function insertarPEL($id, $movimiento){
//          die($movimiento);
        $this->_db->prepare("INSERT INTO libromovimineto VALUES(:Movimiento_ID, :Ejemplar_libro_ID)")
            ->execute(
                    array(
                        ':Ejemplar_libro_ID'=>$id,
                        ':Movimiento_ID' => $movimiento
                    )
                    );
                    
    }
    
    public function insertarPER($id, $movimiento){
//          die($movimiento);
        $this->_db->prepare("INSERT INTO revistamoviminento VALUES(:Movimiento_ID, :Ejemplar_libro_ID)")
            ->execute(
                    array(
                        ':Ejemplar_libro_ID'=>$id,
                        ':Movimiento_ID' => $movimiento
                    )
                    );
                    
    }
    
    public function insertarPEM($id, $movimiento){
//          die($movimiento);
        $this->_db->prepare("INSERT INTO monografiamovimiento VALUES(:Movimiento_ID, :Ejemplar_libro_ID)")
            ->execute(
                    array(
                        ':Ejemplar_libro_ID'=>$id,
                        ':Movimiento_ID' => $movimiento
                    )
                    );
                    
    }
    
     public function insertarPELM($id, $movimiento){
//          die($movimiento);
        $this->_db->prepare("INSERT INTO revistamoviminento VALUES(:Movimiento_ID, :Ejemplar_libro_ID)")
            ->execute(
                    array(
                        ':Ejemplar_libro_ID'=>$id,
                        ':Movimiento_ID' => $movimiento
                    )
                    );
                    
    }
    
    public function exid(){
        $movi = $this->_db->query("select MAX(Movimiento_ID) as Movimiento_ID from movimiento where Estado = 1");
        $cad = $movi->fetchAll();
	$id = $cad[0]['Movimiento_ID'];
        return $id;
    }
    

        public function editarMovimiento($id_movimiento, $tipo, $movimiento, $estado){
//         $id = (int) $id;
         
         $this->_db->prepare("UPDATE movimiento SET TipoMovimiento_ID=:TipoMovimiento_ID, Movimiento=:Movimiento, Estado=:Estado WHERE Movimiento_ID= :id")
            ->execute(
                    array(
                        ':id'=>$id_movimiento,
                        ':TipoMovimiento_ID'=>$tipo,
                        ':Movimiento'=> $movimiento,
                        ':Estado'=>$estado
                    )
                    );
    }
    
    public function eliminarMovimiento($id_movimiento){
        $this->_db->prepare("UPDATE movimiento SET Estado=0 WHERE Movimiento_ID= :id")
                ->execute(
                        array(
                         ':id'=>$id_movimiento   
                        )
                        );
    }
    
    public function eliminarEL($id){
        $this->_db->prepare("UPDATE ejemplar_libro SET Estado=0 WHERE Ejemplar_Libro_ID= :id")
                ->execute(
                        array(
                         ':id'=>$id 
                        )
                        );
    }
    
    public function eliminarER($id){
        $this->_db->prepare("UPDATE ejemplar_revista SET Estado=0 WHERE Ejemplar_Revista_ID= :id")
                ->execute(
                        array(
                         ':id'=>$id 
                        )
                        );
    }
    
    public function eliminarEM($id){
        $this->_db->prepare("UPDATE ejemplar_monografia SET Estado=0 WHERE Ejemplar_Movimiento_ID= :id")
                ->execute(
                        array(
                         ':id'=>$id 
                        )
                        );
    }
    
    public function eliminarELM($id){
        $this->_db->prepare("UPDATE ejemplar_laminamapa SET Estado=0 WHERE Ejemplar_LaminaMapa_ID= :id")
                ->execute(
                        array(
                         ':id'=>$id 
                        )
                        );
    }
}

?>

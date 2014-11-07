<div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Modulos
                            <a data-toggle="modal" href="#myModal" class="btn btn-primary" style="margin-left: 77%;">Nuevo</a>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive" id="tabla">
                            </div>
                            <!-- /.table-responsive -->
                           
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
      <!-- Button trigger modal -->
  
      <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title">Modulos</h4>
        </div>
        <div class="modal-body">
            <form id="form1" class="form-horizontal" method="post">
                <table>
                <tr>
                    <td>
                    <label class="col-md-4">Modulo Padre</label>
		    <div class="col-md-8">
                    <select class="form-control" id="modulo" name="modulo"><option value='0'>Seleccione..</option>
                            <?php for($i=0;$i<count($this->modulos);$i++):?>
                            <option value="<?php echo $this->modulos[$i]['id_modulo'];?>"><?php echo $this->modulos[$i]['descripcion'];?></option>
                        <?php endfor;?>                
                        
                    </select>
                    </div>
                    </td>
                </tr>
                
                <tr>
                    <td>
                    <label>Modulo</label>
                    <input type="hidden" class="form-control" name="id_modulo" id="id_modulo" />
                    <input class="form-control" name="descripcion"  id="descripcion" placeholder="Ingrese Texto" required="true"></div>
                    </td>
                </tr> 
                
                 <tr>
                    <td>
                    <label>Url</label>
                    <input class="form-control" name="url" id="url" placeholder="Ingrese Texto" required="true">
                    </td>
                </tr>
                
                 <tr>
                    <td>
                    <label>
                        <input type="checkbox" name="estado" id="estado" checked="checked" />Estado
                    </label>
                    </td>
                </tr>
                                
              
                 <tr>
                <td class="modal-footer">
		    <span id="cargando">
			Guardando...
		    </span>
		    <span id="botones">			
			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			<button type="button" onclick="guardar()"  name="grabar" class="btn btn-primary">Grabar</button>
		    </span>
              </td>
                </tr>
                </table>
            </form>
            </div> 
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div><!-- /.modal -->
  
  
   <!-- /.Eliminar -->
  
  
   <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title">Mensaje de Confirmacion</h4>
        </div>
        <div class="modal-body">
            <form id="form1" class="form-horizontal" method="post">
                
                <div class="form-group">
                    <label>Estas Seguro que desea Eliminar</label>
                    <input type="hidden" class="form-control" name="id_modulo" id="id_modulo" />
                    
                </div>  
                
                <div class="modal-footer">
		    <span id="cargando">
			Emininando...
		    </span>
		    <span id="botones">			
			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			<button type="button" onclick="ocultar()"  name="eliminar" class="btn btn-primary" data-dismiss="modal">Eliminar</button>
		    </span>
              </div>
            </form>
            </div> 
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div><!-- /.modal -->
  


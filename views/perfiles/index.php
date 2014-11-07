
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Datos del Perfil
                            <a data-toggle="modal" href="#myModal" class="btn btn-primary" style="margin-left: 70%;">Nuevo</a>
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
  

  <!-- Modal -->
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title">Perfil</h4>
        </div>
        <div class="modal-body">
            <form id="form1" method="post">
                <div class="form-group">
                    <label>Perfil</label>
                    <input type="hidden" class="form-control" name="id_perfil" id="id_perfil" />
                    <input class="form-control" name="perfil" id="perfil"  placeholder="Ingrese Texto" required="true">
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="estado" id="estado">Estado
                    </label>
                </div>
                <div class="modal-footer">
		    <span id="cargando">
			Guardando...
		    </span>
		    <span id="botones">			
			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <button type="button" onclick="guardar()" id="grabar" name="grabar" class="btn btn-primary">Grabar</button>
		    </span>
              </div>
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
                    <input type="hidden" class="form-control" name="id_perfil" id="id_curso" />
                    
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
  

 
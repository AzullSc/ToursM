<!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Clientes
                            <a data-toggle="modal" href="#myModal" class="btn btn-primary btn-sm pull-right" >Nuevo</a>
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
          <h4 class="modal-title">Clientes</h4>
        </div>
        <div class="modal-body">
            <form id="form1"  method="post">
                <div class="col-lg-6">
                    <label>Nombre</label>
                    <input type="hidden" name="idcliente" id="idcliente">
                    <input class="form-control" name="nombre" id="nombre" placeholder="Ingrese Texto" required="true">
                     
                </div>
                <div class="col-lg-6">
                    <label>Apellido</label>
                    <input class="form-control" name="apellido" id="apellido" placeholder="Ingrese Texto" required="true">
                     
                </div>
                <div class="col-lg-6">
                    <label>DNI</label>
                    <input class="form-control" name="dni" id="dni" placeholder="Ingrese Texto" required="true">
                     
                </div>
                <div class="col-lg-6">
                    <label>Telefono</label>
                    <input class="form-control" name="telefono" id="telefono" placeholder="Ingrese Texto" required="true">
                     
                </div>
                <div class="col-lg-6">
                    <label>Dirección</label>
                    <input class="form-control" name="direccion" id="direccion" placeholder="Ingrese Texto" required="true">
                     
                </div>
                <div class="col-lg-6">
                    <label>Email</label>
                    <input class="form-control" name="email" id="email" placeholder="Ingrese Texto" required="true">
                </div>
                <div class="col-lg-12 checkbox">
                    <label>
                        <input type="checkbox" checked="checked" name="estado" id="estado">Activo
                    </label>
                </div>
                <div class="modal-footer">
		    <span id="cargando">
			Guardando...
		    </span>
		    <span id="botones">			
			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			<button type="button" onclick="guardar()"  name="grabar" class="btn btn-primary">Grabar</button>
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
                    <input type="hidden" class="form-control" name="idcliente" id="idcliente" />
                    
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





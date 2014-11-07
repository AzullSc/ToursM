<!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Usuario
                            <a data-toggle="modal" href="#myModal" onclick="limpiar()" class="btn btn-primary" style="margin-left: 70%;">Nuevo</a>
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
          <h4 class="modal-title">Bibliotecario</h4>
        </div>
        <div class="modal-body">
            <form id="form1" method="post">
                <table>
                    <tr>
                        <td class="space-bootom">
                            <label>Perfil</label>
                        </td>
                        <td class="space-bootom">
                            <select class="form-control" id="perfil" name="perfil"><option>Seleccione..</option>
                                    <?php for($i=0;$i<count($this->perfil);$i++):?>
                                    <option value="<?php echo $this->perfil[$i]['id_perfil'];?>"><?php echo $this->perfil[$i]['descripcion'];?></option>
                                <?php endfor;?>                                        
                            </select>
                        </td>
                        <td class="space-bootom">
                            <label>DNI</label>
                        </td>
                        <td class="space-bootom">
                           <input class="form-control" name="dni" id="dni" placeholder="Ingrese DNI" required="true">
                        </td>
                    </tr>
                    <tr>
                        <td class="space-bootom">
                            <label>Nombre</label>
                        </td>
                        <td class="space-bootom">
                            <input type="hidden" class="form-control" name="id_bibliotecario" id="id_bibliotecario" />
                            <input class="form-control" name="nombre" id="nombre" placeholder="Ingrese Nombre" required="true">
                        </td>
                        <td class="space-bootom">
                            <label>Apellido</label>
                        </td>
                        <td class="space-bootom">
                           <input class="form-control" name="apellido" id="apellido" placeholder="Ingrese Apellido" required="true"> 
                        </td>
                    </tr>
                    <tr>
                        <td class="space-bootom">
                            <label>Usuario</label>
                        </td>
                        <td class="space-bootom">
                           <input class="form-control" name="usuario" id="usuario" placeholder="Ingrese Usuario" required="true"> 
                        </td>
                        <td class="space-bootom">
                            <label>Clave</label>
                        </td>
                        <td class="space-bootom">
                            <input class="form-control" type="password" name="clave" id="clave" placeholder="Ingrese Clave" required="true">
                        </td>
                    </tr>                    
                    <tr>
                        <td class="space-bootom">
                            <label>Telefono</label>
                        </td>
                        <td class="space-bootom">
                           <input class="form-control" name="telefono" id="telefono" placeholder="Ingrese Telefono" required="true">
                        </td>
                        <td class="space-bootom">
                            <label>Direccion</label>
                        </td>
                        <td class="space-bootom">
                           <input class="form-control" name="direccion" id="direccion" placeholder="Ingrese Direccion" required="true">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>
                                <input type="checkbox" name="estado" id="estado">Activo
                            </label>
                        </td>
                    </tr>
                </table> 
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
                    <input type="hidden" class="form-control" name="id_bibliotecario" id="id_bibliotecario" />
                   
                </div>  
                
                <div class="modal-footer">
		    <span id="cargando2">
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

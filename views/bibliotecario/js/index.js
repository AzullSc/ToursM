$(function(){
     buscar();
     $("#cargando").hide();
            }
  );

function limpiar()
{
    $("#id_bibliotecario,#nombre, #apellido,#usuario,#clave,#telefono,#direccion,#dni,#ultimoingreso").val('');
    $("#perfil").val('0');
}

function buscar()
{
    $.ajax({
	type: "post",
	url: url + "bibliotecario/buscar",
	beforeSend:function(){
	    $("#tabla").html('Cargando...');
	},
	success:function(response){
	    $("#tabla").html(response);
	    tabla();
	}
          });
}

function editar(id,nombre,apellido,usuario,clave,telefono,direccion,dni,ultimoingreso,perfil,estado)
{
    $("#id_bibliotecario").val(id);
    $("#perfil").val(perfil);
    $("#nombre").val(nombre);
    $("#apellido").val(apellido);
    $("#usuario").val(usuario);
    $("#clave").val(clave);
    $("#telefono").val(telefono);
    $("#direccion").val(direccion);
    $("#dni").val(dni);
    $("#ultimoingreso").val(ultimoingreso);
    $("#estado").val(estado);

}


function eliminar(id){
    $("#id_bibliotecario").val(id);
}

function guardar()
{
    var ruta = '';
    if($("#id_bibliotecario").val() != ''){
	ruta = url + "bibliotecario/editar";
    }else{
	ruta = url + "bibliotecario/grabar";
    }
    $.ajax({
	type: "post",
	url: ruta,
	data: $("#form1").serialize(),
	beforeSend:function(){
	    $("#botones").hide();
	    $("#cargando").show();
	},
	success:function(response){
	    $("#myModal").modal('hide');
	    $("#botones").show();
	    $("#cargando").hide();
	    buscar();
	    limpiar();
	}
    });   
}

function ocultar(){
    var ruta = '';
	ruta = url + "bibliotecario/eliminar";
    
    $.ajax({
	type: "post",
	url: ruta,
	data: $("#form1").serialize(),
	beforeSend:function(){
	    $("#botones").hide();
	    $("#cargando").show();
	},
	success:function(response){
	    $("#myModal").modal('hide');
	    $("#botones").show();
	    $("#cargando").hide();
	    buscar();
	    limpiar();
	}
    });
    }

function tabla(){    
    $('#dataTables-example').dataTable( {            
	"sPaginationType": "full_numbers"
    });
    //Modify Data Table
    $('.dataTables_wrapper .sOption').wrapAll('<div class="sOption_wrapper"></div>');
    $('.dataTables_wrapper .pagin').wrapAll('<div class="sOption_wrapper"></div>');
}
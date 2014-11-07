$(function(){
    
    buscar();
    
    $("#cargando").hide();
    
})

function limpiar(){
    $("#idcliente,#nombre,#apellido,#dni,#telefono,#direccion,#email.#estado").val('');
}

function buscar(){
    $.ajax({
	type: "post",
	url: url + "cliente/buscar",
	beforeSend:function(){
	    $("#tabla").html('Cargando...');
	},
	success:function(response){
	    $("#tabla").html(response);
	    tabla();
	}
    });
}

function editar(id,nom,apell,dni,tel,dir,ema,est){
    $("#idcliente").val(id);
    $("#nombre").val(nom);
    $("#apellido").val(apell);
    $("#dni").val(dni);
    $("#telefono").val(tel);
    $("#direccion").val(dir);
    $("#email").val(ema);
    $("#estado").val(est);
}

function eliminar(id){
    $("#idcliente").val(id);
}

function guardar(){
    var ruta = '';
    if($("#idcliente").val() != ''){
	ruta = url + "cliente/editar";
    }else{
	ruta = url + "cliente/grabar";
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
	ruta = url + "cliente/eliminar";
    
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


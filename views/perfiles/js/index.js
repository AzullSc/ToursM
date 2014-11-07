$(function(){
    
    buscar();
    
    $("#cargando").hide();
    
});

function limpiar(){
    $("#id_perfil,#perfil,#estado").val('');
    //$("#categorialector").val('0');
}

function buscar(){
    $.ajax({
	type: "post",
	url: url + "perfiles/buscar",
	beforeSend:function(){
	    $("#tabla").html('Cargando...');
	},
	success:function(response){
	    $("#tabla").html(response);
	    tabla();
	}
    });
}

function editar(id,perfil,est){
    $("#id_perfil").val(id);
    $("#perfil").val(perfil);
    $("#estado").val(est);
    
}

function eliminar(id){
    $("#id_perfil").val(id);
}

function guardar(){
    var ruta = '';
    if($("#id_perfil").val() != ''){
	ruta = url + "perfiles/editar";
    }else{
	ruta = url + "perfiles/grabar";
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
	ruta = url + "perfiles/eliminar";
    
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
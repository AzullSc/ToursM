
$(function(){
    
    buscar();
    
    $("#cargando").hide();
    
})

function limpiar(){
    $("#id_modulo,#descripcion,#url,#estado").val('');
}

function buscar(){
    $.ajax({
	type: "post",
	url: url + "modulo/buscar",
	beforeSend:function(){
	    $("#tabla").html('Cargando...');
	},
	success:function(response){
	    $("#tabla").html(response);
	    tabla();
	}
    });
}

function editar(id,modp,des,url,es){
    $("#id_modulo").val(id);
    $("#modulo").val(modp);
    $("#descripcion").val(des);
    $("#url").val(url);
    $("#estado").val(es);
}

function eliminar(id){
    $("#id_modulo").val(id);
}

function guardar(){
    var ruta = '';
    if($("#id_modulo").val() != ''){
	ruta = url + "modulo/editar";
    }else{
	ruta = url + "modulo/grabar";
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
	ruta = url + "modulo/eliminar";
    
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
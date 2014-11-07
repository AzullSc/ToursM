/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

$(function(){
    $("#perfil").focus();
    $("#div_modulos").hide();
    $("#celda_aceptar").hide();
    $("#perfil").change(function(){
        $(document).find(':checkbox').attr('checked',false);
        if($(this).val()==0){
            $("#div_modulos").hide("slow");
            $("#celda_aceptar").hide();
        }else{
            $.post(url+'permisos/get_permisos','idperfil='+$(this).val(),function(datos){
                for(var i=0;i<datos.length;i++){
		    if(datos[i].estado != 0){
                    $("#"+datos[i].id_modulo).attr('checked','checked');
		    }else{
                    $("#"+datos[i].id_modulo).removeAttr('checked');
		    }
                }
                $("#celda_aceptar").show();
            },'json');
            $("#div_modulos").slideDown("slow");
        }            
    });
    
    $("input:checkbox").click(function(){
        if(this.checked){
            $.post(url+'permisos/inserta_permiso','idperfil='+$("#perfil").val()+'&idmodulo='+$(this).attr('id'))
        }else{
            $.post(url+'permisos/elimina_permiso','idperfil='+$("#perfil").val()+'&idmodulo='+$(this).attr('id'))
        }
    });
})

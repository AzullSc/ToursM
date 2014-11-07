<div class="modal-body">
<div class="navbar-inner text-center">
<table align="center">
    <tr>
        <td><label>Perfil:</label></td>
        <td>
            <select required name="perfil" id="perfil" class="form-control">
                <option value="0">Seleccione...</option>
                <?php for($i=0;$i<count($this->perfiles);$i++){ ?>
                    <option value="<?php echo $this->perfiles[$i]['id_perfil'] ?>">
			    <?php echo $this->perfiles[$i]['descripcion'] ?>
		    </option>
                <?php } ?>
            </select>
        </td>
        <td id="celda_aceptar">
            <a href="<?php echo BASE_URL ?>permisos" class="btn btn-primary btn-mini">Aceptar</a>
        </td>
    </tr>
</table>
</div>
    <div id="div_modulos" align="left" style="padding-left: 4em">
    <ul id='modulos' class="nav">
    <?php
        for($i=0;$i<count($this->modulos);$i++){
            $idmodulo=$this->modulos[$i]['id_modulo'];
            $idmodulo_padre=$this->modulos[$i]['id_modulopadre'];
            $modulo=$this->modulos[$i]['descripcion'];
            if($idmodulo_padre==0){
                echo "<li>".$modulo."<ul class='nav'>";
                for($j=0;$j<count($this->modulos);$j++){
                    if($this->modulos[$j]['id_modulopadre']==$idmodulo){
                        $id=$this->modulos[$j]['id_modulo'];
                        $descripcion=$this->modulos[$j]['descripcion'];
                        echo "<li style='margin-left: 15px'><label class='checkbox'><input type='checkbox' name='$id' id='$id'/>".$descripcion."</label></li>";
                    }
                }                
                echo "</ul></li>";
            }
        }
    ?>
    </ul>
</div>
</div> 
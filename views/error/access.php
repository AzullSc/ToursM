<h2><?php if($this->mensaje) echo $this->mensaje;?></h2>
<p>&nbsp;</p>

<?php if(Session::get('autenticado')):?>
<h2>Inicie Session</h2>
<?php endif;?>
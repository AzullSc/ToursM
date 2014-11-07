<!DOCTYPE html>
<html lang="en">
<head>
<title><?php if (isset($this->titulo)) echo $this->titulo;?></title>
<meta charset="utf-8">
<meta name="description" content="Place your description here">
<meta name="keywords" content="put, your, keyword, here">
<meta name="author" content="Templates.com - website templates provider">
<link rel="stylesheet" href="<?php echo BASE_URL;?>views/layout/web/css/reset.css" type="text/css" media="all">

<link rel="stylesheet" href="<?php echo BASE_URL;?>views/layout/default/css/bootstrap.css" type="text/css" media="all">

<link rel="stylesheet" href="<?php echo BASE_URL;?>views/layout/web/css/style.css" type="text/css" media="all">
<link rel="stylesheet" href="<?php echo BASE_URL;?>views/layout/web/font-awesome/css/font-awesome.css" type="text/css" media="all">

  <script src="<?php echo BASE_URL;?>public/js/jquery.js" type="text/javascript"></script>
    <?php if(isset($_layoutParams['js']) && count($_layoutParams['js'])): ?>
    <?php for($i=0; $i < count($_layoutParams['js']); $i++): ?>

    <script src="<?php echo $_layoutParams['js'][$i] ?>" type="text/javascript"></script>

    <?php endfor; ?>
    <?php endif; ?>
<script>
    var url = '<?php echo BASE_URL ?>';
</script>
</head>
<body id="page1">

    
  <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Tours Max</a>
    </div>
  
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">INICIO</a></li>
        <li><a href="#">QUIENES SOMOS</a></li>
        <li><a href="#">GALERIAS</a></li>
        <li><a href="#">SERVICIOS</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">Iniciar sesión</a></li>
        <li><a href=""></a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </nav>

  <!-- Modal -->
  <form action="<?php echo BASE_URL ?>login" id="newsletter-form" method="post">
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
            <h2 class="modal-title" id="myModalLabel">Iniciar Sesión</h2>
          </div>
          <div class="modal-body">
              <input class="form-control" placeholder="Usuario" name="usuario" type="usuario" autofocus>
              <br>
              <input class="form-control" placeholder="Password" name="clave" type="password" value="">
              <input type="hidden" value="1" name="guardar" />
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
            <button type="submit" class="btn btn-primary">Ingresar</button>
          </div>
        </div>
      </div>
    </div>
  </form>
   <div class="wrap">




<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title><?php if (isset($this->titulo)) echo $this->titulo;?></title>

    <!-- Core CSS - Include with every page -->
    <link href="<?php echo BASE_URL;?>views/layout/default/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo BASE_URL;?>views/layout/default/font-awesome/css/font-awesome.css" rel="stylesheet">
    
    <!-- Page-Level Plugin CSS - Dashboard -->
    <link href="<?php echo BASE_URL;?>views/layout/default/css/plugins/morris/morris-0.4.3.min.css" rel="stylesheet">
    <link href="<?php echo BASE_URL;?>views/layout/default/css/plugins/timeline/timeline.css" rel="stylesheet">
    <link href="<?php echo BASE_URL;?>views/layout/default/css/jquery-ui-1.10.4.custom.css" rel="stylesheet">
    
    <!-- SB Admin CSS - Include with every page -->
    <link href="<?php echo BASE_URL;?>views/layout/default/css/sb-admin.css" rel="stylesheet">
    
    <!-- Page-Level Plugin CSS - Tables -->
    <link href="<?php echo BASE_URL;?>views/layout/default/css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">
    
    <script src="<?php echo BASE_URL;?>public/js/jquery.js" type="text/javascript"></script>
        <?php if(isset($_params['js']) && count($_params['js'])): ?>
        <?php for($i=0; $i < count($_params['js']); $i++): ?>
        
        <script src="<?php echo $_params['js'][$i] ?>" type="text/javascript"></script>
        
        <?php endfor; ?>
        <?php endif; ?>
    <script>
	var url = '<?php echo BASE_URL ?>';
    </script>
       
</head>

<body>

    <div id="wrapper">
        <header id="estatico">
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
             <a class="navbar-brand" href="<?php echo BASE_URL ?>inicio"><?php echo APP_NAME;?></a>
            <?php if(isset($_params['menuweb'])): ?>
                            <?php for($i = 0; $i < count($_params['menuweb']); $i++): ?>
                            <?php 

                            if($item && $_params['menuweb'][$i]['id'] == $item ){ 
                                $_item_style = 'current'; 
                            } else {
                                $_item_style = '';
                            }

                            ?>
                                <a href="<?php echo $_params['menuweb'][$i]['enlace'] ?>" class="navbar-brand"><?php echo $_params['menuweb'][$i]['titulo']; ?></a>

                            <?php endfor; ?>
                            <?php endif; ?>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <!-- /.dropdown -->
                <!-- /.dropdown -->
        <!-- /.navbar-static-top -->
        <!-- /.navbar-static-side -->

        

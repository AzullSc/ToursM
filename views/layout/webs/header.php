<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title><?php if (isset($this->titulo)) echo $this->titulo;?></title>

    <!-- Core CSS - Include with every page -->
    <link href="<?php echo BASE_URL;?>views/layout/web/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo BASE_URL;?>views/layout/web/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo BASE_URL;?>views/index/css/reset.css" type="text/css" media="all">
    <link rel="stylesheet" href="<?php echo BASE_URL;?>views/index/css/style.css" type="text/css" media="all">

    <!-- Page-Level Plugin CSS - Dashboard -->
    <link href="<?php echo BASE_URL;?>views/layout/web/css/plugins/morris/morris-0.4.3.min.css" rel="stylesheet">
    <link href="<?php echo BASE_URL;?>views/layout/web/css/plugins/timeline/timeline.css" rel="stylesheet">

    <!-- SB Admin CSS - Include with every page -->
    <link href="<?php echo BASE_URL;?>views/layout/web/css/sb-admin.css" rel="stylesheet">
    
    <!-- Page-Level Plugin CSS - Tables -->
    <link href="<?php echo BASE_URL;?>views/layout/web/css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">
    
    <script src="<?php echo BASE_URL;?>public/js/jquery.js" type="text/javascript"></script>
       
</head>

<body>

    <div id="wrapper">

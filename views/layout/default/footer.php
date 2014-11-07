    </div>
        <!-- /#page-wrapper -->
    </div>
<!--     /#wrapper 

     Core Scripts - Include with every page -->
   

    <!-- Page-Level Plugin Scripts - Dashboard -->
<!--    <script src="<?php echo BASE_URL;?>views/layout/default/js/plugins/morris/raphael-2.1.0.min.js"></script>
    <script src="<?php echo BASE_URL;?>views/layout/default/js/plugins/morris/morris.js"></script>

     SB Admin Scripts - Include with every page 
    <script src="<?php echo BASE_URL;?>views/layout/default/js/sb-admin.js"></script>-->

    <!-- Page-Level Demo Scripts - Dashboard - Use for reference -->
    <!--<script src="<?php echo BASE_URL;?>views/layout/default/js/demo/dashboard-demo.js"></script>-->
    
    <!--<script src="<?php echo BASE_URL;?>views/layout/default/js/jquery-1.10.2.js"></script>-->
    <script src="<?php echo BASE_URL;?>views/layout/default/js/bootstrap.min.js"></script>
    <script src="<?php echo BASE_URL;?>views/layout/default/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="<?php echo BASE_URL;?>views/layout/default/js/jquery-ui-1.10.4.custom.min.js"></script>

    <!-- Page-Level Plugin Scripts - Tables -->
    <script src="<?php echo BASE_URL;?>views/layout/default/js/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="<?php echo BASE_URL;?>views/layout/default/js/plugins/dataTables/dataTables.bootstrap.js"></script>
    <script src="<?php echo BASE_URL;?>views/layout/default/js/validCampo.js"></script>

    <!-- SB Admin Scripts - Include with every page -->
    <script src="<?php echo BASE_URL;?>views/layout/default/js/sb-admin.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
//        $('#dataTables-example').dataTable();
        $('#dataTables-example').dataTable( {            
	"sPaginationType": "full_numbers"
    });
    
    $('#dataTables-examples').dataTable( {            
	"sPaginationType": "full_numbers"
    });
    //Modify Data Table
    $('.dataTables_wrapper .sOption').wrapAll('<div class="sOption_wrapper"></div>');
    $('.dataTables_wrapper .pagin').wrapAll('<div class="sOption_wrapper"></div>');
    });
    </script>

</body>

</html>
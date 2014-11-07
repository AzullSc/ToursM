    </div>
        <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->

    <!-- Core Scripts - Include with every page -->
   
    <script src="<?php echo BASE_URL;?>views/layout/default/js/jquery-1.10.2.js"></script>
    <script src="<?php echo BASE_URL;?>views/layout/default/js/bootstrap.min.js"></script>
    <script src="<?php echo BASE_URL;?>views/layout/default/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script type="text/javascript" src="js/jquery-1.4.2.min.js" ></script>
<script type="text/javascript" src="<?php echo BASE_URL;?>views/index/js/cufon-yui.js"></script>
<script type="text/javascript" src="<?php echo BASE_URL;?>views/index/js/cufon-replace.js"></script>
<script type="text/javascript" src="<?php echo BASE_URL;?>views/index/js/Myriad_Pro_300.font.js"></script>
<script type="text/javascript" src="<?php echo BASE_URL;?>views/index/js/Myriad_Pro_400.font.js"></script>
<script type="text/javascript" src="<?php echo BASE_URL;?>views/index/js/script.js"></script>

    <!-- Page-Level Plugin Scripts - Dashboard -->
    <script src="<?php echo BASE_URL;?>views/layout/default/js/plugins/morris/raphael-2.1.0.min.js"></script>
    <script src="<?php echo BASE_URL;?>views/layout/default/js/plugins/morris/morris.js"></script>

    <!-- SB Admin Scripts - Include with every page -->
    <script src="<?php echo BASE_URL;?>views/layout/default/js/sb-admin.js"></script>

    <!-- Page-Level Demo Scripts - Dashboard - Use for reference -->
    <script src="<?php echo BASE_URL;?>views/layout/default/js/demo/dashboard-demo.js"></script>
    
    <script src="<?php echo BASE_URL;?>views/layout/default/js/jquery-1.10.2.js"></script>
    <script src="<?php echo BASE_URL;?>views/layout/default/js/bootstrap.min.js"></script>
    <script src="<?php echo BASE_URL;?>views/layout/default/js/plugins/metisMenu/jquery.metisMenu.js"></script>

    <!-- Page-Level Plugin Scripts - Tables -->
    <script src="<?php echo BASE_URL;?>views/layout/default/js/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="<?php echo BASE_URL;?>views/layout/default/js/plugins/dataTables/dataTables.bootstrap.js"></script>

    <!-- SB Admin Scripts - Include with every page -->
    <script src="<?php echo BASE_URL;?>views/layout/default/js/sb-admin.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').dataTable();
    });
    </script>
     <script>
            function justNumbers(e) {
            var keynum = window.event ? window.event.keyCode : e.which;
            if ( keynum == 8 ) return true;
            return /\d/.test(String.fromCharCode(keynum));
            }

             function soloLetras(evt){ 

            evt = (evt) ? evt : event; 
            var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode : 
            ((evt.which) ? evt.which : 0)); 
            if (charCode > 31 && (charCode < 64 || charCode > 90) && (charCode < 97 || charCode > 122)) 
            { 
            alert(\"Solo se permiten letras en este campo.\"); 
            return false; 
            } 
            return true; 

            }
        </script>

</body>

</html>
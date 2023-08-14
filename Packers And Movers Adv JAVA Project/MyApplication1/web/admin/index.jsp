<%-- 
    Document   : index
    Created on : Mar 27, 2018, 3:32:15 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<?php
session_start();
require('../model/config.php');
include('./comnpages/loginverify.php');
?>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin :: Safex packers ans Movers</title>
	<!-- Favicon -->
    <link rel="shortcut icon" type="image/icon" href="../img/wpf-favicon.png"/>
	<!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
     <!-- MORRIS CHART STYLES-->
    <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
   
   
</head>
<body>
    <div id="wrapper">
       <!-- Begin Header Navigation -->
	   <jsp:include page="./comnpages/admin_header.html" flush="true">
     <jsp:param name="pageTitle" value="newInstance.com"/>
     <jsp:param name="pageSlogan" value=" " />
</jsp:include>
       <!-- End Header Navigation -->
	  <!-- Begin Side Navigation -->
          <jsp:include page="./comnpages/admin_sidebar.html" flush="true">
     <jsp:param name="pageSideSection" value="newInstance.com"/>
     <jsp:param name="pageSlogan" value=" " />
</jsp:include>
	  <?php 
		if(isset($_REQUEST['pid']))			
		{	
			#echo "<H1>".$_REQUEST['pid']."</H1>";
			if($_REQUEST['pid']=='sxup')
			{
				include("./model/safexuserpreview.jsp");
			}		
			else if($_REQUEST['pid']=='sxqq')
			{
				include("./model/admin_qqview.jsp");
			}
			else if($_REQUEST['pid']=='sxum')
			{
				include("./model/admin_userqueryview.jsp");
			}
			else if($_REQUEST['pid']=='sxuq')
			{
				include("./model/admin_userqueryread.jsp");
			}
			else if($_REQUEST['pid']=='sxqqv')
			{
				include("./model/admin_qqread.jsp");
			}
			else if($_REQUEST['pid']=='sxoq')
			{
				include("./model/admin_onlinequotation.jsp");
			}
			else if($_REQUEST['pid']=='sxoqv')
			{
				include("./model/admin_onlinequotationread.jsp");
			}
			else if($_REQUEST['pid']=='sxoqbyemail')
			{
				include("./model/admin_onlinequotationbyEmail.jsp");
			}
		}else{
	    include("./model/dashboard.jsp");
	  }
	  ?>
	   <!-- End Side Navigation -->       
       
	   <!-- /. PAGE WRAPPER  -->
        </div>
     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
     <!-- MORRIS CHART SCRIPTS -->
     <script src="assets/js/morris/raphael-2.1.0.min.js"></script>
    <script src="assets/js/morris/morris.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    
	
	<!-- DATA TABLE SCRIPTS -->
    <script src="assets/js/dataTables/jquery.dataTables.js"></script>
    <script src="assets/js/dataTables/dataTables.bootstrap.js"></script>
        <script>
            $(document).ready(function () {
                $('#dataTables-example').dataTable();
            });
    </script>
   
</body>
</html>


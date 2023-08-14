
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.wst.bean.SafexOnlineQuote" %>
<%@page import="com.wst.dao.SafexOnlineQuoteDAOImpl" %>
<%@page import="java.util.ArrayList" %>

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
	   <!-- Begin Header Navigation -->
	   <jsp:include page="./comnpages/admin_header.html" flush="true">
     <jsp:param name="pageTitle" value="newInstance.com"/>
     <jsp:param name="pageSlogan" value=" " />
</jsp:include>
       <!-- End Header Navigation -->
	  <!-- Begin Side Navigation -->
          
       <!-- End Header Navigation -->
	  <!-- Begin Side Navigation -->
	  <!-- TABLE STYLES-->
    <link href="assets/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
<div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Admin Dashboard :: Quick Quote</h2>   
                        <h5>Welcome <b><?php echo$_SESSION['name'];?></b>, Love to see you back. </h5>
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
                <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             Advanced Tables
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
             <%
        String str=request.getParameter("qid");
        int id=Integer.parseInt(str.trim());
        
        SafexOnlineQuoteDAOImpl daoObj=new SafexOnlineQuoteDAOImpl();
        SafexOnlineQuote obj=new SafexOnlineQuote();
        obj.setQ_quote_id(id);
        obj=daoObj.getRecordById(id);             
%>
                                    
                                    
                                    
                                    
                                    <tbody>
                                         <tr class="gradeA">    <th>Sno</th><td><% out.println(obj.getQ_quote_id());%></td></tr>
                                         <tr class="gradeA">    <th>Name</th><td><% out.println(obj.getName());%></td></tr>
					<tr class="gradeA">    <th>Email</th><td><% out.println(obj.getEmail());%></td></tr>
                                         <tr class="gradeA">    <th>Phone</th><td><% out.println(obj.getPhone());%></td></tr>
                                         <tr class="gradeA">    <th>Moving From</th><td><% out.println(obj.getMoving_from());%></td></tr>
                                         <tr class="gradeA">    <th>Moving To</th><td><% out.println(obj.getMoving_to());%></td></tr>
					 <tr class="gradeA">    <th>Moving Date</th><td><% out.println(obj.getMoving_date());%></td></tr>
					 <tr class="gradeA">    <th>Message</th><td><% out.println(obj.getMessage());%></td></tr>
					  <tr class="gradeA">    <th>Item List</th><td><% out.println(obj.getItems_quantity());%></td></tr>
                                         <tr class="gradeA">	
					                 
											
                                    </tbody>
                                </table>
                            </div>
                            
                        </div>
                    </div>
                    <!--End Advanced Tables -->
                </div>
            </div>
                <!-- /. ROW  -->
           
                      
			</div>
             <!-- /. PAGE INNER  -->
</div><!-- /. PAGE wrapper  -->
 <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
     <!-- DATA TABLE SCRIPTS -->
    <script src="assets/js/dataTables/jquery.dataTables.js"></script>
    <script src="assets/js/dataTables/dataTables.bootstrap.js"></script>
        <script>
            $(document).ready(function () {
                $('#dataTables-example').dataTable();
            });
    </script>
         <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
            
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

<%-- 
    Document   : admin_userqueryview
    Created on : Mar 27, 2018, 2:36:08 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- TABLE STYLES-->
    <link href="assets/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
<div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Admin Dashboard :: USER Query</h2>   
                        <h5>Welcome, Love to see you back. </h5>
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
                                    <thead>
                                        <tr>
                                            <th>Sno</th>
                                            <th>Name</th>
                                            <th>Subject</th>
                                            <th>Email</th>
                                            <th>Phone</th>
                                            <th>Is Read</th>
                                            <th>View</th>
                                            <th>Delete</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       <?php 
					require('../model/config.php');
					$sql = "select * from safex_query ";
					#echo$sql;
					$qdata=mysqli_query($conn,$sql);
					$count=0;
					while($row=mysqli_fetch_array($qdata))
					 {
												$count++;	
												
					 ?>
                                        <tr class="gradeA">
                                            <td><?php echo $count;?></td>
                                            <td><?php echo $row['name'];?></td>
                                            <td><?php echo $row['subject'];?></td>
                                            <td><?php echo $row['email'];?></td>
                                            <td><?php echo $row['phone'];?></td>
                                            <td><?php echo $row['isread'];?></td>
                                           <td class="center">
										   <a href="index.php?pid=sxuq&qid=<?php echo $row['queryid'];?>">
										   <span class="fa fa-file-text-o fa-2x" style="color:blue;"></span>
										   </a>
										   </td>
                                            <td class="center"><span class="fa  fa-times fa-2x" style="color:red;"></span></td>
                                        </tr>
											<?php } ?>
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
            
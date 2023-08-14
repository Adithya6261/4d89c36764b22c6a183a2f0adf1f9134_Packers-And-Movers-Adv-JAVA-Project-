<%-- 
    Document   : admin_onlinequotationread
    Created on : Mar 27, 2018, 2:29:48 PM
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
                     <h2>Admin Dashboard :: View Online Quotation</h2>   
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
							<?php 
							require('../model/config.php');
						        $id=$_REQUEST['qid'];
							$sqlselect = "select * from safex_quick_quote WHERE qquoteid='$id'";
							$sqlupdate = "update safex_quick_quote SET isread='YES' WHERE qquoteid='$id'";
						        #echo$sql;
							$qdata=mysqli_query($conn,$sqlselect);
							mysqli_query($conn,$sqlupdate);
						        while($row=mysqli_fetch_array($qdata))
							{
												
												
							 ?>
									   <tbody>
                                         <tr class="gradeA">    <th>Sno</th><td><?php echo $row['qquoteid'];?></td></tr>
                                         <tr class="gradeA">    <th>Name</th><td><?php echo $row['name'];?></td></tr>
										 <tr class="gradeA">    <th>Email</th><td><?php echo $row['email'];?></td></tr>
                                         <tr class="gradeA">    <th>Phone</th><td><?php echo $row['phone'];?></td></tr>
                                         <tr class="gradeA">    <th>Messsage</th><td><?php echo $row['movingfrom'];?></td></tr>
										 <tr class="gradeA">    <th>Subject</th><td><?php echo $row['movingto'];?></td></tr>
										 <tr class="gradeA">    <th>Subject</th><td><?php echo $row['movingdate'];?></td></tr>
										 <tr class="gradeA">    <th>Subject</th><td><?php echo $row['message'];?></td></tr>
										 <tr class="gradeA">    <th>Subject</th><td><?php echo $row['query_time'];?></td></tr>
										
										
									    <tr class="gradeA">	
										<td class="center">
										   <a href="index.php?pid=sxqq">
										   <span class="fa fa-file-text-o fa-2x" style="color:blue;"></span>
										   </a>
										   </td>
										<td class="center"><span class="fa  fa-times fa-2x" style="color:red;"></span></td>
                                                                           
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
 
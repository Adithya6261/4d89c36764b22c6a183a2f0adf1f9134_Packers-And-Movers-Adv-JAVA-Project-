<%-- 
    Document   : online-quotation
    Created on : Mar 26, 2018, 1:25:24 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
   
    <!-- Basic Page Needs========================= -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <title>Online-Quotation : SafeX Packers and Movers</title>

    <!-- Mobile Specific Metas
    ================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Favicon -->
    <link rel="shortcut icon" type="image/icon" href="img/wpf-favicon.png"/>

    <!-- CSS
    ================================================== -->       
    <!-- Bootstrap css file-->
   <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- Font awesome css file-->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- Superslide css file-->
    <link rel="stylesheet" href="css/superslides.css">
    <!-- Slick slider css file -->
    <link href="css/slick.css" rel="stylesheet"> 
    <!-- Circle counter cdn css file -->
    <link rel='stylesheet prefetch' href='https://cdn.rawgit.com/pguso/jquery-plugin-circliful/master/css/jquery.circliful.css'>  
    <!-- smooth animate css file -->
    <link rel="stylesheet" href="css/animate.css"> 
    <!-- preloader -->
    <link rel="stylesheet" href="css/queryLoader.css" type="text/css" />
    <!-- gallery slider css -->
    <link type="text/css" media="all" rel="stylesheet" href="css/jquery.tosrus.all.css" />    
    <!-- Default Theme css file -->
    <link id="switcher" href="css/themes/default-theme.css" rel="stylesheet">
    <!-- Main structure css file -->
    <link href="style.css" rel="stylesheet">
   
    <!-- Google fonts -->
    <link href='http://fonts.googleapis.com/css?family=Merriweather' rel='stylesheet' type='text/css'>   
    <link href='http://fonts.googleapis.com/css?family=Varela' rel='stylesheet' type='text/css'>    

    
	<style>
		p{
			text-align:justify;
		}
		
		.forms{
			width:90%;
			padding:15px 5px;
			display:inline-block;
			float:left;
		}
		.forms table{
			width:100%;
			border:0px;
		}
		.forms table td{
			padding:8px;
			border:0px;
		}
		.forms table tr td:first-child{
			width:30%;
		}
		.forms_input{
			width:90%;height:45px;
			padding: inherit;
			border-radius:5px;
			border-width:2px;			
		}
		.forms_textarea{
			width:90%;height:90px;
			paddind:inherit;
			border-radius:5px;
			border-width:1px;
			box-shadow: 1px 1px 0px #9a9a9a inset;
		}
		.online-quotation-tab{
			width:100%;
			padding:15px 0px;
			display:inline-block;
			float:left;
		}
		.online-quotation-tab table{
			width:100%;
			border:1px solid black;
		}
		
		.online-quotation-tab th{
			background-color:#205e54; color:white;
		}
		.online-quotation-tab table th,td{
			border:1px solid black;
			border-collaps:collaps;
			padding:7px 10px;
			font-size:16px;
		}
		.submit{
			margin:30px 0px 0px 0px;
		}
	</style>
  </head>
  <body> 

    <!-- SCROLL TOP BUTTON -->
    <a class="scrollToTop" href="#"></a>
    <!-- END SCROLL TOP BUTTON -->

    <!--=========== BEGIN HEADER SECTION ================-->
    <jsp:include page="./comnpages/header.html" flush="true">
     <jsp:param name="pageTitle" value="newInstance.com"/>
     <jsp:param name="pageSlogan" value=" " />
</jsp:include>
	<!--=========== END HEADER SECTION ================--> 

    <!--=========== BEGIN COURSE BANNER SECTION ================-->
    <section id="imgBanner">
      <h2>Online Quotation</h2>
    </section>
    <!--=========== END COURSE BANNER SECTION ================-->
    <!--=========== BEGIN Online Quotation SECTION ================-->
    <section id="aboutUs">
      <div class="container">
        <div class="row">
			<form action="./OnlineQuote" method="post">

        <!-- Start Office/Corporate Shifting Services area -->
        <div class="col-lg-8 col-md-12 col-sm-12">
          <div class="aboutus_area wow fadeInLeft">
            <h2 class="titile">Online Quotation</h2>
			<hr>
			<div class="forms">
			     
				<table>
					<tr>
						<td>Name*:</td>					
						<td><input class="forms_input" name="Name" placeholder="Enter Name" type="text" required/></td>			
					</tr>
					<tr>
						<td>Company Name:</td>					
						<td><input class="forms_input" name="CompanyName" placeholder="Enter Company Name" type="text"  /></td>		
					</tr>
					<tr>
						<td>Moving Form City*:</td>					
						<td><input class="forms_input" name="Sendfrom" placeholder="Enter Send Form" type="text" required/></td>		
					</tr>
					<tr>
						<td>Moving To City*:</td>					
						<td><input class="forms_input" name="Sendto" placeholder="Enter Send To" type="text" required/></td>		
					</tr>
					<tr>
						<td>Moving Date*:</td>					
						<td><input class="forms_input" name="MoveDate" placeholder="(mm/dd/yyyy)" type="date" required/></td>		
					</tr>
					<tr>
						<td>Email*:</td>					
						<td><input class="forms_input" name="Email" placeholder="Enter Email" type="email" required/></td>		
					</tr>
					<tr>
						<td>Phone*:</td>					
						<td><input class="forms_input" name="phone" placeholder="Enter Contact No" type="text" required /></td>		
					</tr>
					<tr>
						<td style="vertical-align:top;">Specify your Inquiry:</td>					
						<td><textarea class="forms_textarea" name="SpecifyyourInquiry" placeholder="Specify your Inquiry"></textarea></td>		
					</tr>
				</table>
				
			</div>
			</div>
			</div>
			
			
			
			 <div class="col-lg-4 col-md-12 col-sm-12">
          <div class="aboutus_area wow fadeInLeft">
           
			<div class="forms">
                            <% String item="please select Items";%>
<% if(request==null){
    item="no";
}
else{
  item=request.getParameter("item");
}
%>
			     
				<table style="margin-top:55px;">
					<tr>
						<td>Selected Items*:</td>		</tr>			
					<tr>	
					<td>
						<textarea class="forms_textarea" name="selectedItems" placeholder="Please Select Items From Below List"  style="height: 513px;width: 100%;" readonly> <% out.println(item); %> </textarea>
					</td>			
					</tr>
					<tr>
						<td><div class="submit"><input type="submit" value="Submit Your Quotation" name="btn_sub_onlineq" class="wpcf7-submit"></div>
						</td>		
						</tr>			
					
				</table>
			</div>
			</div>
			</div>
			</form>
<!--    ===============Item List==================    -->			
	
			<div class="col-lg-12 col-md-12 col-sm-12">
			<hr style="border-top: 2px solid #313b3d;">
			<div class="aboutus_area wow fadeInLeft">
			<div class="online-quotation-tab table-responsive">				
				<h2 style="color:#2890ea;text-align:center;">Please select list of Items and articles that need to be moved</h2>
			</div></div></div>	
			<form action="./onlineQuotationListItem" method="post">
			
	<!-- ./  ++++++++++++++++++  1st Data SET ++++++++++++++++++++++ -->
	
			<div class="col-lg-4 col-md-12 col-sm-12">			
			<div class="aboutus_area wow fadeInLeft">
			<div class="online-quotation-tab table-responsive">	
			<table class="table">
				<thead>	
					<tr>
					  <th>ITEMS</th>
					  <th>QTY</th>
					  
					  </tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="checkbox" name="ckbok[]" value="tv-led-lcd" />
								T.V/LED/LCD:
						</td>
						<td>
							<select name="tv-led-lcd-qty" aria-invalid="false">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="10+">10+</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="ckbok[]" value="tv-trolly" />
								T.V. Trolly:
						</td>
						<td>
							<select name="tv-trolly-qty" aria-invalid="false">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="10+">10+</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="ckbok[]" value="refrigerator-single-door" />
								Refrigerator (Single Door):
						</td>
						<td>
							<select name="refrigerator-single-door-qty" aria-invalid="false">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="10+">10+</option>
							</select>
						</td>
					</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="refrigerator-double-door" />
									Refrigerator (Double Door):
							</td>
							<td>
								<select name="refrigerator-double-door-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
						<td><input type="checkbox" name="ckbok[]" value="washing-machine" />
								Washing Machine:
						</td>
						<td>
							<select name="washing-machine-qty" aria-invalid="false">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="10+">10+</option>
							</select>
						</td>
					</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="sofa-3-sitter" />
									Sofa 3 sitter:
							</td>
							<td>
								<select name="sofa-3-sitter-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
						<td><input type="checkbox" name="ckbok[]" value="sofa-2-sitter" />
								Sofa 2 sitter:	
						</td>
						<td>
							<select name="sofa-2-sitter-qty" aria-invalid="false">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="10+">10+</option>
							</select>
						</td>
					</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="sofa-1-sitter" />
									 Sofa Single Sitter:
							</td>
							<td>
								<select name="sofa-1-sitter-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value=" sofa-cum-bed" />
									 Sofa Cum Bed:
							</td>
							<td>
								<select name="sofa-cum-bed-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="center-table" />
									 Center Table:
							</td>
							<td>
								<select name="center-table-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="music-system" />
									 Music System:
							</td>
							<td>
								<select name="music-system-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="double-cot-box-type" />
									Double Cot (Box Type):
							</td>
							<td>
								<select name="double-cot-box-type-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="double-cot-dismantle" />
									 Double Cot (Dismantle):
							</td>
							<td>
								<select name="double-cot-dismantle-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="single-cot-box-type" />
									Single Cot (Box Type):	
							</td>
							<td>
								<select name="single-cot-box-type-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="single-cot-diwan" />
									Single Cot /Diwan:	
							</td>
							<td>
								<select name="single-cot-diwan-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="dinning-table-6-1" />
									Dinning Table (6+1):
							</td>
							<td>
								<select name="dinning-table-6-1-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="dinning-table-4-1" />
									 Dinning Table (4+1):
							</td>
							<td>
								<select name="dinning-table-4-1-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="almirah-big" />
									Almirah Big:	
							</td>
							<td>
								<select name="almirah-big-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="almirah-small" />
									Almirah Small:	
							</td>
							<td>
								<select name="almirah-small-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="dressing-table" />
									 Dressing Table:
							</td>
							<td>
								<select name="dressing-table-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="mattress" />
									 Mattress:
							</td>
							<td>
								<select name="mattress-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="beddings-cotton" />
									Beddings (Cotton One):
							</td>
							<td>
								<select name="beddings-cotton-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="computer" />
									Computer:
							</td>
							<td>
								<select name="computer-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="computer-table" />
									 Computer Table:
							</td>
							<td>
								<select name="computer-table-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="printer" />
									Printer:
							</td>
							<td>
								<select name="printer-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="clothes-C-B" />
									Clothes C/B:
							</td>
							<td>
								<select name="clothes-C-B-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="baby-cot" />
									Baby Cot:	
							</td>
							<td>
								<select name="baby-cot-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="toys-C-B" />
									 Toys C/B:	
							</td>
							<td>
								<select name="toys-C-B-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					
				</tbody>
			</table>
			</div><!-- ./table-responsive-->
			</div><!-- ./fadeInLeft-->
			</div> <!-- ./ col-lg-4 -->
			
<!-- ./  ++++++++++++++++++  2nd Data SET ++++++++++++++++++++++ -->
			
			<div class="col-lg-4 col-md-12 col-sm-12">			
			<div class="aboutus_area wow fadeInLeft">
			<div class="online-quotation-tab table-responsive">	
			<table class="table">
				<thead>	
					<tr>
					  <th>ITEMS</th>
					  <th>QTY</th>
					  
					  </tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="checkbox" name="ckbok[]" value="utensils-cartoon-box" />
								Utensils (Cartoon Box):
						</td>
						<td>
							<select name="utensils-cartoon-box-qty" aria-invalid="false">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="10+">10+</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="ckbok[]" value="micro-oven" />
								Micro Oven:
						</td>
						<td>
							<select name="micro-oven-qty" aria-invalid="false">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="10+">10+</option>
							</select>
						</td>
					</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="gas-stove" />
									Gas Stove:
							</td>
							<td>
								<select name="gas-stove-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="dish-washer" />
									Dish Washer:
							</td>
							<td>
								<select name="dish-washer-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="kitchen-rack" />
									Kitchen Rack:
							</td>
							<td>
								<select name="kitchen-rack-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="o-t-g" />
									O.T.G:	
							</td>
							<td>
								<select name="o-t-g-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="water-filter" />
									Water Filter:
							</td>
							<td>
								<select name="water-filter-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="grinder-mixer-juicer" />
									Grinder/Mixer/Juicer:
							</td>
							<td>
								<select name="grinder-mixer-juicer-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="water-filter-aqua-guard" />
									Water Filter/Aqua Guard:
							</td>
							<td>
								<select name="water-filter-aqua-guard-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="suitcase" />
									Suitcase:
							</td>
							<td>
								<select name="suitcase-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="bag" />
									Bag:
							</td>
							<td>
								<select name="bag-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="show-case-big" />
									Show Case (Big):
							</td>
							<td>
								<select name="show-case-big-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="show-case-small" />
									Show Case (Small):
							</td>
							<td>
								<select name="show-case-small-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="crockery-c-b" />
									Crockery C/B:
							</td>
							<td>
								<select name="crockery-c-b-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="trunk-iron" />
									Trunk Iron:
							</td>
							<td>
								<select name="trunk-iron-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="trunk-wooden" />
									Trunk Wooden:
							</td>
							<td>
								<select name="trunk-wooden-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="shoe-rack" />
									Shoe Rack:	
							</td>
							<td>
								<select name="shoe-rack-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="iron-rack" />
									Iron Rack:	
							</td>
							<td>
								<select name="iron-rack-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="book-rack" />
									Book Rack:	
							</td>
							<td>
								<select name="book-rack-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="file-rack" />
									File Rack:	
							</td>
							<td>
								<select name="file-rack-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="cloth-stand" />
									Cloth Stand:	
							</td>
							<td>
								<select name="cloth-stand-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="FAX-machine" />
									FAX Machine:
							</td>
							<td>
								<select name="FAX-machine-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="Servers" />
									Servers:
							</td>
							<td>
								<select name="Servers-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="UPS" />
									UPS:
							</td>
							<td>
								<select name="UPS-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="Invertors" />
									Invertors:	
							</td>
							<td>
								<select name="Invertors-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="Vacuum-Cleaner" />
									Vacuum Cleaner:
							</td>
							<td>
								<select name="Vacuum-Cleaner-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="Miscellaneous-C-B" />
									Miscellaneous C/B:
							</td>
							<td>
								<select name="Miscellaneous-C-B-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					<tr>
							<td><input type="checkbox" name="ckbok[]" value="Drum" />
									Drum:	
							</td>
							<td>
								<select name="Drum-qty" aria-invalid="false">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="10+">10+</option>
								</select>
							</td>
						</tr>
					</tbody>
			</table>
			</div><!-- ./table-responsive-->
			</div><!-- ./fadeInLeft-->
			</div> <!-- ./ col-lg-4 -->
			
	<!-- ./  ++++++++++++++++++  3rd Data SET ++++++++++++++++++++++ -->	
	
			<div class="col-lg-4 col-md-12 col-sm-12">			
			<div class="aboutus_area wow fadeInLeft">
			<div class="online-quotation-tab table-responsive">	
			<table class="table">
				<thead>	
					<tr>
					  <th>ITEMS</th>
					  <th>QTY</th>
					  
					  </tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="checkbox" name="ckbok[]" value="Chairs-Plastic" />
								Chairs (Plastic):
						</td>
						<td>
							<select name="Chairs-Plastic-qty" aria-invalid="false">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="10+">10+</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="ckbok[]" value="Chair-Wooden" />
								Chair (Wooden):	
						</td>
						<td>
							<select name="Chair-Wooden-qty" aria-invalid="false">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="10+">10+</option>
							</select>
						</td>
					</tr>
					
					<tr>
						<td><input type="checkbox" name="ckbok[]" value="Chair-Folding" />
								Chair (Folding):	
						</td>
						<td>
							<select name="Chair-Folding-qty" aria-invalid="false">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="10+">10+</option>
							</select>
						</td>
					</tr>
					
					<tr>
						<td><input type="checkbox" name="ckbok[]" value="Chair-Rocking" />
								Chair (Rocking):	
						</td>
						<td>
							<select name="Chair-Rocking-qty" aria-invalid="false">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="10+">10+</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="ckbok[]" value="Chair-Iron" />
								Chair (Iron):	
						</td>
						<td>
							<select name="Chair-Iron-qty" aria-invalid="false">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="10+">10+</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="ckbok[]" value="Chest-of-Drawers" />
								Chest of Drawers:	
						</td>
						<td>
							<select name="Chest-of-Drawers-qty" aria-invalid="false">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="10+">10+</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="ckbok[]" value="Geysers" />
								Geysers:
						</td>
						<td>
							<select name="Geysers-qty" aria-invalid="false">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="10+">10+</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="ckbok[]" value="Aquarium" />
								Aquarium:	
						</td>
						<td>
							<select name="Aquarium-qty" aria-invalid="false">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="10+">10+</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="ckbok[]" value="Mirror" />
								Mirror:	
						</td>
						<td>
							<select name="Mirror-qty" aria-invalid="false">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="10+">10+</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="ckbok[]" value="Bean-Bag" />
								Bean Bag:	
						</td>
						<td>
							<select name="Bean-Bag-qty" aria-invalid="false">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="10+">10+</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="ckbok[]" value="Trade-Mill" />
								Trade Mill:	
						</td>
						<td>
							<select name="Trade-Mill-qty" aria-invalid="false">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="10+">10+</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="ckbok[]" value="Exercise-Cycle" />
								Exercise Cycle:	
						</td>
						<td>
							<select name="Exercise-Cycle-qty" aria-invalid="false">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="10+">10+</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="ckbok[]" value="Sewing-Machine" />
								Sewing Machine:
						</td>
						<td>
							<select name="Sewing-Machine-qty" aria-invalid="false">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="10+">10+</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="ckbok[]" value="Table" />
								Table:	
						</td>
						<td>
							<select name="Table-qty" aria-invalid="false">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="10+">10+</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="ckbok[]" value="Wall-Frames" />
								Wall Frames:	
						</td>
						<td>
							<select name="Wall-Frames-qty" aria-invalid="false">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="10+">10+</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="ckbok[]" value="Paintings" />
								Paintings:	
						</td>
						<td>
							<select name="Paintings-qty" aria-invalid="false">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="10+">10+</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="ckbok[]" value="Flower-Pots" />
								Flower Pots:
						</td>
						<td>
							<select name="Flower-Pots-qty" aria-invalid="false">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="10+">10+</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="ckbok[]" value="Vase" />
								Vase:
						</td>
						<td>
							<select name="Vase-qty" aria-invalid="false">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="10+">10+</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="ckbok[]" value="Ceiling-Fan" />
								Ceiling Fan:
						</td>
						<td>
							<select name="Ceiling-Fan-qty" aria-invalid="false">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="10+">10+</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="ckbok[]" value="Table-Fan" />
								Table Fan:
						</td>
						<td>
							<select name="Table-Fan-qty" aria-invalid="false">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="10+">10+</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="ckbok[]" value="Bicycle" />
								Bicycle:
						</td>
						<td>
							<select name="Bicycle-qty" aria-invalid="false">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="10+">10+</option>
							</select>
						</td>
					</tr>
					
					<tr>
						<td><input type="checkbox" name="ckbok[]" value="Bike" />
								Bike:
						</td>
						<td>
							<select name="Bike-qty" aria-invalid="false">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="10+">10+</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="ckbok[]" value="Scooter-Scooty" />
								Scooter/ Scooty:
						</td>
						<td>
							<select name="Scooter-Scooty-qty" aria-invalid="false">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="10+">10+</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="ckbok[]" value="Car-Mid-Range" />
								Car (Mid-Range):
						</td>
						<td>
							<select name="Car-Mid-Range-qty" aria-invalid="false">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="10+">10+</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="ckbok[]" value="Car-Big" />
								Car Big:
						</td>
						<td>
							<select name="Car-Big-qty" aria-invalid="false">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="10+">10+</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="ckbok[]" value="Books-Cartoon-Box" />
								Books (Cartoon Box):
						</td>
						<td>
							<select name="Books-Cartoon-Box-qty" aria-invalid="false">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="10+">10+</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="ckbok[]" value="Cooler" />
								Cooler:
						</td>
						<td>
							<select name="Cooler-qty" aria-invalid="false">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="10+">10+</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="ckbok[]" value="AC" />
								A.C.:
						</td>
						<td>
							<select name="AC-qty" aria-invalid="false">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="10+">10+</option>
							</select>
						</td>
					</tr>
				</tbody>
			</table>
			</div><!-- ./table-responsive-->
			</div><!-- ./fadeInLeft-->
			</div> <!-- ./ col-lg-4 -->
				
			
				
			<div class="submit"><input type="submit" value="Submit Selected Items" name="btn_sub_itemlist" class="wpcf7-submit" ></div>
				
			</div>
          </div>
        </div>
		
        </form>
      </div>
      </div>
    </section>
    <!--=========== END Online-Quotation Services SECTION ================-->    
    
    <!--=========== BEGIN FOOTER SECTION ================-->
    <jsp:include page="./comnpages/footer.html" flush="true">
     <jsp:param name="pageBottom" value="newInstance.com"/>
     <jsp:param name="pageSlogan" value=" " />
</jsp:include>	<!--=========== END FOOTER SECTION ================--> 

  

    <!-- Javascript Files
    ================================================== -->

    <!-- initialize jQuery Library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <!-- Preloader js file
    <script src="js/queryloader2.min.js" type="text/javascript"></script>
    <!-- For smooth animatin  -->
    <script src="js/wow.min.js"></script>  
    <!-- Bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- slick slider -->
    <script src="js/slick.min.js"></script>
    <!-- superslides slider -->
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/jquery.animate-enhanced.min.js"></script>
    <script src="js/jquery.superslides.min.js" type="text/javascript" charset="utf-8"></script>   
    <!-- for circle counter -->
    <script src='https://cdn.rawgit.com/pguso/jquery-plugin-circliful/master/js/jquery.circliful.min.js'></script>
    <!-- Gallery slider -->
    <script type="text/javascript" language="javascript" src="js/jquery.tosrus.min.all.js"></script>   
   
    <!-- Custom js-->
    <script src="js/custom.js"></script>
    

  </body>
</html>
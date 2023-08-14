<%-- 
    Document   : login
    Created on : Mar 27, 2018, 3:33:41 PM
    Author     : user
--%>



<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>SAFEX |Admin-Log in</title>
   <!-- Icon -->
  <link rel="icon" href="../img/icon.png" type="image/x-icon">
   <!-- Mobile Specific Metas
    ================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
 <!-- Bootstrap css file-->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
   
  
  <style>
  /*
  login-box-body {
    background: #19345a;
    padding: 20px;
    border-top: 0;
    color: #666;
    border-radius: 10px;
    box-shadow: 2px 1px 17px #4CAF50;
  
  */
  
  
  
	.login-box{
		    width: 360px;
    margin: 30px auto;
	}
	body{
		background-color:#11161c;
	}
	
	.login-box-body{
		    
	background: #19345a;
    padding: 20px;
    border-top: 0;
    color: #666;
    border-radius: 10px;
    box-shadow: 2px 1px 17px #04c1de;
	}
	.login_form{
		display:inline-block;
		width: 93%;
		margin-top: -20px;
	}
	.login-box-msg{
		margin: 0;
		text-align: center;
		padding: 0 20px 20px 20px;
	}
	.form-group{
		margin-bottom: 15px;
		padding: 25px 10px;
	}
	.form-control{
		display: block;
		float:left;
		width: 100%;
		height: 30px;
		padding: 6px 12px;
		font-size: 14px;
		line-height: 1.42857143;
		color: #555;
		background-color: #fff;
		background-image: none;
		border: 1px solid #ccc;
	}
	.checkbox{
		position: relative;
		display:block;
		margin-top: 20px;
		margin-bottom: 10px;
	}
	.checkbox label{
		min-height: 20px;
		padding-left: 26px;
		margin-bottom: 0;
		font-weight: 400;
		cursor: pointer;
	}
	.checkbox input[type=checkbox]{
		width: 22px;
		height: 22px;
		border: none;
		cursor: pointer;
		margin: 0;
		margin-left: -10px;
		padding: 0;
		vertical-align: middle;
	}
	.btn{
		display: inline-block;
		float: right;
		margin-top: 5px;
		padding: 5px 10px;
		background-color: #10a820;
		color: #faffbd;
		border: 1px solid;
		width: 132px;
		height: 48px;
		font-size: 20px;
		font-weight: bolder;
		box-shadow: 3px 3px 3px #049a1d;
	}
	.login-logo{
		
			width:660px;
			margin:auto;
		}
	a.title{
		    text-decoration: none;
			font-size: 42px;
			color: #eeeef2;
			text-shadow: #109fc1 7px 8px 15px;
			}
			.form-control-feedback {
					position: absolute;
					top: 23px;
					ight: 5px;}
			.logoimg a img{margin-top: 40px; margin-left: 212px;}
			
			@media screen and (max-width: 720px){
				.login-box{width:100%;	}
				.login-logo{width:100%;height:auto;text-align:center;	}
				.logoimg a img{margin-top: 40px; margin-left: 2px;}
			}
			
  </style>
  
</head>
<body class="hold-transition login-page">

<div class="login-logo ">
	<div class="logoimg">
		<a href="../index.php">
			<img src="../img/logo.png" style="width:190px;" alt="logo">
		</a> 
	</div>
	
    <a class="title" href="index2.html"><b>SAFEX PACKERS AND MOVERS</b></a>
 
  </div>
<div class="login-box">  
  <!-- /.login-logo -->
  <div class="login-box-body">
    <p class="login-box-msg">Sign in to start your session</p>

    <form class="login_form" action="./logincheck" method="post">
      <div class="form-group has-feedback">
        <input type="email" name="emailid" class="form-control" placeholder="Email">
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="password"  name="password" class="form-control" placeholder="Password">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="row">
        <div class="col-xs-8">
          <div class="checkbox icheck">
		  <input type="checkbox" name="remember"> 
            <label for="remember">Remember Me</label>
			
          </div>
        </div>
        <!-- /.col -->
        <div class="col-xs-4">
          <button type="submit" name="btn_login" class="btn btn-primary btn-block btn-flat">Sign In</button>
        </div>
        <!-- /.col -->
      </div>
    </form>
  </div>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

</body>
</html>

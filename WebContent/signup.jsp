<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login V17</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	
	
<!--===============================================================================================-->	
	<link href="img/Blood.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="lib/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form action="Signup" method="post" class="login100-form validate-form" style="padding-top: 20px;">
					<span class="login100-form-title p-b-34">
						Account Sign Up
						
					</span>
					<%
    				if(null!=request.getAttribute("success"))
    					{
    				%>
    				<div class="container text-center">
    				<div class="alert alert-success" role="alert">
  						<label>${success}</label>
					
       			 	</div>
       				 </div>
       			 	<%
       			 	}
					
					%>
					
					
					<div class="wrap-input100 validate-input m-b-20" data-validate="Type user name">
					
						<input class="input100" type="text" id="name"  placeholder="Full Name"  name="fulName" autofocus required>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-20" data-validate="Type user name">
						<input class="input100" id="email" type="email"  placeholder="Email"  name="email" required>
						<span class="focus-input100"></span>
					</div>
					
                    
                    <div class="wrap-input100 validate-input m-b-20" data-validate="Type user name">
                      <input class="input100" type="tel" id="phone" pattern="[0-9]{3}[0-9]{2}[0-9]{5}" placeholder="Mobile No." class="form-contro" name="tno" required>
                        <span class="focus-input100"></span>
                    </div>
					
					
					
					
					<div class="wrap-input100 validate-input m-b-20" data-validate="Type password">
						<input class="input100" type="password"  name="pass" placeholder="Password" required="required">
						<span class="focus-input100"></span>
					</div>
					
					
					
					<div class="container-login100-form-btn">
					
						<button class="login100-form-btn"  >
							Sign Up
						</button>
					</div>

					<div class="w-full text-center p-t-27 p-b-239">
						

						
					</div>

					
					<div class="w-full text-center">
						<a href="index.jsp" class="txt3">
							Login
						</a>
					</div>
				</form>
				
				<div class="login100-more" style="background-image: url('img/12.jpg');"></div>
			
			</div>
		</div>
	</div>
	
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<script>
		$(".selection-2").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect1')
		});
	</script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>
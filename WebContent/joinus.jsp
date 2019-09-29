<%@page import="java.sql.ResultSet"%>
<%@page import="com.fazaal.Database"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Blood Bank</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="img/Blood.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/animate/animate.min.css" rel="stylesheet">
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
 
  <!-- Main Stylesheet File -->
  <link href="css/style.css" rel="stylesheet">

  <!-- =======================================================
    Theme Name: NewBiz
    Theme URL: https://bootstrapmade.com/newbiz-bootstrap-business-template/
    Author: BootstrapMade.com
    License: https://bootstrapmade.com/license/
  ======================================================= -->
   
</head>

<body>

  <!--==========================
  Header
  ============================-->
  <header id="header" class="fixed-top">
    <div class="container">

      <div class="logo float-left">
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <h1 class="text-light"><a href="#header"><span>NewBiz</span></a></h1> -->
        <a href="#intro" class="scrollto"></a>
      </div>

      <nav class="main-nav float-right d-none d-lg-block">
        <ul>
          <li class="active"><a href="welcomepage.jsp#intro">Home</a></li>
          <li><a href="welcomepage.jsp#about">About Us</a></li>
          <li><a href="welcomepage.jsp#services">Services</a></li>
          <li><a href="welcomepage.jsp#contact">Contact Us</a></li>  
          <li><a><i class="fa fa-user" style="font-size: 25px; "></i></a></li>
          <li style="padding-top: 5px;"> <form action="logout.jsp"><button class="btn btn-dark">LogOut</button></form></li>
         	
        </ul>
      </nav><!-- .main-nav -->
      
    </div>
  </header><!-- #header -->

  <section id="" class="clearfix">
    <div class="container">

        </div> <!-- ./container -->
    
</section>
<br>
<br>
<br>
<br>
<br>
<br>
<br>


<section  class="clearfix">
    <div class="container">


<form action="Uregister" method="post" class="form-horizontal" role="form">
  <br>
  
 
  
                <h2 style="text-align: center; color: red"><strong style="font-family:cursive;">REGISTER AND SAVE A LIFE</strong></h2>
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
                <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label"><strong>Full Name</strong></label>
                    <div class="col-sm-9">
                        <input type="text" id="firstName" placeholder="Full Name" class="form-control" name="fulName" autofocus required>
                        <span class="help-block">Last Name, First Name, eg.: Smith, Harry</span>
                    </div>
                </div>
                
                
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label"><strong>Email</strong></label>
                    <div class="col-sm-9">
                        <input type="email" id="email" placeholder="Email" class="form-control" name="email" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-3 control-label"><strong>Telephone Number</strong></label>
                    <div class="col-sm-9">
                      <input type="tel" id="phone" pattern="[0-9]{3}[0-9]{2}[0-9]{5}" placeholder="Mobile No." class="form-contro" name="tno" required>
                        
                    </div>
                </div>
                <div class="form-group">
                    <label for="birthDate" class="col-sm-3 control-label"><strong>Date of Birth</strong></label>
                    <div class="col-sm-9">
                        <input type="date" id="birthDate" class="form-control" name="dob" required>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label"><strong>Address</strong></label>
                    <div class="col-sm-9">
                        <input type="text" id="firstName" placeholder="Address" class="form-control" name="address" required="required">
                        
                    </div>
                </div>
                
                
                
           <!----------------------------- country city open ------------------------------------->        
                <script>
                
                
                
                </script>
				<div class="form-group">
                    <label for="country" class="col-sm-3 control-label"><strong>Country</strong></label>
                    <div class="col-sm-9">
                 <% ResultSet rs1 = Database.getData("select * from country"); %>   
                <select name="country" id="input" onchange="random()">
               <option >Select a Your Country</option>
                <% while(rs1.next()){%>
                	
                		<option><%=rs1.getString("country_name") %></option>
                		
                    <%} %>      
                </select>
                 </div>
                </div> <!-- /.form-group -->
                
                <div class="form-group">
                <label for="city" class="col-sm-3 control-label"><strong>City</strong></label>
                <div  class="col-sm-9" id="output">
                <select></select>
                </div>
                </div> <!-- /.form-group -->
                
               
                
                
                
               
 <!----------------------------- country city close ------------------------------------->               
                
                
                
                
                
                
                <div class="form-group">
                    <label class="control-label col-sm-3"><strong>Gender</strong></label>
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" id="femaleRadio" value="Female" name="gender">Female
                                </label>
                            </div>
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" id="maleRadio" value="Male" name="gender">Male
                                </label>
                            </div>
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" id="uncknownRadio" value="Unknown" name="gender">Unknown
                                </label>
                            </div>
                        </div>
                    </div>
                </div> <!-- /.form-group -->
                
                
                

                <div class="form-group">
                    <label for="country" class="col-sm-3 control-label"><strong>Blood Group</strong></label>
                    <div class="col-sm-9">
                        <select id="country" class="form-control" name="bgroup">

                            <option>Select a blood group</option>
                            <option>A+</option>
                            <option>B+</option>
                            <option>O+</option>
                            <option>AB+</option>
                            <option>A-</option>
                            <option>O-</option>
                            <option>B-</option>
                            <option>AB-</option>
                            
                        </select>
                    </div>
                </div> <!-- /.form-group -->
                <br>

                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                        <button type="submit" class="btn btn-primary btn-block" style="width: 200px; margin-left: auto; margin-right: auto;">Register</button>
                    </div>
                </div>
            </form> <!-- /form -->
            
        </div> <!-- ./container -->
    
</section>

  <!--====================================================================================================
    Footer
  =====================================================================================================-->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-4 col-md-6 footer-info">
            <h3>Blood Bank</h3>
            <p>Each day, thousands of people – people just like you – provide compassionate care to those in need. Our network of generous donors, volunteers and employees share a mission of preventing and relieving suffering, here at home and around the world.</p>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><a href="welcomepage.jsp">Home</a></li>
              <li><a href="welcomepage.jsp##about">About us</a></li>
              <li><a href="welcomepage.jsp##services">Services</a></li>
              <li><a href="#">Terms of service</a></li>
              <li><a href="#">Privacy policy</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-contact">
            <h4>Contact Us</h4>
            <p>
              NO.104/3 <br>
              Hospital Garden, Nikaweratiya<br>
              Sri Lanka <br>
              <strong>Phone:</strong> +9476 7677766<br>
              <strong>Email:</strong> shaidfazaal@gmail.com<br>
            </p>

            <div class="social-links">
              <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
              <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
              <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
              <a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
              <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
            </div>

          </div>

          <div class="col-lg-3 col-md-6 footer-newsletter">
            <h4>Our Newsletter</h4>
            <p>We roll up our sleeves and donate time, money and blood. We learn or teach life-saving skills so our communities can be better prepared when the need arises. We do this every day because the Red Cross is needed - every day</p>
            <form action="" method="post">
              <input type="email" name="email"><input type="submit"  value="Subscribe">
            </form>
          </div>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong>BloodBank</strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!--
          All the links in the footer should remain intact.
          You can delete the links only if you purchased the pro version.
          Licensing information: https://bootstrapmade.com/license/
          Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=NewBiz
        -->
        Designed by <a href="https://bootstrapmade.com/">Shahid Fazaal</a>
      </div>
    </div>
  </footer><!-- #footer -->

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
  <!-- Uncomment below i you want to use a preloader -->
  <!-- <div id="preloader"></div> -->

  <!-- JavaScript Libraries -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/jquery/jquery-migrate.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="lib/easing/easing.min.js"></script>
  <script src="lib/mobile-nav/mobile-nav.js"></script>
  <script src="lib/wow/wow.min.js"></script>
  <script src="lib/waypoints/waypoints.min.js"></script>
  <script src="lib/counterup/counterup.min.js"></script>
  <script src="lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="lib/isotope/isotope.pkgd.min.js"></script>
  <script src="lib/lightbox/js/lightbox.min.js"></script>
  <!-- Contact Form JavaScript File -->
  <script src="contactform/contactform.js"></script>
<script src="lib/myjs.js"></script>
  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>

</body>
</html>

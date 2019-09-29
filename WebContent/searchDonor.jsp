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
        <a href="#intro" class="scrollto"><img src="img/logo.png" alt="" class="img-fluid"></a>
      </div>

      <nav class="main-nav float-right d-none d-lg-block">
        <ul>
          <li class="active"><a href="welcomepage.jsp#intro">Home</a></li>
          <li><a href="welcomepage.jsp#about">About Us</a></li>
          <li><a href="welcomepage.jsp#services">Services</a></li>
          <li><a href="welcomepage.jsp#contact">Contact Us</a></li>  
          <li><a><i class="fa fa-user" style="font-size: 25px; "></i></a></li>
          <li style="padding-top: 5px;"> <form action="logout.jsp"><button class="btn btn-dark">LogOut</button>     </form></li>
         	
        </ul>
      </nav><!-- .main-nav -->
      
    </div>
  </header><!-- #header -->

  <section id="intro" class="clearfix">
    <div class="container">
    
        </div> <!-- ./container -->
    
</section>
 <br>
 <br>
    <div class="container" style="height: 150px">
    <form action="searchDonor.jsp" method="post">
    <div class="row">
	    <div class="col-6"><h2>Enter The Blood Group</h2>
	    </div>
	    </div>
	   
	    
	    
	    <!-- ------------country open----------------------- -->
	    <div class="row">
	    <div >
	    	    <% ResultSet rs1 = Database.getData("select * from country");  %>
		<div class="input-group input-group-sm mb-3">
		<div class="input-group-prepend">
		&nbsp&nbsp&nbsp&nbsp<span class="input-group-text" id="inputGroup-sizing-sm">Country</span>
		</div>
		<select name="country" id="input" class="" onchange="random()">
		<option >Select a Your Country</option>
		<%
		while(rs1.next()){
		%>
		
		
		<option><%=rs1.getString("country_name") %></option>
		
	  <%}  %>

        </select>
        </div>
        </div>
        
      <div class="col-2.7">
	    	    
		<div class="input-group input-group-sm mb-3">
		<div class="input-group-prepend">
		<span class="input-group-text" id="inputGroup-sizing-sm">City</span>
		</div>
		<select  id="output" name="city">

        </select>
        </div>
        </div>
		</div>
		<!-- --------------------------country close------------------------ -->
		
		
		
		<div class="row">
	    <div class="col-12">
    	    <div id="custom-search-input">
                <div class="input-group">
                    <input type="text" class="search-query form-control" placeholder="Search" name="search"  maxlength="3" required="required" />
                    <input type="submit" value="Search" style="height: 38px;" > 
                    <br>
                        </div>
        </div>
	</div>
	</div>
	<br>

	</form>
</div>

<%
        try{
              
            String bld = request.getParameter("search");
            String city = request.getParameter("city");
            String country = request.getParameter("country");
            
        
            
           
           
           ResultSet rs = Database.getData("select * from uregister  where bld = '"+bld+"' && status = '"+1+"' && city = '"+city+"' && country = '"+country+"'"); 
         
        	 
           
           while(rs.next()){
           String name = rs.getString("name");
           String bldg = rs.getString("bld");
           String address = rs.getString("address");
           String country1 = rs.getString("country");
           String city1 = rs.getString("city");
           String email = rs.getString("email");
           String mob = rs.getString("mobile");
           String age = rs.getString("dob");
           String gender = rs.getString("gender");
           
           
           %>
           
       
           
           
           
           <div id="a" style="background-color: #330D0D; color: #ffffff; margin-top: 45px; padding-top: 0px;">
               <div style="margin-left: 200px; padding-top: 15px; padding-bottom: 18px;">
               <label  >NAME    :</label> <%out.println(name);%>
               <br/>
           <label>Blood Group :</label><%out.println(bldg);%>
              <br/>
              <label>ADDRESS      :</label> <%out.println(address);%>
           <br/>
          <label>Country     :</label> <%out.println(country1);%>
           <br/>
           <label>City     :</label> <%out.println(city1);%>
           <br/>
         <label>MOBILE      :</label> <%out.println(mob);%>
          <br/>
         <label>Date of birth     :</label> <%out.println(age);%>
          <br/>
         <label>GENDER      :</label> <%out.println(gender);%>
          <br/>
         <label>EMAIL      :</label> <%out.println(email);%>
             </div>
           </div>
           
           
           <%
           
           
           
          }
        	 
        	 
        	 
        }catch(Exception e){}
           
        
        %>
        <br>
		 







<br>

<br>
<br>
<br>

<br>
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
              <li><a href="inde.html">Home</a></li>
              <li><a href="#">About us</a></li>
              <li><a href="#">Services</a></li>
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
  <script src="js/myjs.js"></script>

  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>

</body>
</html>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.fazaal.Database"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="assets/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Admin Panel</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="assets/css/light-bootstrap-dashboard.css?v=1.4.0" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="assets/css/demo.css" rel="stylesheet" />


    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />

</head>
<body>

<div class="wrapper">
    <div class="sidebar" data-color="purple" data-image="assets/img/sidebar-5.jpg">

    <!--

        Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
        Tip 2: you can also add an image using data-image tag

    -->
<% HttpSession sess = request.getSession(true);
        %>
    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="#" class="simple-text">
                    <%=sess.getAttribute("uname")  %>
                </a>
            </div>

            <ul class="nav">
                    <li>
                        <a class="nav-link" href="dashboard.jsp">
                            <i class="nc-icon nc-chart-pie-35"></i>
                            <p>Dashboard</p>
                        </a>
                    </li>
                    
                    <li class="nav-item active">
                        <a class="nav-link" href="./table.jsp">
                            <i class="nc-icon nc-notes"></i>
                            <p>Approvement</p>
                        </a>
                    </li>
                    
                    
                    
                    <li>
                        <a class="nav-link" href="./notifications.jsp">
                            <i class="nc-icon nc-bell-55"></i>
                            <p>Notifications</p>
                        </a>
                    </li>
                    
                </ul>
    	</div>
    </div>

    <div class="main-panel">
        <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Dashboard</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-left">
                        
                        
                        
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        
                        <li>
                            <a href="logout.jsp">
                                <p>Log out</p>
                            </a>
                        </li>
						<li class="separator hidden-lg"></li>
                    </ul>
                </div>
            </div>
        </nav>
<!-- ------------------------------------Close Header---------------------------------------------------- -->
        
        
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Pending Aprovement</h4>
                                <p class="category">Here is a subtitle for this table</p>
                            </div>
                            <form action="DonnorActivation" method="post">
                            <%ResultSet rs = Database.getData("select * from uregister where status='0'"); %>
                            <div class="content table-responsive table-full-width">
                                
                                <table class="table table-hover table-striped">
                                    <thead>
                                    	<td>UID</td>
                                    	<td>NAME</td>
                                    	<td>Email</td>
                                    	<td>MOBILE</td>
                                    	<td>ADDRESS</td>
                                    	<td>Country</td>
                                    	<td>city</td>
                                    	<td>DOB</td>
                                    	<td>GENDER</td>
                                    	<td>BLOOD</td>
                                    	<td>ACTION</td>
                                    	
                                    	
                                    </thead>
                                    <%while(rs.next()){ %>
                                    <tbody>
                                    <tr>
                                    
                                    	<td> <%=rs.getInt("uid") %></td>
                                    	<td><%=rs.getString("name") %></td>
                                    	<td><%=rs.getString("email") %></td>
                                    	<td><%=rs.getString("mobile") %></td>
                                    	<td><%=rs.getString("address") %></td>
                                    	<td><%=rs.getString("country") %></td>
                                    	<td><%=rs.getString("city") %></td>
                                    	<td><%=rs.getString("dob")%></td>
                                    	<td><%=rs.getString("gender") %></td>
                                    	<td><%=rs.getString("bld")%></td>
                                    	<td><button type="submit" name="active" value="<%=rs.getString(1)%>" class="btn btn-primary" <span class="glyphicon glyphicon-lock" >Accept</span> </button></td>
                                    	
                                    	<%} %>
                                    </tr>
                                    
                                    
                                    </tbody>
                                </table>
						</form>
                            </div>
                        </div>
                    </div>



						

                    


                </div>
            </div>
            <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Accepted Aprovment</h4>
                                <p class="category"></p>
                            </div>
                            <form action="DonnorActivation" method="get">
                            <%ResultSet rs1 = Database.getData("select * from uregister where status='1'"); %>
                            <div class="content table-responsive table-full-width">
                                
                                <table class="table table-hover table-striped">
                                    <thead>
                                    	<td>UID</td>
                                    	<td>NAME</td>
                                    	<td>Email</td>
                                    	<td>MOBILE</td>
                                    	<td>ADDRESS</td>
                                    	<td>Country</td>
                                    	<td>City</td>
                                    	<td>DOB</td>
                                    	<td>GENDER</td>
                                    	<td>BLOOD</td>
                                    	<td>ACTION</td>
                                    	
                                    	
                                    </thead>
                                    <%while(rs1.next()){ %>
                                    <tbody>
                                    <tr>
                                    
                                    	<td> <%=rs1.getInt("uid") %></td>
                                    	<td><%=rs1.getString("name") %></td>
                                    	<td><%=rs1.getString("email") %></td>
                                    	<td><%=rs1.getString("mobile") %></td>
                                    	<td><%=rs1.getString("address") %></td>
                                    	<td><%=rs1.getString("country") %></td>
                                    	<td><%=rs1.getString("city") %></td>
                                    	<td><%=rs1.getString("dob")%></td>
                                    	<td><%=rs1.getString("gender") %></td>
                                    	<td><%=rs1.getString("bld")%></td>
                                    	<td><button type="submit" name="active" value="<%=rs1.getString(1)%>" class="btn btn-primary" <span class="glyphicon glyphicon-lock" >Decline</span> </button></td>
                                    	
                                    	<%} %>
                                    </tr>
                                    
                                    
                                    </tbody>
                                </table>
						</form>
                            </div>
                        </div>
                    </div>



						

                    


                </div>
            </div>
        </div>

        

    </div>
</div>


</body>

    <!--   Core JS Files   -->
    <script src="assets/js/jquery.3.2.1.min.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Charts Plugin -->
	<script src="assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="assets/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
	<script src="assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

	<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
	<script src="assets/js/demo.js"></script>


</html>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.fazaal.Database"%>
<%@page import="com.fazaal.Date"%>
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
                    <li class="nav-link">
                        <a class="nav-link" href="dashboard.jsp">
                            <i class="nc-icon nc-chart-pie-35"></i>
                            <p>Dashboard</p>
                        </a>
                    </li>
                    
                    <li>
                        <a class="nav-link" href="./table.jsp">
                            <i class="nc-icon nc-notes"></i>
                            <p>Approvement</p>
                        </a>
                    </li>
                    
                    
                    
                    <li class="nav-item active">
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


        <div class="content">
            <div class="container-fluid">
                <div class="card">
                    <div class="header">
                        <h4 class="title">Notifications</h4>
                        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                               
                            </div>
                            <form action="deleteNortification" method="post">
                            <%ResultSet rs = Database.getData("select * from message"); %>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-hover table-striped">
                                    <thead>
                                    	
                                    	<td>NAME</td>
                                    	<td>Email</td>
                                    	<td>SUBJECT</td>
                                    	<td>MESSAGE</td>
                                    	<td>DATE and Time</td>
                                    	
                                    	<td>ACTION</td>
                                    	
                                    	
                                    	
                                    </thead>
                                    <%while(rs.next()){ %>
                                    
                                    <tr>
                                    
                                    	
                                    	<td><%=rs.getString("name") %></td>
                                    	<td><%=rs.getString("email") %></td>
                                    	<td><%=rs.getString("subject") %></td>
                                    	<td><%=rs.getString("message") %></td>
                                    	<td><%=rs.getString("datetime") %></td>
                                    	
                                    	
                                    	
                                    	<td><button type="submit" name="delete" value="<%=rs.getString(1)%>" class="btn btn-danger" <span class="glyphicon glyphicon-lock" >Delete</span> </button></td>
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

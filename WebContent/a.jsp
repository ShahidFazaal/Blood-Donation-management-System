<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.fazaal.Database"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 <% String bld = "b+";
 
 ResultSet rs = Database.getData("select name,email,mobile,location,dob,gender,bld from uregister where bld = '"+bld+"'");
 rs.next();
 String name = rs.getString("name");
   
   out.println(name);
    
  
   
   %>

</body>
</html>
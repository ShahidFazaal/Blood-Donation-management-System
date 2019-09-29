package com.fazaal;


import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Uregister")
public class Uregister extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	Connection con = null;
	Statement statement = null;
	
	Database db;
       
    
    public Uregister() {
    	
        super();
        
        
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
			

		try {
			String uid = request.getParameter("uid");
			String fulname = request.getParameter("fulName");
			String email = request.getParameter("email");
			String tno = request.getParameter("tno");
			String dob = request.getParameter("dob");
			String address = request.getParameter("address");
			String country = request.getParameter("country");
			String city = request.getParameter("city");
			String gender = request.getParameter("gender");
			String bgroup = request.getParameter("bgroup");
			
			
			Database.setData("insert into uregister(name,email,mobile,address,country,city,dob,gender,bld,status)values('"+fulname+"','"+email+"','"+tno+"','"+address+"','"+country+"','"+city+"','"+dob+"','"+gender+"','"+bgroup+"','"+0+"')");
			request.setAttribute("success", "Succesfully Registered");
            RequestDispatcher rd = request.getRequestDispatcher("/joinus.jsp");
            rd.forward(request, response);
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}

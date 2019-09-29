package com.fazaal;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/notification")
public class notification extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public notification() {
        super();
        System.out.println("hello");
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String subject = request.getParameter("subject");
			String message = request.getParameter("message");
			
			
			
			Database.setData("insert into message(name,email,subject,message)values('"+name+"','"+email+"','"+subject+"','"+message+"')");
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}

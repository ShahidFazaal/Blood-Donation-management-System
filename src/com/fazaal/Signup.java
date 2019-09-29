package com.fazaal;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 
@WebServlet("/Signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Signup() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("fulName");
		String email = request.getParameter("email");
		String tno = request.getParameter("tno");
		String password = request.getParameter("pass");
		String user = "user";
		try {
			Database.setData("insert into login(name,email,mobile,password,user)values('"+name+"','"+email+"','"+tno+"','"+password+"','"+user+"')");
			request.setAttribute("success", "Succesfully Registered");
            RequestDispatcher rd = request.getRequestDispatcher("/signup.jsp");
            rd.forward(request, response);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}

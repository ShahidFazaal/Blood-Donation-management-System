package com.fazaal;

import java.io.IOException;

import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;





@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HttpSession session;
	
       
    
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String username = request.getParameter("username");
			String password = request.getParameter("pass");
			ResultSet rs = Database.getData("select * from login  where email = '"+username+"' && password = '"+password+"'");
			
			if(rs.next()) {
				
				
				if(rs.getString("user").equals("admin")) {
				session = request.getSession(true);
				session.setAttribute("uname",rs.getString("name"));
				response.sendRedirect("table.jsp");
				}
				
				if (rs.getString("user").equals("user")) {
				
			
				session = request.getSession(true);
				session.setAttribute("uname",rs.getString("name"));
				
				response.sendRedirect("welcomepage.jsp");
				}	
				
				
			}else {
				
                request.setAttribute("errorMessage", "Invalid user or password");
                RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                rd.forward(request, response);
                
			}
			
				
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}

}

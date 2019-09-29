package com.fazaal;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.Properties;

import javax.mail.*;
import javax.mail.internet.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Forgetpassword")
public class Forgetpassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Forgetpassword() {
        super();
        System.out.println("constructor");
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("dopost");
		try {
			String email=request.getParameter("email");
			ResultSet rs = Database.getData("select password from login where email = '"+email+"' ");
			System.out.println("done");
			if(rs.next()) {
			String password = rs.getString("password");
			
				String to= email;//change accordingly
				//Get the session object
				Properties props = new Properties();
				props.put("mail.smtp.starttls.enable", "true");
				props.put("mail.smtp.host", "smtp.gmail.com");
				props.put("mail.smtp.socketFactory.port", "465");
				props.put("mail.smtp.socketFactory.class",
				"javax.net.ssl.SSLSocketFactory");
				props.put("mail.smtp.auth", "true");
				props.put("mail.smtp.port", "465");
				Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("shahidfazaal@gmail.com","fazaal95143");//Put your email id and password here
				}
				});
				//compose message
				
				MimeMessage message = new MimeMessage(session);
				message.setFrom(new InternetAddress("shahidfazaal@gmail.com"));//change accordingly
				message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
				message.setSubject("Your Forgot Password is");
				message.setText("Your password for the Email ID "+email+" is "+password);
				//send message
				Transport.send(message);
				System.out.println("message sent successfully");
				
			
			System.out.println("Password send to your email id successfully !");
			
			response.sendRedirect("index.jsp");
			}else {
				request.setAttribute("errorMessage2", "Email addres is incorrect");
                RequestDispatcher rd = request.getRequestDispatcher("/forgetpassword.jsp");
                rd.forward(request, response);
			}
		
			
		
		

}catch (Exception e){
	e.printStackTrace();
	}
}
}

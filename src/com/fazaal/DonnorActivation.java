package com.fazaal;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DonnorActivation")
public class DonnorActivation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DonnorActivation() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String active = request.getParameter("active");
		try {
			ResultSet rs = Database.getData("select * from uregister where uid = '"+active+"'");
			while(rs.next()) {
				Database.setData("update uregister set status='0' where uid='"+active+"'");
				response.sendRedirect("table.jsp");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String active = request.getParameter("active");
		try {
			
			
			ResultSet rs = Database.getData("select * from uregister where uid = '"+active+"'");
			while(rs.next()) {
				String blood = rs.getString("bld");
				String country = rs.getString("country");
				String city = rs.getString("city");
				
				Database.setData("update uregister set status='1' where uid='"+active+"'");
				ResultSet rs1 = Database.getData("select * from login");
				while(rs1.next()){
				String[] to = {rs1.getString("email")};//change accordingly
				
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
				for(String cc:to){
				    message.addRecipients(Message.RecipientType.CC,InternetAddress.parse(cc));
				    }
				message.setSubject("New Donnor has registerd");
				message.setText("A New "+ blood+" Blood Donor has registered from "+city+" "+country);
				//send message
				Transport.send(message);
				System.out.println("message sent successfully");
				
			
			System.out.println("Password send to your email id successfully !");
			
			
				}
			}
				response.sendRedirect("table.jsp");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}

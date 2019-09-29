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
public class Ex {

	public static void main(String[] args) {
		
		
		try {
					
						ResultSet rs = Database.getData("select * from login");
						while(rs.next()) {
						String[] to = {rs.getString("email")};//change accordingly
						
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
						message.setSubject("Your Forgot Password is");
						message.setText("Your password for the Email ID ");
						//send message
						Transport.send(message);
						System.out.println("message sent successfully");
						
					
					System.out.println("Password send to your email id successfully !");
					
					
						}
				
					
				
				

		}catch (Exception e){
			e.printStackTrace();
			}
		}
		


	}



package com.nextgen;

import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;


@WebServlet("/sed_Email")
public class sed_Email extends HttpServlet {
	private static final long serialVersionUID = 1L;
/*
	 public static void sendMail(String recepient) {
	        System.out.println("Preparing to send email");
	        Properties properties = new Properties();

	        //Enable authentication
	        properties.put("mail.smtp.auth", "true");
	        //Set TLS encryption enabled
	        properties.put("mail.smtp.starttls.enable", "true");
	        //Set SMTP host
	        properties.put("mail.smtp.host", "smtp.gmail.com");
	        //Set smtp port
	        properties.put("mail.smtp.port", "587");
	        properties.put("mail.smtp.ssl.trust", "*");
	        
	        
	        

	        //Your gmail address
	        String myAccountEmail = "nextgen0057@gmail.com";
	        //Your gmail password
	        String password = "Nextgen123#";

	        //Create a session with account credentials
	        Session session = Session.getInstance(properties, new Authenticator() {
	            @Override
	            protected PasswordAuthentication getPasswordAuthentication() {
	                return new PasswordAuthentication(myAccountEmail, password);
	            }
	        });

	        //Prepare email message
	        Message message = prepareMessage(session, myAccountEmail, recepient);

	        //Send mail
	        try {
				Transport.send(message);
			} catch (MessagingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        System.out.println("Message sent successfully");
	    }

	    private static Message prepareMessage(Session session, String myAccountEmail, String recepient) {
	        try {
	            Message message = new MimeMessage(session);
	            message.setFrom(new InternetAddress(myAccountEmail));
	            message.setRecipient(Message.RecipientType.TO, new InternetAddress(recepient));
	            message.setSubject("Hello i am ashan");	
	            message.setText("test email");
	            return message;
	        } catch (Exception ex) {
	            Logger.getLogger(toemail.class.getName()).log(Level.SEVERE, null, ex);
	        }
	        return null;
	    }
*/
	
	
}

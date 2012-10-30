package com.with.mail;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.with.domain.Member;

public class SendEmail{
	
	private String contentType = "text/html";
	private String host = "localhost";
	private String charset = "UTF-8";

	public void send(Member member) {
		try {
			
			Properties props = System.getProperties();
			props.put("mail.smtp.host", host);
			Session  session = Session.getDefaultInstance(props, null);
			MimeMessage message = new MimeMessage(session);
			
			message.setSentDate(new Date());
			message.setFrom(new InternetAddress("integerzero87@gmail.com", "with.com 관리자", "UTF-8"));
			message.setRecipients(Message.RecipientType.TO, member.getEmail());
			
			String subject = ("Welcome to With!! " + member.getName());
			message.setSubject(subject, charset);
			
			message.setText(
					"<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">" +
					"<html>" +
					"<body>" +
					"<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#ffffff\" style=\"background-color:#ffffff;width:100%;text-align:left;border-collapse:collapse;border-spacing:0;margin:0;padding:0;border:0\">" + 
					"<tbody>" +
					"<tr>" + 
					"<td valign=\"top\" bgcolor=\"#ffffff\" align=\"left\" style=\"vertical-align:top;line-height:19px;text-align:left;font-size:14px;background-color:#ffffff;font-family:'Helvetica Neue',helvetica,sans-serif\">" +
					"<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#ffffff\" style=\"background-color:#ffffff;width:100%;text-align:left;border-collapse:collapse;border-spacing:0;margin:0;padding:0;border:0\">" +
					"<tbody>" +
					"<tr>" + 
					"<td valign=\"top\" bgcolor=\"#ffffff\" align=\"left\" style=\"vertical-align:top;line-height:19px;text-align:left;font-size:14px;background-color:#ffffff;font-family:'Helvetica Neue',helvetica,sans-serif\">" +
					"<div>" + 
					"<p	style=\"line-height:22px;font-size:16px;margin:6px 0 9px;font-family:'Helvetica Neue',helvetica,sans-serif\">" +
					"<img src=\"http://24.media.tumblr.com/tumblr_mbobl9QrCU1rf5z5so1_500.png\" alt=\"Logo-email\">" +
					"</p>" + 
					"<br>" +
					"<h3 style=\"font-weight:normal;font-family:'Helvetica Neue',helvetica,sans-serif;font-size:16px;line-height:19px;margin:6px 0 9px\">Hi " + member.getName() + ",</h3>" +
					"<p style=\"line-height:22px;font-size:16px;margin:6px 0 9px;font-family:'Helvetica Neue',helvetica,sans-serif\">Welcome to WITH and thanks for signing up! You have joined over 1,000,000 people just like you who want to make friends.</p>" +
					"<div style=\"border-top-width:1px;border-top-color:#cccccc;border-top-style:solid;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#cccccc;background-color:#ffffff;width:100%;margin:19px 0;padding:15px 0\">" +
					"<h3 style=\"font-weight:normal;font-family:'Helvetica Neue',helvetica,sans-serif;font-size:16px;line-height:19px;margin:6px 0 9px\">" +
					"<b>Sign in to your account:</b><br>" +
					"<a target=\"_blank\" href=\"http://203.233.196.177:8281/with/member/create\">Welcome to WITH!!!</a>" + 

					"</h3>" +
					"<h3 style=\"font-weight:normal;font-family:'Helvetica Neue',helvetica,sans-serif;font-size:16px;line-height:19px;margin:6px 0 9px\">" +
					"<b>Username:</b><br>" +
					member.getName() +
					"</h3>" +
					"</div>" +
					"<a target=\"_blank\" href=\"http://survey.37signals.com/respond/1?r=1996779\">Help us improve WITH by telling us a little more about yourself. </a>" +
					"<p style=\"line-height:22px;font-size:16px;margin:6px 0 9px;font-family:'Helvetica Neue',helvetica,sans-serif\">We hope you enjoy this opportunity to make friends in WITH. </p>" +
					"</div>" +
					"</td>" +
					"</tr>" +
					"</tbody>" +
					"</table>" +
					"</td>" +
					"</tr>" +
					"</tbody>"+
					"</table>"+
					"</body>" +
					"</html>"
					);
			
			message.setHeader("Content-Type", contentType);
			Transport.send(message);
		} catch (AddressException e) {
			e.printStackTrace();
		} catch (MessagingException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}
}
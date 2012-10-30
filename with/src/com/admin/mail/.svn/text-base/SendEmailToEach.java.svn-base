package com.admin.mail;

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

public class SendEmailToEach {

	private String contentType = "text/html";
	private String host = "localhost";
	private String charset = "UTF-8";

	public void send(String recipients, String title, String contents) {
		try {
			Properties props = System.getProperties();
			props.put("mail.smtp.host", host);
			Session session = Session.getDefaultInstance(props, null);
			MimeMessage message = new MimeMessage(session);

			message.setSentDate(new Date());
			message.setFrom(new InternetAddress("integerzero87@gmail.com", "with.com 관리자", "UTF-8"));
			message.setRecipients(Message.RecipientType.TO, recipients);

			String subject = (title);
			message.setSubject(subject, charset);

			message.setText(contents);

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
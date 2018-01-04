package Properties;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.apache.tomcat.util.codec.binary.Base64;

public class ForgotPass {
	
	public void emailSend(String mail){
		
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.live.com");
		props.put("mail.smtp.port", "587");
		
		Session session = Session.getInstance(props, new javax.mail.Authenticator(){
			
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("expguard@hotmail.com","hus.1989");
			}
			
});
		try {
			
			Message message = new MimeMessage(session); 
			message.setFrom(new InternetAddress("expguard@hotmail.com"));
			
			byte[] keyPair = EncryptionUtil.encrypt(mail);
			String strChips = new Base64(Integer.MAX_VALUE,null,true).encodeAsString(keyPair);
			message.setRecipients(Message.RecipientType.TO,
					InternetAddress.parse(mail));
			message.setSubject("Reset Password");
			message.setContent("<h:body style=background-color:white;font-family:verdana;color:#0066cc;>"
					+ "Baglantiya tiklayarak sifrenizi yenileyebilirsiniz...!<br/><br/>"
					+ "<a href=http://localhost:8080/calisma/ResetPass?id="+strChips+">Sifre Yenile</a>"
					+ "</body>","text/html; charset=utf-8");
			Transport.send(message);
			
			System.out.println("Was the email sent: Done");
		
		} catch (MessagingException e) {
			throw new RuntimeException(e); 
		}
	}
}
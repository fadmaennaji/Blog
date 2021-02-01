package mail;

import java.util.Date;
import java.util.Properties;
 
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
 
/**
 * A utility class for sending e-mail messages
 * @author www.codejava.net
 *
 */
public class EmailUtility {
    public static void sendEmail(String host, String port,
            final String userName, final String password, String toAddress,
            String subject, String message, int Rport) throws AddressException,
            MessagingException {
    	
    	// sets SMTP server properties
        Properties properties = new Properties();
        properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.port", port);
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.ssl.enable", "true");
 
        // creates a new session with an authenticator
       Authenticator auth = new Authenticator() {
           public PasswordAuthentication getPasswordAuthentication() {
               return new PasswordAuthentication(userName, password);
           }
    };
        
        properties.put("mail.smtp.user", userName);
 
        Session session = Session.getInstance(properties,auth);
 
        // creates a new e-mail message
        Message msg = new MimeMessage(session);
        
        msg.setFrom(new InternetAddress(userName));
        InternetAddress[] toAddresses = { new InternetAddress(toAddress) };
        msg.setRecipients(Message.RecipientType.TO, toAddresses);
        msg.setSubject(subject);
        msg.setSentDate(new Date());
       // msg.setText("<h1> test email </h1>", "utf-8", "html");
        msg.setContent("<html>\n" +
                "<body>\n" +
                "\n" +
                "<h3>\n Confirmez votre adresse email</h3>\n" +
                 "<p style='text-align: justify'>\n Salut! Nous avons juste besoin de vï¿½rifier que <span style='color:blue'>\n" +toAddress+      
                 "</span>\nest votre adresse electronique.</p>\n"+
                "<center><a href=\"http://localhost:"+Rport+"/BLOG_final/VerifierEmail?email="+toAddress+"\">\n" +
                "Confirmer l'Adresse Email</a></center>\n" +
                "<p style='text-align: justify'> Vous n'avez pas demandé cet email? "+
                "Pas de soucis! Votre adresse a peut-etre  saisi par erreur. Si vous ignorez ou supprimez cet email, rien d'autre ne se passera."+
                "<br>Merci,</p>"+
                "\n" +
                "</body>\n" +
                "</html>", "text/html");
       // <p >Salut! Nous avons juste besoin de vï¿½rifier que <span style='color:blue'>"+recipient+"</span> est votre adresse ï¿½lectronique.</p>"
 
        // sends the e-mail
        Transport t = session.getTransport("smtp");
        t.connect(userName, password);
        t.sendMessage(msg, msg.getAllRecipients());
        t.close();
        Transport.send(msg);
 
    }
}

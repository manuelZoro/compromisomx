package compromisomx;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailSender {
    
    public static String sendMail(String username, String password, boolean auth, boolean TLS, String host, int port, String from, String to, String subject, String mensaje) {

        final String user = username;
        final String pass= password;
        Properties props = new Properties();
        props.put("mail.smtp.auth", Boolean.toString(auth));
        props.put("mail.smtp.starttls.enable", Boolean.toString(TLS));
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.port", Integer.toString(port));

        Session session = Session.getInstance(props,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        //System.out.println(username + ": " + password + " p:" + Integer.toString(port) + " auth: "+ Boolean.toString(auth) + " TLS: "+ Boolean.toString(TLS));
                        return new PasswordAuthentication(user, pass);
                    }
                });

        try {

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(from));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse(to));
            message.setSubject(subject);
            message.setText(mensaje);

            Transport.send(message);
            //System.out.println("Done");
            return "Enviado!";

        } catch (MessagingException e) {
            //throw new RuntimeException(e);
            return "Falla en envio ;(";
        }
    }
}

package mail;

import java.io.IOException;
 
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Beans.Etudiant;
 
/**
 * A servlet that takes message details from user and send it as a new e-mail
 * through an SMTP server.
 *
 * @author www.codejava.net
 *
 */
@WebServlet("/EmailSendingServlet")
public class EmailSendingServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 7345829681541506499L;
	private String host;
    private String port;
    private String user;
    private String pass;
 
    public void init() {
        // reads SMTP server setting from web.xml file
        ServletContext context = getServletContext();
        host = context.getInitParameter("host");
        port = context.getInitParameter("port");
        user = context.getInitParameter("user");
        pass = context.getInitParameter("pass");
    }
    
    
 
    @Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
		System.out.println("get");
	}



	protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // reads form fields
		System.out.println("post");
		String recipient = ((Etudiant)request.getAttribute("usr")).getEmail();
        String subject = "Verification email";
        String content="";
        String resultMessage = "";
        int Rport =  request.getServerPort();
 
        try {
            EmailUtility.sendEmail(host, port, user, pass, recipient, subject,
                    content,Rport);
            System.out.println("sent");
            resultMessage = " Un e-mail de confirmation vous a ete envoye pour confirmer votre adresse email, Veuillez verifier votre boite de reception";
        } catch (Exception ex) {
            ex.printStackTrace();
            resultMessage = "There were an error: " + ex.getMessage();
        } finally {
            request.setAttribute("Message", resultMessage);
            System.out.println("sent");
            request.getRequestDispatcher("Result.jsp").forward(
                    request, response);
        }
    }
}
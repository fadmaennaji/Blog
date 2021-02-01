package Controle;

import mail.EmailSendingServlet;
import DAO.*;
import Beans.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class user
 */
@WebServlet("/user")
public class user extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public user() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	response.setContentType("text/html");
    	Etudiant us = new Etudiant();
    	
    	System.out.println("in");
    
    	us.setCne("JJ000");
    	us.setNom(request.getParameter("nom"));
    	us.setPrenom(request.getParameter("prenom"));
    	us.setEmail(request.getParameter("email"));
    	us.setDate("0000-00-00");
    	us.setSexe(request.getParameter("sexe"));
    	us.setPassword(request.getParameter("pass"));
    	us.setNum_tlf("+212060");
    	us.setImage("avatar.jpg");
    	
    	DAOEtudiant f= new DAOEtudiant();
    	f.ajouter(us);
    	
    	request.setAttribute("usr", us);
    	System.out.println("in");
    	request.getRequestDispatcher("/EmailSendingServlet").forward(request,response);
    	//response.sendRedirect("login.html");
    	
		
	}
    
    

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

package Controle;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Beans.*;
import DAO.DAOEtudiant;

/**
 * Servlet implementation class UpdateEtudiant
 */
@WebServlet("/UpdateEtudiant")
public class UpdateEtudiant extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public UpdateEtudiant() {
        super();
      
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id=Integer.parseInt(request.getParameter("idE"));
		   String nom=request.getParameter("nom");
		   String prenom=request.getParameter("prenom");
		   String email=request.getParameter("email");
		   String date=request.getParameter("date");
		    String phone=request.getParameter("phone");
		    String pass=request.getParameter("password");
		    String cne=request.getParameter("cne");
		    String sexe=request.getParameter("sexe");
		    String image=request.getParameter("image");
		     DAOEtudiant et= new DAOEtudiant();
		  
		    Etudiant or=new Etudiant(nom, prenom, cne, sexe, email, pass, image,date, phone, id);
		    
		    et.updateEtudiant(id, or);
		    response.sendRedirect("profile.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

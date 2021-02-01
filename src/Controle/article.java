package Controle;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ajouter_article;
import Beans.*;

@WebServlet("/test")
public class article extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public article() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		  ajouter_article aa=new ajouter_article(); 
		  Article A = new Article();
		  int idE=Integer.parseInt(request.getParameter("idE"));
	       A.setObjet(request.getParameter("object"));
	       A.setDescription(request.getParameter("message"));
	       aa.Ajouter_Article(A,idE);
	     
	       response.sendRedirect("blog.jsp");
			
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

package Controle;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.DAOComment;
import DAO.ajouter_article;

/**
 * Servlet implementation class updateComment
 */
@WebServlet("/updateComment")
public class updateComment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public updateComment() {
        super();
       
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String contenu=request.getParameter("comment");
		int id=Integer.parseInt(request.getParameter("idC"));
		DAOComment.updateComment(contenu, id);
		int idE=Integer.parseInt(request.getParameter("idE"));
		int idA=Integer.parseInt(request.getParameter("idA"));
		//this.getServletContext().getRequestDispatcher("/single-post.jsp?idE="+idE+"&&idA="+idA).forward(request, response);
		response.sendRedirect("single-post.jsp?idE="+idE+"&&idA="+idA);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}

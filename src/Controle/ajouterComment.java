package Controle;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Beans.Article;
import Beans.comment;
import DAO.DAOComment;
import DAO.ajouter_article;

/**
 * Servlet implementation class ajouterComment
 */
@WebServlet("/ajouterComment")
public class ajouterComment extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ajouterComment() {
        super(); 
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		DAOComment aa=new DAOComment(); 
		  comment C = new comment();
	       C.setContenu(request.getParameter("comment"));
	       int ida=Integer.parseInt(request.getParameter("id_A"));
	       int ide=(int)session.getAttribute("idE");
	       int idE=Integer.parseInt(request.getParameter("id_E"));
	       aa.Ajouter_comment(C,ida,ide);
	     //response.sendRedirect("blog.jsp");
			response.sendRedirect("single-post.jsp?idE="+idE+"&&idA="+ida);
			//this.getServletContext().getRequestDispatcher("/single-poste.jsp?idE="+idE+"&&idA="+ida).forward(request, response);

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

package Controle;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.ajouter_article;

/**
 * Servlet implementation class updateArticle
 */
@WebServlet("/updateArticle")
public class updateArticle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public updateArticle() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String title=request.getParameter("object");
		String contenu=request.getParameter("message");
		int ida=Integer.parseInt(request.getParameter("idA"));
		 int ide=(int)session.getAttribute("idE");
		ajouter_article.updateArticle(contenu, title, ida);
		response.sendRedirect("single-post.jsp?idE="+ide+"&&idA="+ida);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}

package Controle;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.connect;

@WebServlet("/Authentification")
public class Authentification extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public Authentification() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String username = request.getParameter("email");
		String password = request.getParameter("pass");
		
		try {
			ResultSet res1=null;
			
			Connection con = (Connection) connect.loadDatabase();
			PreparedStatement preparedStatement = con.prepareStatement("SELECT * FROM etudiant WHERE email=? AND pass_word=? AND ver_email=?;");
			preparedStatement.setString(1, username);
			preparedStatement.setString(2, password);
			preparedStatement.setString(3, "verifier");
				res1 = preparedStatement.executeQuery();
				if(res1.next()) 
				{
					int id=res1.getInt(1);
					 session.setAttribute("idE", id);
				this.getServletContext().getRequestDispatcher("/profile.jsp").forward(request, response);
				}else
				{
					session.setAttribute("erreur", "Ce compte n'exist pas !! v�rifier que vous avez bien ins�rer les information  Si n'a pas encore un compte essayer d'inscrire");
					response.sendRedirect("login.html");
				}
			}catch (SQLException e) {
				e.printStackTrace();
			}	
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

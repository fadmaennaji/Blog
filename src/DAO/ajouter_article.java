package DAO;
import java.sql.Connection;
import java.util.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

import Beans.Article;



public class ajouter_article {

	public  void Ajouter_Article(Article A,int idE)
	{
		   //DateFormat formatDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			//String input = formatDate.format(new java.util.Date());
			//DateTimeFormatter formatter = DateTimeFormatter.ofPattern( "yyyy-MM-dd HH:mm:ss" ) ;
			//LocalDate localDate = LocalDate.parse( input, formatter );
			
			//System.out.println("eeeeeeeeeeeeeee"+localDate);
			DateFormat format = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			Date date = new Date();
			System.out.println(format.format(date));
	      try {
	    	  Connection connexion = connect.loadDatabase();
	            PreparedStatement  preparedStatement = (PreparedStatement) (connexion).prepareStatement("INSERT INTO article(objet,description,date,id_user) VALUES(?,?,?,?);");
	            preparedStatement.setString(1, A.getObjet());
	            preparedStatement.setString(2, A.getDescription());
	            preparedStatement.setObject(3, format.format(date));
	            preparedStatement.setInt(4,idE);
	            preparedStatement.executeUpdate();
	        } catch (SQLException e) {
	            e.printStackTrace();
	            System.out.println("non isert");
	           	        }
	}
	
	public ArrayList<Article> Allarticle() throws SQLException
	{
		ArrayList<Article> et=new ArrayList<Article>();
		Connection connexion=connect.loadDatabase();
		 PreparedStatement st=connexion.prepareStatement("select * from article order by date desc");
		ResultSet rs=st.executeQuery();
		try {
			while(rs.next())
			{
				Article p=new Article();
				p.setId_article(rs.getInt(1));
				p.setObjet(rs.getString(2));
				p.setDescription(rs.getString(3));
				p.setDate(rs.getDate(4));
				p.setId_user(rs.getInt(5));
				et.add(p);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	
		return et ;
		
	}
	public static Article getArt(int id) throws SQLException
	{
		Article p = new Article();
		
		
		try{
			
			String sql = "SELECT * FROM `article` WHERE `Id_article`='"+id+"';";
			Connection con = (Connection) connect.loadDatabase();
			PreparedStatement preparedStatement = (PreparedStatement) con.prepareStatement(sql);
		
			
			ResultSet rs = preparedStatement.executeQuery();
			if(rs.next())
			{

				
				p.setId_article(rs.getInt(1));
				p.setObjet(rs.getString(2));
				p.setDescription(rs.getString(3));
				p.setDate(rs.getDate(4));
				p.setId_user(rs.getInt(5));
			
			}
			
			con.close();
			
		}catch(SQLException e1){
			e1.printStackTrace();
		}
		
		return p;
	}
	public ArrayList<Article> AllarticlebyID(int id) throws SQLException
	{
		ArrayList<Article> et=new ArrayList<Article>();
		Connection connexion=connect.loadDatabase();
		 PreparedStatement st=connexion.prepareStatement("select * from article where id_user="+id);
		ResultSet rs=st.executeQuery();
		try {
			while(rs.next())
			{
				Article p=new Article();
				p.setId_article(rs.getInt(1));
				p.setObjet(rs.getString(2));
				p.setDescription(rs.getString(3));
				p.setDate(rs.getDate(4));
				p.setId_user(rs.getInt(5));
				et.add(p);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	
		return et ;
		
	}
	public static int delete(int id) throws SQLException
	{
		int check = 0;
		
		
		try{
			
			String sql = "DELETE FROM `article` WHERE Id_article=?";
			Connection con = (Connection) connect.loadDatabase();
			PreparedStatement preparedStatement = (PreparedStatement) con.prepareStatement(sql);
			preparedStatement.setInt(1, id);
			check = preparedStatement.executeUpdate();
			con.close();
			
		}catch(SQLException e1){
			e1.printStackTrace();
		}
		return check;
	}
	public static void updateArticle(String contenu,String title,int id)
	 {
		 Connection connexion=connect.loadDatabase();
		 try {
	            PreparedStatement preparedStatement = connexion.prepareStatement("UPDATE `article` SET `objet`='"+title+"',`description`='"+contenu+"' WHERE `Id_article`='"+id+"'");
	            preparedStatement.executeUpdate();
	        } catch (SQLException es) {
	            es.printStackTrace();
	        }
	 }
	
}

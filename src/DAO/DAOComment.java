package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;

import com.mysql.jdbc.Statement;

import Beans.comment;


public class DAOComment {
	public  void Ajouter_comment(comment A,int idA,int idE)
	{
		
		DateFormat format = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date();
		System.out.println(format.format(date));
			//System.out.println("eeeeeeeeeeeeeee"+localDate);
	      try {
	    	  Connection connexion = connect.loadDatabase();
	            PreparedStatement  preparedStatement = (PreparedStatement) (connexion).prepareStatement("INSERT INTO comment(contenu,id_user,id_article,date_commt) VALUES(?,?,?,?);");
	            preparedStatement.setString(1, A.getContenu());
	            preparedStatement.setInt(2,idE);
	            preparedStatement.setInt(3,idA);
	            preparedStatement.setObject(4, format.format(date));
	            
	            preparedStatement.executeUpdate();
	        } catch (SQLException e) {
	            e.printStackTrace();
	            System.out.println("non isert");
	           	        }
	}
	
	public ArrayList<comment> Allcomment() throws SQLException
	{
		ArrayList<comment> et=new ArrayList<comment>();
		Connection connexion=connect.loadDatabase();
		 PreparedStatement st=connexion.prepareStatement("select * from comment");
		ResultSet rs=st.executeQuery();
		try {
			while(rs.next())
			{
				comment p=new comment();
				p.setId_comment(rs.getInt(1));
				p.setContenu(rs.getString(2));
				p.setId_user(rs.getInt(3));
				p.setId_article(rs.getInt(4));
				p.setDate(rs.getDate(5));
				
				et.add(p);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	
		return et ;
		
	}
	public ArrayList<comment> AllcommentByArticleId(int id ) throws SQLException
	{
		ArrayList<comment> et=new ArrayList<comment>();
		Connection connexion=connect.loadDatabase();
		 PreparedStatement st=connexion.prepareStatement("select * from comment where id_article="+id);
		ResultSet rs=st.executeQuery();
		try {
			while(rs.next())
			{
				comment p=new comment();
				p.setId_comment(rs.getInt(1));
				p.setContenu(rs.getString(2));
				p.setId_user(rs.getInt(3));
				p.setId_article(rs.getInt(4));
				p.setDate(rs.getDate(5));
				
				et.add(p);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return et ;
	}
	public static int compterNombreComment(int ida)
	{
		int nbr=0;
      try{
			
			String sql = "SELECT COUNT(id_article) FROM comment WHERE id_article='"+ida+"'";
			Connection con = null;
			con=(Connection) connect.loadDatabase();
			Statement statement = (Statement) con.createStatement();
			
			ResultSet res = statement.executeQuery(sql);
			while(res.next())
			{
			nbr=res.getInt(1);
			}
			con.close();
			
		}catch(SQLException e1){
			e1.printStackTrace();
		}
      return nbr;
	}
	public static int delete(int id) throws SQLException
	{
		int check = 0;
		
		
		try{
			
			String sql = "DELETE FROM `comment` WHERE id_commnt=?";
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
	public static void updateComment(String contenu,int id)
	 {
		 Connection connexion=connect.loadDatabase();
		 try {
	            PreparedStatement preparedStatement = connexion.prepareStatement("update comment set contenu='"+contenu+"' where id_commnt='"+id+"'");
	            preparedStatement.executeUpdate();
	        } catch (SQLException es) {
	            es.printStackTrace();
	        }
	 }
}

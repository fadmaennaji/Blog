package DAO;
import Beans.*;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DAOEtudiant {
	
	public void ajouter(Etudiant us) 
    {
	 Connection connexion=connect.loadDatabase();
        try {
        	
            PreparedStatement preparedStatement = connexion.prepareStatement("INSERT INTO etudiant(cne,nom,prenom,sexe,date_naissance,email,num_tlf,pass_word,image) VALUES(?,?,?,?,?,?,?,?,?);");
            preparedStatement.setString(1, us.getCne());
            preparedStatement.setString(2,us.getNom());
            preparedStatement.setString(3, us.getPrenom());
            preparedStatement.setString(4,us.getSexe() );
            preparedStatement.setString(5,us.getDate());
            preparedStatement.setString(6,us.getEmail());
            preparedStatement.setString(7,us.getNum_tlf()); 
            preparedStatement.setString(8, us.getPassword());
            preparedStatement.setString(9,us.getImage() );
            

            preparedStatement.executeUpdate();
        } catch (SQLException es) {
            es.printStackTrace();
        }
}
	public static Etudiant getEtd(int id) throws SQLException
	{
		Etudiant us = new Etudiant();
		
		try{
			
			String sql = "SELECT * FROM `etudiant` WHERE `Id_etd`='"+id+"';";
			Connection con = (Connection) connect.loadDatabase();
			PreparedStatement preparedStatement = (PreparedStatement) con.prepareStatement(sql);
		
			
			ResultSet rs = preparedStatement.executeQuery();
			if(rs.next())
			{
				us.setId_etd(rs.getInt(1));
				 us.setCne(rs.getString(2));
	            us.setNom(rs.getString(3));
	           us.setPrenom(rs.getString(4));
	            us.setSexe(rs.getString(5));
	            us.setDate(rs.getString(6));
	            us.setEmail(rs.getString(7));
	            us.setNum_tlf(rs.getString(8)); 
	            us.setPassword(rs.getString(9));
	            us.setImage(rs.getString(10));
	            us.setVerfy_email(rs.getString(11));
	            us.setLangage(rs.getString(12));
			}
			con.close();	
		}catch(SQLException e1){
			e1.printStackTrace();
		}
		
		return us;
	}
	
	public static Etudiant getEtd(String email) throws SQLException
	{
		Etudiant us = new Etudiant();
		
		try{
			
			String sql = "SELECT * FROM `etudiant` WHERE `email`='"+email+"';";
			Connection con = (Connection) connect.loadDatabase();
			PreparedStatement preparedStatement = (PreparedStatement) con.prepareStatement(sql);
		
			
			ResultSet rs = preparedStatement.executeQuery();
			if(rs.next())
			{
				us.setId_etd(rs.getInt(1));
				 us.setCne(rs.getString(2));
	            us.setNom(rs.getString(3));
	           us.setPrenom(rs.getString(4));
	            us.setSexe(rs.getString(5));
	            us.setDate(rs.getString(6));
	            us.setEmail(rs.getString(7));
	            us.setNum_tlf(rs.getString(8)); 
	            us.setPassword(rs.getString(9));
	            us.setImage(rs.getString(10));
	            us.setVerfy_email(rs.getString(11));
	            us.setLangage(rs.getString(12));
			}
			con.close();	
		}catch(SQLException e1){
			e1.printStackTrace();
		}
		
		return us;
	}
	
	
	
	public  ArrayList<Etudiant> Afficher_Etudiant() throws SQLException
	{
		ArrayList<Etudiant> et=new ArrayList<Etudiant>();
		
		Connection connexion=(Connection) connect.loadDatabase();
		 PreparedStatement st=connexion.prepareStatement("select * from etudiant");
		
		 ResultSet rs= st.executeQuery();
			try {
			while(rs.next())
			{
				Etudiant etud=new Etudiant();
				
				etud.setNom(rs.getString(1));
				etud.setPrenom(rs.getString(2));
				etud.setEmail(rs.getString(3));
				etud.setCne(rs.getString(4));
				etud.setSexe(rs.getString(5));
				etud.setPassword(rs.getString(6));
				etud.setImage(rs.getString(7));
				etud.setDate(rs.getString(8));
				etud.setId_etd(rs.getInt(9));
			    etud.setVerfy_email(rs.getString(10));
	            etud.setLangage(rs.getString(11));
				et.add(etud);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	
		return et; 
	}
	
	 public void updateEtudiant(int id ,Etudiant e)
		{
			Connection connexion=connect.loadDatabase();
			 try {
		            PreparedStatement preparedStatement = connexion.prepareStatement("update etudiant set cne='"+e.getCne()+"',nom='"+e.getNom()+"',prenom='"+e.getPrenom()+"',date_naissance='"+e.getDate()+"',email='"+e.getEmail()+"',num_tlf='"+e.getNum_tlf()+"',pass_word='"+e.getPassword()+"' where Id_etd='"+id+"'");
		            preparedStatement.executeUpdate();
		        } catch (SQLException es) {
		            es.printStackTrace();
		        }
		}
	 
	 public void VerifyEtudiant(int id ,Etudiant e)
		{
			Connection connexion=connect.loadDatabase();
			 try {
		            PreparedStatement preparedStatement = connexion.prepareStatement("update etudiant set ver_email='"+e.getVerfy_email()+"' where Id_etd='"+id+"'");
		            preparedStatement.executeUpdate();
		        } catch (SQLException es) {
		            es.printStackTrace();
		        }
		}
	 public static void updatePicture(String fname,int id)
	 {
		 Connection connexion=connect.loadDatabase();
		 try {
	            PreparedStatement preparedStatement = connexion.prepareStatement("update etudiant set image='"+fname+"' where Id_etd='"+id+"'");
	            
	            
	            preparedStatement.executeUpdate();
	        } catch (SQLException es) {
	            es.printStackTrace();
	        }
	 }
	 public static void updateLang(String langage,int id)
	 {
		 Connection connexion=connect.loadDatabase();
		 try {
	            PreparedStatement preparedStatement = connexion.prepareStatement("update etudiant set langage='"+langage+"' where Id_etd='"+id+"'");
	            preparedStatement.executeUpdate();
	        } catch (SQLException es) {
	            es.printStackTrace();
	        }
	 }
	
}

package Beans;

import java.sql.Date;

public class comment {
	private int id_comment;
	private String contenu;
	private int id_user;
	private int id_article;
	private Date date;
	
	
	public comment() {
		super();
	}
	public int getId_comment() {
		return id_comment;
	}
	public void setId_comment(int id_comment) {
		this.id_comment = id_comment;
	}
	public String getContenu() {
		return contenu;
	}
	public void setContenu(String contenu) {
		this.contenu = contenu;
	}
	public int getId_user() {
		return id_user;
	}
	public void setId_user(int id_user) {
		this.id_user = id_user;
	}
	public int getId_article() {
		return id_article;
	}
	public void setId_article(int id_article) {
		this.id_article = id_article;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	

}

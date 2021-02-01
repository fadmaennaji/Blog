package Beans;



public class Etudiant {
	
	String nom,prenom,cne,sexe,email,password,image,date,num_tlf,langage,verfy_email;

	
	int id_etd;
	
	public Etudiant() {
		super();
	}
	public Etudiant(String nom, String prenom, String cne, String sexe, String email, String password, String image,
			String date, String num_tlf, int id_etd) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.cne = cne;
		this.sexe = sexe;
		this.email = email;
		this.password = password;
		this.image = image;
		this.date = date;
		this.num_tlf = num_tlf;
		this.id_etd = id_etd;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getCne() {
		return cne;
	}
	public void setCne(String cne) {
		this.cne = cne;
	}
	public String getSexe() {
		return sexe;
	}
	public void setSexe(String sexe) {
		this.sexe = sexe;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getVerfy_email() {
		return verfy_email;
	}
	public void setVerfy_email(String verfy_email) {
		this.verfy_email = verfy_email;
	}
	public String getLangage() {
		return langage;
	}
	public void setLangage(String langage) {
		this.langage = langage;
	}
	
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getId_etd() {
		return id_etd;
	}
	public void setId_etd(int id_etd) {
		this.id_etd = id_etd;
	}
	public String getNum_tlf() {
		return num_tlf;
	}
	public void setNum_tlf(String num_tlf) {
		this.num_tlf = num_tlf;
	}

	
}

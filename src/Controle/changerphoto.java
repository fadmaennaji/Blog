package Controle;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import DAO.DAOEtudiant;

/**
 * Servlet implementation class changerphoto
 */
@WebServlet("/changerphoto")
public class changerphoto extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private final String upload_directory="C:\\Users\\jamila bendhi\\Desktop\\JAVA_PROJECT\\BLOG_final\\WebContent\\profile";
    public changerphoto() {
        super();
    
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String fname="";
		int item3=0;
		 response.setContentType("text/html;charset=UTF-8");
	        PrintWriter out = response.getWriter();
	        if(ServletFileUpload.isMultipartContent(request))
	        {
	        	try
	        	{
	        		List<FileItem> multparr=new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
	        		 for (FileItem item : multparr) {
	        		        if (!item.isFormField()) 
	        		        {
	        		           fname=new File (item.getName()).getName();
	        		           //System.out.println("its very wierd to b here with Ayoub"+fname);
	        		           item.write(new File(upload_directory+File.separator+fname));   
	        	            } 
	        		        if(item.isFormField())
	        	            {
	        		        	if(item.getFieldName().equals("idE"))
        	                {   
       	                     item3=Integer.parseInt(item.getString());
	        		        } }} DAOEtudiant.updatePicture(fname,item3);
	        	            response.sendRedirect("profile.jsp");
	       }catch (Exception e) { out.println(e);}
	        	

	}
	}

}

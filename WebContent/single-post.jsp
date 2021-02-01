<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="Beans.*" %>
        <%@ page import="java.util.ArrayList" %>
    <%@ page import="DAO.*" %>
        <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    
    <title>iPictures</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Bootstrap Styles -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-responsive.min.css" rel="stylesheet">

    <!-- Font Icons -->
    <link rel="stylesheet" href="css/font-awesome.min.css" />

    <!-- Social Icons -->
    <link rel="stylesheet" href="css/fc-webicons.css" />

    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,200italic,300italic,400italic,600italic,700italic' rel='stylesheet' type='text/css'>

    <!-- Main Styles -->
    <link rel="stylesheet" href="css/styles.css" />

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="img/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="img/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="img/apple-touch-icon-57-precomposed.png">
    <link rel="shortcut icon" href="img/favicon.png">

    <!-- Modernizr Feature Detection  -->
    <script src="js/libraries/modernizr.min.js"></script>
    <script src="js/libraries/respond.min.js"></script>

  </head>

  <body>

   <%
Etudiant ETDD = new Etudiant();
ETDD=DAOEtudiant.getEtd((int)session.getAttribute("idE"));
%>
    <fmt:setLocale value='<%=ETDD.getLangage()%>' scope="session"/>
<fmt:setBundle basename="Resources.message"/>

    <div class="navbar navbar-inverse-blue navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          
          
          <div class="navigation">
            <ul class="nav">
              <li class="active dropdown">

                <a href="#" class="dropdown-toggle btn-navbar-blue" data-toggle="dropdown">
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                </a>

            <ul class="dropdown-menu">
                 <li><a href="AjouterArticle.jsp"><fmt:message key="message.ajouterarticle"/></a></li>
                  <li><a href="blog.jsp">Blog</a></li>
                  <li><a href="mesArticle.jsp"><fmt:message key="message.postes"/></a></li>
                  
                 </ul>

              </li>
              
            </ul> <!-- end nav -->
          </div><!--/.nav-collapse -->

          <a class="brand" href="index-2.html"><img src="img/work/logo.PNG" alt="logo"></a>

          <div class="pull-right">
            <ul class="unstyled inline user-interaction">
              <li><a href="profile.jsp"><span class="user">&#128100;</span></a></li>
              
              
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="bucket">&#128092;</span> </a>
				<ul class="dropdown-menu">
                <li>
                    <div class="row-fluid">
                      <div class="span5">
                        <div class="img-basket">
                          <img src="img/work/12.jpg" alt="img" />
                        </div> <!-- end img-basket -->
                      </div> <!-- end span5 -->
                      <div class="span6">
                        <div class="img-basket-info">
                          <a href="single-post.jsp?idA=<%=request.getParameter("idA") %>&&idE=<%=request.getParameter("idE") %>&&value=fr">Français</a>
                          <a href="single-post.jsp?idA=<%=request.getParameter("idA") %>&&idE=<%=request.getParameter("idE") %>&&value=fr" class="tag">France</a>  
                        </div><!--  end img-basket-info -->
                      </div> <!-- end span6 -->
                      <div class="span1">
                        <a href="#" class="basket-remover"><i class="icon-remove"></i></a>
                      </div> <!-- end span1 -->
                    </div> <!-- end row-fluid -->
                  </li>
                  <li>
                    <div class="row-fluid">
                      <div class="span5">
                        <div class="img-basket">
                          <img src="img/work/13.jpg" alt="img" />
                        </div> <!-- end img-basket -->
                      </div> <!-- end span5 -->
                      <div class="span6">
                        <div class="img-basket-info">
                          <a href="single-post.jsp?idA=<%=request.getParameter("idA") %>&&idE=<%=request.getParameter("idE") %>&&value=en">Englais</a>
                          <a href="single-post.jsp?idA=<%=request.getParameter("idA") %>&&idE=<%=request.getParameter("idE") %>&&value=en" class="tag">USA</a>  
                        </div><!--  end img-basket-info -->
                      </div> <!-- end span6 -->
                      <div class="span1">
                        <a href="#" class="basket-remover"><i class="icon-remove"></i></a>
                      </div> <!-- end span1 -->
                    </div> <!-- end row-fluid -->
                  </li>
                  </ul>
                
              </li>
              <li><a href="Deconnecter"><img img src="img/work/decon.png" style="width: 20px; height: 20px; margin-top:-10px;"></a></li>
            </ul>  <!-- end user-interaction -->
          </div> <!-- end pull-right -->
        </div> <!-- end container -->
      </div> <!-- end navbar-inner -->
    </div> <!-- end navbar-inverse-blue -->

    <!-- ============================  Navigation End ============================ -->
 

    <!-- ============================  RECENT BLOG START ============================ -->
   <% String ida = request.getParameter("idA");
   String ide = request.getParameter("idE");
	Article a = new Article();
	a= ajouter_article.getArt(Integer.parseInt(ida));
	Etudiant e=DAOEtudiant.getEtd(Integer.parseInt(ide));
	
	%> 

      <section class="single-post">
          <div class="container">
              <div class="row">
              
                  <div class="span12">
                  
                      <div class="post-title">
                          <h4 class="title"><% out.println(a.getObjet()); %> </h4>
                      </div> <!--end post-title-->
                  </div> <!--end span12-->
              </div> <!--end row--><br>
               <ul class="unstyled inline meta-info">
                                <li><img src="profile/<%=e.getImage()%>" alt="avatar" style="border-radius: 20%; width: 70px; height: 62px;"/></li>
                                <li><a href="ProfileDetail.jsp?idE=<%=a.getId_user()%>"class="author"><% out.println(e.getNom()+" "+e.getPrenom()); %></a></li>
                                <li><a href="#"><% out.println(a.getDate()); %></a></li>
                              </ul>
              <div class="row">
                  <div class="span5">
                      <article class="single-post-content">
                          <!-- <figure class="single-post-img">
                              <img src="img/work/9.jpg" alt=""  />
                          </figure> -->
                          <p><% out.println(a.getDescription()); %></p>
                          
                          <hr class="post-separator" />

                          <div class="row-fluid">
                            <div class="span12">
                             
                              <ul class="unstyled inline meta-info-v2">
                                <li><a href="#"><%=DAOComment.compterNombreComment(Integer.parseInt(ida))%> </a><fmt:message key="message.comment"/></li>
                                <li></li>
                                
                              </ul>
                            </div> <!-- end span12 -->
                            
                          </div> <!-- end row-fluid -->
                      </article> <!--end single-post-content-->
                  </div>  <!--end span5-->
                  <div class="span7">
                      <div class="comments-container">
                          <div class="row-fluid">
                              <div class="comments-title">
                                  <div class="span11">
                                      <h4 class="title"><%out.println(DAOComment.compterNombreComment(Integer.parseInt(ida)));%> <fmt:message key="message.comment"/> </h4>
                                  </div> <!--end span11-->
                                  <div class="span1">
                                      <div class="comments-share-icon">
                                          <i class="icon-share icon-large"></i>
                                      </div> <!--end comments-share-icon-->
                                  </div>  <!--end span1-->
                              </div> <!--end comments-title-->
                          </div> <!--end row-fludi-->
                         
                                  
                                  
                               <!-- hellooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo -->   
                               
                                <% DAOComment dc=new DAOComment();
						ArrayList<comment> com =dc.AllcommentByArticleId(Integer.parseInt(ida));
                          
    for(int i=0;i<com.size();i++){
    	 Etudiant ee=DAOEtudiant.getEtd(com.get(i).getId_user());
    if(request.getParameter("action")!=null)
		{
			if(request.getParameter("action").equals("m"))
			{
				int id=Integer.parseInt(request.getParameter("idC"));
				if(id==com.get(i).getId_comment())
				{%>
		<div class="row-fluid">
                        
                              <div class="comment-container v2">
                                  <div class="span2">
                                      <figure class="comments-avatar">
                                          <img src="profile/<%=DAOEtudiant.getEtd((int)session.getAttribute("idE")).getImage()%>" alt="avatar" style="border-radius: 20%; width: 60px; height: 60px;"/>
                                      </figure>
                                  </div><!-- end span2-->
                                  <div class="span10">
                                      <ul class="unstyled inline comment-title">
                                          <li><h5><%out.println(DAOEtudiant.getEtd((int)session.getAttribute("idE")).getNom()+" "+DAOEtudiant.getEtd((int)session.getAttribute("idE")).getPrenom()); %></h5></li>
                                          <li>-</li>
                                          <li><fmt:message key="message.modcomm"/></li>
                                      </ul> <!--end comment-title-->
                                      <div class="comment-form">
                                          <form action="updateComment">
                                          <label class="checkbox">
                                               <input type="checkbox" value="">
                                               <input type='hidden' name='action' value='u' />
                                                <input type="hidden" value="<%= request.getParameter("idA")%>" name="idA">
                                                <input type="hidden" value="<%= request.getParameter("idE")%>" name="idE">
                                                <input type="hidden" value="<%= request.getParameter("idC")%>" name="idC">
                                             </label>
                                              <textarea name="comment" id="" cols="30" rows="5"><%=com.get(i).getContenu() %></textarea>
                                               <ul class="unstyled inline comment-form-actions">
                                                <li class="file"><a href="#" id="comment-file-trigger"></a></li>
                                                <li class="sendButton"><button class="btn btn-block" type="submit"> <fmt:message key="message.modcomm"/></button></li>
                                              </ul>

                                              
                                          </form>
                                      </div> <!--end comment-form-->
                                  </div> <!--end span9-->
                                 
                              </div> <!--end comment-container-->
                          </div> <!--end row-fluid-->
		<% } 

				else 
				{
					
					%>

		<div class="row-fluid">
                              <div class="comment-container">
                                  <div class="span2">
                                      <figure class="comments-avatar">
                                          <img src="profile/<%=ee.getImage()%>" style="border-radius: 20%; width: 60px; height: 60px;" alt="avatar" />
                                      </figure>
                                  </div><!-- end span2-->
                                  <div class="span9">
                                      <ul class="unstyled inline comment-title">
                                          <li><h5><% out.println(ee.getNom()+" "+ee.getPrenom());%></h5></li>
                                          <li>-</li>
                                             <li><%=com.get(i).getDate() %></li>
                                             <%if(com.get(i).getId_user()==(int)session.getAttribute("idE")){
                                            	 %>	
                                            <li></li>
                                            <li></li> 
                                           <li></li>
                                            <li></li>
                                           <li></li>
                                           <li></li>
                                            
                                            <li class="unstyled"><a href="single-post.jsp?action=m&&idC=<%=com.get(i).getId_comment()%>&&idE=<%=request.getParameter("idE")%>&&idA=<%=request.getParameter("idA")%>"><fmt:message key="message.mod"/></a>-<a href="single-post.jsp?action=d&&idC=<%=com.get(i).getId_comment()%>&&idE=<%=request.getParameter("idE")%>&&idA=<%=request.getParameter("idA")%>"><fmt:message key="message.supp"/></a></li>
                                             
                                            <% } %>
                                            
                                             
                                      </ul> <!--end comment-title-->
                                      <p><% out.println(com.get(i).getContenu()); %></p>
                                      <ul class="unstyled inline comment-rating">
                                         
                                      </ul>
                                      
                                  </div> <!--end span9-->
                                
                                   
                              </div> <!--end comment-container-->
                          </div> <!--end row-fluid-->
                                  <%}}}
    else 
	{
		
					%>
							  <div class="row-fluid">
                              <div class="comment-container">
                                  <div class="span2">
                                      <figure class="comments-avatar">
                                          <img src="profile/<%out.println(ee.getImage());%>"  style="border-radius: 20%; width: 60px; height: 60px;" alt="avatar"/>
                                      </figure>
                                  </div><!-- end span2-->
                                  <div class="span9">
                                      <ul class="unstyled inline comment-title">
                                          <li><h5><% out.println(ee.getNom()+" "+ee.getPrenom());%></h5></li>
                                          <li>-</li>
                                             <li><%=com.get(i).getDate() %></li>
                                             <%if(com.get(i).getId_user()==(int)session.getAttribute("idE")){
                                            	 %>	
                                            <li></li>
                                            <li></li> 
                                           <li></li>
                                            <li></li>
                                           <li></li>
                                           <li></li>
                                            
                                            <li class="unstyled"><a href="single-post.jsp?action=m&&idC=<%=com.get(i).getId_comment()%>&&idE=<%=request.getParameter("idE")%>&&idA=<%=request.getParameter("idA")%>"> <fmt:message key="message.mod"/></a>-<a href="single-post.jsp?action=d&&idC=<%=com.get(i).getId_comment()%>&&idE=<%=request.getParameter("idE")%>&&idA=<%=request.getParameter("idA")%>"><fmt:message key="message.supp"/></a></li>
                                             
                                            <% } %>
                                      </ul> <!--end comment-title-->
                                      <p><% out.println(com.get(i).getContenu()); %></p>
                                      <ul class="unstyled inline comment-rating">                       
                                      </ul>
                                  </div> <!--end span9-->
                                
                                   
                              </div> <!--end comment-container-->
                          </div> <!--end row-fluid-->
<% }}%>
	
                         
                            <div class="row-fluid">
                        
                              <div class="comment-container v2">
                                  <div class="span2">
                                      <figure class="comments-avatar">
                                          <img src="profile/<%=DAOEtudiant.getEtd((int)session.getAttribute("idE")).getImage()%>" alt="avatar" style="border-radius: 20%; width: 60px; height: 60px;"/>
                                      </figure>
                                  </div><!-- end span2-->
                                  <div class="span10">
                                      <ul class="unstyled inline comment-title">
                                          <li><h5><%out.println(DAOEtudiant.getEtd((int)session.getAttribute("idE")).getNom()+" "+DAOEtudiant.getEtd((int)session.getAttribute("idE")).getPrenom()); %></h5></li>
                                          <li>-</li>
                                          <li><fmt:message key="message.addcommment"/></li>
                                      </ul> <!--end comment-title-->
                                      <div class="comment-form">
                                          <form action="ajouterComment" >
                                              <textarea name="comment" id="" cols="30" rows="5"></textarea>
                                               <ul class="unstyled inline comment-form-actions">
                                                <li class="file"><a href="#" id="comment-file-trigger"></a></li>
                                                <li class="sendButton"><button class="btn btn-block" type="submit"><fmt:message key="message.postcom"/></button></li>
                                              </ul>

                                              <label class="checkbox">
                                               <input type="checkbox" value="">
                                                <input type="text" value="<%= request.getParameter("idA")%>" name="id_A">
                                                <input type="text" value="<%= request.getParameter("idE")%>" name="id_E">
                                                
                                             </label>
                                          </form>
                                      </div> <!--end comment-form-->
                                  </div> <!--end span9-->
                                 
                              </div> <!--end comment-container-->
                          </div> <!--end row-fluid-->

 
<%
if(request.getParameter("action")!=null)
{
	if(request.getParameter("action").equals("d")) {
	
	
	DAOComment.delete(Integer.parseInt(request.getParameter("idC")));
	 response.sendRedirect("single-post.jsp?idA="+request.getParameter("idA")+"&&idE="+request.getParameter("idE"));

	}	
	
}
 if(request.getParameter("value")!=null){
    if (request.getParameter("value").equals("fr")){
    	DAOEtudiant.updateLang(request.getParameter("value"),(int)session.getAttribute("idE"));
    	response.sendRedirect("single-post.jsp?idA="+request.getParameter("idA")+"&&idE="+request.getParameter("idE"));
   	
    }
    if (request.getParameter("value").equals("en")){
    	DAOEtudiant.updateLang(request.getParameter("value"),(int)session.getAttribute("idE"));
    	response.sendRedirect("single-post.jsp?idA="+request.getParameter("idA")+"&&idE="+request.getParameter("idE"));
    }
    }
    
    	%>
    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    
    <script src="js/libraries/jquery.min.js"></script> 
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>

  </body>

<!-- Mirrored from ipictureshtml.azyrusthemes.com/single-post.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 23 Mar 2018 22:45:59 GMT -->
</html>

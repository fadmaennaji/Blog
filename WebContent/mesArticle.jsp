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

          <a class="brand" href=""><img src="img/work/logo.PNG" alt="BLOG"></a>

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
                          <a href="mesArticle.jsp?value=fr">Français</a>
                          <a href="mesArticle.jsp?value=fr" class="tag">France</a>  
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
                          <a href="mesArticle.jsp?value=en">Englais</a>
                          <a href="mesArticle.jsp?value=en" class="tag">USA</a>  
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
  <% if(request.getParameter("value")!=null){
    if (request.getParameter("value").equals("fr")){
    	DAOEtudiant.updateLang(request.getParameter("value"),(int)session.getAttribute("idE"));
    	response.sendRedirect("mesArticle.jsp");
   	
    }
    if (request.getParameter("value").equals("en")){
    	DAOEtudiant.updateLang(request.getParameter("value"),(int)session.getAttribute("idE"));
    	response.sendRedirect("mesArticle.jsp");
    }
    }
    
    	%>

    <!-- ============================  RECENT BLOG START ============================ -->
    <% ajouter_article at=new ajouter_article();
		ArrayList<Article> liv =at.AllarticlebyID((int)session.getAttribute("idE"));
		%>
		
		<section class="recent-posts">
        <div class="container">
          <div class="row">
            <div class="span12">
              <h4 class="title v2"><fmt:message key="message.postes"/></h4>
            </div> <!-- end span12 -->
          </div> <!-- end row -->
          <div class="row">
            <div class="recent-post-container">
              
              

	<% for(int i=0;i<liv.size();i++)
		{ Etudiant e=DAOEtudiant.getEtd((int)session.getAttribute("idE")); %>
		<div class="span6">
                <article class="recent-post">
                 <ul class="unstyled inline meta-info">
                 <li><img src="profile/<%=e.getImage() %>" alt="avatar" style="border-radius: 20%; width: 62px; height: 62px;" /></li>
                        <li><a href="profile.jsp" class="author"><% out.println(e.getNom()+" "+e.getPrenom());%></a></li>
                        <li><a href="#"><% out.println(liv.get(i).getDate()); %></a></li>
                      </ul>
                  <figure>
                    <img src="" alt="" />
                  </figure>
                  <h5 class="post-title"><a href="#"><% out.println(liv.get(i).getObjet()); %></a></h5>
                  <p class="content"><% out.println(liv.get(i).getDescription()); %>
                    </p>

                  <hr class="post-separator" />

                  <div class="row-fluid">
                    <div class="span8">
                      <ul class="unstyled inline meta-info-v2">
                        <li><a href="single-post.jsp?idA=<% out.println(liv.get(i).getId_article());%>&&idE=<%=e.getId_etd()%>"><%=DAOComment.compterNombreComment(liv.get(i).getId_article())%> <fmt:message key="message.comment"/></a></li>
                        <li></li>
                        <li><a href="mesArticle.jsp?action=d&&idA=<% out.println(liv.get(i).getId_article());%>"><fmt:message key="message.supp"/></a></li>
                        <li></li>
                        <li><a href="mesArticle.jsp?action=m&&idA=<% out.println(liv.get(i).getId_article());%>&&idE=<%=session.getAttribute("idE")%>"><fmt:message key="message.mod"/></a></li>
                        
                      </ul>
                    </div> <!-- end span8 -->
                    <div class="span4">
                      <a href="single-post.jsp?idA=<% out.println(liv.get(i).getId_article());%>&&idE=<%=session.getAttribute("idE")%>" class="btn pull-right"><fmt:message key="message.lireplus"/></a>
                    </div> <!-- end span4 -->
                  </div> <!-- end row-fluid -->
                </article> <!-- end recent-post -->
              </div> <!-- end span5 -->
		
							
		<%} %>
			
                    
              
              
            </div> <!-- end recent-post-container -->
          </div> <!-- end row -->
        </div> <!-- end container -->
      </section><!--  end recent-post   -->

<%
if(request.getParameter("action")!=null)
{
	if(request.getParameter("action").equals("d"))
	{
	ajouter_article.delete(Integer.parseInt(request.getParameter("idA")));
	response.sendRedirect("mesArticle.jsp");
	}
else if(request.getParameter("action").equals("m"))
	{
	int idA=Integer.parseInt(request.getParameter("idA"));
	response.sendRedirect("updateArticle.jsp?idA="+idA);
	
	}}
%>

 
    <script src="js/libraries/jquery.min.js"></script> 
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>

  </body>

<!-- Mirrored from ipictureshtml.azyrusthemes.com/blog.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 23 Mar 2018 22:45:58 GMT -->
</html>

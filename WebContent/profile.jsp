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
<style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 400px;
  margin: auto;
  text-align: center;
  font-family: arial;
}


.title {
  color: #00001a;
  font-size: 18px;
}

.emp-profile{
    padding: 3%;
    margin-top: 3%;
    margin-bottom: 3%;
    border-radius: 0.5rem;
    background: #fff;
}
.profile-img{
    text-align: center;
}
.profile-img img{
    width: 50%;
    height: 50%;
}
.profile-img .file {
    position: relative;
    overflow: hidden;
    margin-top: -10%;
    width: 44%;
    border: none;
    border-radius: 0;
    font-size: 15px;
    background: #B8B8B8;
}
.profile-img .file input {
    position: absolute;
    opacity: 0;
    right: 0;
    top: 0;
}
button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color:#3b5998 ;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
   
}
.hid
{  position: absolute;
opacity: 0;}

</style>
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
   
  <div style="text-align:center">
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

          <a class="brand" href=""><img src="img/work/logo.PNG" alt="logo"></a>

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
                          <a href="profile.jsp?value=fr">Français</a>
                          <a href="profile.jsp?value=fr" class="tag">France</a>  
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
                          <a href="profile.jsp?value=en">Englais</a>
                          <a href="profile.jsp?value=en" class="tag">USA</a>  
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
    	response.sendRedirect("profile.jsp");
   	
    }
    if (request.getParameter("value").equals("en")){
    	DAOEtudiant.updateLang(request.getParameter("value"),(int)session.getAttribute("idE"));
    	response.sendRedirect("profile.jsp");
    }
    }
    
    	%>
    <!-- ============================  Categories Start ============================ -->
     <% Etudiant e=DAOEtudiant.getEtd((int)session.getAttribute("idE"));%>
  <h2> <p style="font-family:'Garamond'; font-size:50px; color:#3b5998 ; margin-top: 50px; "><fmt:message key="message.prof"/></p></h2>

     <div style="margin-top: 30px;">
<div class="card">
<div class="profile-img">
<FORM ENCTYPE="multipart/form-data" ACTION="changerphoto" METHOD="POST">
<div>
							
                           <img src="profile/<%=e.getImage() %>" style="width:200px; height:200px;" alt="IMG"> 
</div>
                            <div class="file btn btn-lg btn-primary">
            <fmt:message key="message.change"/>
                                <input type="file" name="file"/>
                            </div>

  <h1><%out.println(e.getPrenom()+" "+e.getNom());%></h1>
    <p class="title"><%out.println(e.getCne());%></p>
  <p class="title"><%=e.getEmail() %></p>
   </div><input class="hid" type="text" name="idE"  value="<%out.println(session.getAttribute("idE"));%>">
  <p><button> <fmt:message key="message.change"/></button></p>
  </form>
  <form action="ModifierInfo.jsp"><p><button> <fmt:message key="message.modinf"/></button></p></form>

    <script src="js/libraries/jquery.min.js"></script> 
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>

  </body>

  </html>
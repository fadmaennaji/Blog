<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="Beans.*" %>
        <%@ page import="java.util.ArrayList"%>
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
                          <a href="ModifierInfo.jsp?value=fr">Français</a>
                          <a href="ModifierInfo.jsp?value=fr" class="tag">France</a>  
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
                          <a href="ModifierInfo.jsp?value=en">Englais</a>
                          <a href="ModifierInfo.jsp?value=en" class="tag">USA</a>  
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
    	response.sendRedirect("ModifierInfo.jsp");
   	
    }
    if (request.getParameter("value").equals("en")){
    	DAOEtudiant.updateLang(request.getParameter("value"),(int)session.getAttribute("idE"));
    	response.sendRedirect("ModifierInfo.jsp");
    }
    }
    
    	%>

    <!-- ============================  Categories Start ============================ -->
<% Etudiant e=DAOEtudiant.getEtd((int)session.getAttribute("idE"));%>
    <section class="picture-categories">

      <div class="container">
        <div class="row">
          <div class="span12">
            <div class="single-image-container">
              <div class="row-fluid">
                <div class="span11">

                  <h4 class="title"><fmt:message key="message.modinf"/></h4>
                  
                </div> <!-- end span1 -->

                
               
              </div><!--  end row-fluid -->
            </div> <!-- end single-image-container -->
          </div> <!-- end span12 -->

        </div> <!-- end row -->

        
      </div> <!-- end container -->

    </section> <!-- end picture-categories -->


    <section class="image-decription-container">
      <div class="container">
        <div class="row">
          <div class="span6">
            
          </div> <!-- end span6 -->
          

            <div class="form-item-description">
              <form action="UpdateEtudiant" method="post">
           
             <fieldset>
                <label><fmt:message key="message.nom"/></label> <input type="text" name="nom" class="span3"  value="<%=e.getNom()%>">
            </fieldset>
            <fieldset>
              <label><fmt:message key="message.prenom"/></label>  <input type="text" name="prenom" class="span3" value="<%=e.getPrenom()%>">
            </fieldset>
            <fieldset>
               <label><fmt:message key="message.datenaiss"/></label> <input type="text" name="date" class="span3" <%if(e.getCne().equals("null")){%>  <% } else%>value="<%=e.getDate()%>">
            </fieldset>
            <fieldset>
              <label>Cne</label>  <input type="text" name="cne" class="span3"  <%if(e.getCne().equals("null")){%>  <% } else%>value="<%=e.getCne()%>">
            </fieldset>
            <fieldset>
              <label>Email</label>  <input type="text" name="email" class="span3"  value="<%=e.getEmail()%>">
            </fieldset>
            <fieldset>
              <label><fmt:message key="message.phone"/></label>  <input type="text" name="phone" class="span3"  <%if(e.getCne().equals("null")){%>  <% } else%>value="<%=e.getNum_tlf()%>"">
            </fieldset>
            <fieldset>
               <label><fmt:message key="message.password"/></label> <input type="password" name="password" class="span3" value="<%=e.getPassword()%>">
            </fieldset>
            <fieldset>
                <input type="hidden" name="image" class="span3" value="<%=e.getImage()%>">
            </fieldset>
            <fieldset>
                <input type="hidden" name="sexe" class="span3" value="<%=e.getSexe()%>">
            </fieldset>
            <fieldset>
                <input type="hidden" name="idE" class="span3" value="<%=session.getAttribute("idE")%>">
            </fieldset>
                <fieldset>
                 
                  <button type="submit" class="btn btn-primary btn-large"><fmt:message key="message.submit"/></button>
                  <button type="reset" class="btn btn-default btn-large"><fmt:message key="message.annuler"/></button>
                </fieldset>
              </form>
            </div>
            </div> <!-- end item-description -->
          </div> <!-- end span6 -->
        </div> <!-- end row -->
      </div> <!-- end container -->
    </section> <!-- end image-description-container -->

 
    <script src="js/libraries/jquery.min.js"></script> 
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>

  </body>

<!-- Mirrored from ipictureshtml.azyrusthemes.com/image-upload.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 23 Mar 2018 22:45:55 GMT -->
</html>
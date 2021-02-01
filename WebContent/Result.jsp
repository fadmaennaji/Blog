<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
     "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Result</title>
</head>
<body>
    <center>
        <h3 style=" text-align: justify;"><%=request.getAttribute("Message")%></h3>
    </center>
    <script type="text/javascript">
    window.setTimeout(function(){

        // Move to a new location or you can do something else
        window.location.href = "login.html";

    }, 5000);

    </script>
</body>
</html>
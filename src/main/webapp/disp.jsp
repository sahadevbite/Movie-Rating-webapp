<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <h1> Stars</h1>

 <%
           // String mv_name = (String) request.getAttribute("mv_name");
           // int stars =Integer.parseInt((String)request.getAttribute("stars"));
            //String stars = (String) request.getAttribute("stars");
            String cmmnt = (String) request.getAttribute("cmmnt");
            String mv_name = (String) request.getAttribute("mv_name");
            String email = (String) request.getAttribute("email");



        %>

        <br>
        
       <br> Your Rating  : ${stars}<br>
        
        <br><br>
          Your Comment  : <%=cmmnt%> 
      
        <br>
                  Your Comment  : <%=mv_name%> 
        
        <br>
                  Your Comment  : <%=email%> 
        
        <br><br> 
</body>
</html>
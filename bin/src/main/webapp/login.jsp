<%-- 
    Document   : login.jsp
    Created on : Sep 28, 2014, 12:04:14 PM
    Author     : Administrator
--%>

<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.LoggedIn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INSTAGRIM &#9760;</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">

    <body>
        <ul>
            <lihome><a href="/Instagrim"><i class="fa fa-home"></i> home</a></lihome>
                    <%   
                        LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
                        if (lg != null) {
                            String UserName = lg.getUsername();
                            if (lg.getlogedin()) {
                    %>
                <li style="float:left"><a href="/Instagrim/Profile">my profile</a></li>
                <li><a href="/Instagrim/Upload"><i class="fa fa-upload"></i> upload</a></li>
                <li><a href="logout.jsp"><i class="fa fa-sign-out"></i> logout</a></li>
                <li><a href="/Instagrim/Images/<%=lg.getUsername()%>"><i class="fa fa-picture-o"></i> your images</a></li>
                    <%}
                            }else{
                                %>
                <li><a href="register.jsp"><i class="fa fa-user-plus"></i> register</a></li>
                <li><a href="login.jsp"><i class="fa fa-sign-in"></i> login</a></li>
                
                <%            
                    }
                %>
                <br />
            </ul>
        <br />
                <h1>INSTAGRIM &#9760;</h1>
                <h2>YOUR WORLD IN BLACK AND WHITE</h2>
                <h3>LOGIN</h3>
            <form method="POST"  action="Login">
                <ul2>
                    <li2>USERNAME<br/>
                    <input type="text" name="username"></li2>
                    <br />
                    <li2>PASSWORD<br/>
                    <input type="password" name="password"></li2>
                    <br />
                    <input type="submit" value="LOGIN"> 
                </ul2>
                <br />
            </form>
        </article>
    </body>
</html>

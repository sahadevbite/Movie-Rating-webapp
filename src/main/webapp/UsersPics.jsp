<%-- 
    Document   : UsersPics
    Created on : Sep 24, 2014, 2:52:48 PM
    Author     : Administrator
--%>

<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>instagrim - your pics</title>
        <link rel="stylesheet" type="text/css" href="/Instagrim/Styles.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">

    </head>
        
            
    <body>
        
        <nav>
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
                <li><a href="/Instagrim/logout.jsp"><i class="fa fa-sign-out"></i> logout</a></li>
                <li><a href="/Instagrim/Images/<%=lg.getUsername()%>"><i class="fa fa-picture-o"></i> your images</a></li>
                    <%}
                            }else{
                                %>
                <li><a href="/Instagrim/register.jsp"><i class="fa fa-user-plus"></i> register</a></li>
                <li><a href="/Instagrim/login.jsp"><i class="fa fa-sign-in"></i> login</a></li>
                
                <%            
                    }
                %>
                <br />
            </ul>
        </nav>
    <head>
        <br />
            <h1>INSTAGRIM &#9760;</h1>
            <h2>YOUR WORLD IN BLACK AND WHITE</h2>
    </head>        
        <article>
        <h1>YOUR PICS</h1>
        <form method="POST" enctype="multipart/form-data" action="deleteall">
            <input type="checkbox" name="confirmdelete" required>Yes, I want to Delete all my lovely, lovely pictures. <br />
            <input type="submit" name="deleteall" value="DELETE ALL PICTURES">
        </form>
        <%
            java.util.LinkedList<Pic> lsPics = (java.util.LinkedList<Pic>) request.getAttribute("Pics");
            if (lsPics == null) {
        %>
        <p>no pictures found!</p>
        <%
        } else {
            Iterator<Pic> iterator;
            iterator = lsPics.iterator();
        %>
                <table>
                    <tr>
                        <th>IMAGE</th>
                        <th>PICTURE ID</th>
                    </tr>
        <%
            while (iterator.hasNext()) {%>
            <tr>
                <td>
                    <%
                        Pic p = (Pic) iterator.next();
                    %>
                    <a href="/Instagrim/Image/<%=p.getSUUID()%>" ><img src="/Instagrim/Thumb/<%=p.getSUUID()%>"></a>
                </td>
                <td>
                    <%=p.getSUUID()%>
                </td>
                <td>
                    
                </td>
                
            </tr>    
        <%
            }
            }
        %>
       
        </article>
        
        
    </body>
</html>

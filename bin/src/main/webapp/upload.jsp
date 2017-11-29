<%-- 
    Document   : upload
    Created on : Sep 22, 2014, 6:31:50 PM
    Author     : Administrator
--%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>instagrim - upload image</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" />
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
        </nav> 
        <header>
        <br />
        <h1>INSTAGRIM &#9760;</h1>
        <h2>YOUR WORLD IN BLACK AND WHITE</h2>
        <h3>FILE UPLOAD</h3>
            <nav>
                <ul2>    
                    <form method="POST" enctype="multipart/form-data" action="Image">
                    <input type="file" name="upfile"><br/>
                    <%-- start of the implementation of options on uploading files. hope to get it working, may not --%>
                        <input type="radio" name="upfileopt" value="brighter" required>BRIGHTER <i class="fa fa-sun-o"></i><br />
                        <input type="radio" name="upfileopt" value="darker"   required>DARKER <i class="fa fa-moon-o"></i><br />
                        <input type="radio" name="upfileopt" value="grayscale"required>BLACK AND WHITE <i class="fa fa-adjust"></i><br />
                    <input type="submit" value="upload">
                    </form>
                </ul2>
            </nav>
        </header>
    </body>
</html>

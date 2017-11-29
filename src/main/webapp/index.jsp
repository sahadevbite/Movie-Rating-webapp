<%-- 
    Document   : index
    Created on : Sep 28, 2014, 7:01:44 PM
    Author     : Administrator
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>instagrim &#9760;</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
                <li><a href="register.jsp"><i class="fa fa-user-plus"></i> register</a></li>
                <li><a href="login.jsp"><i class="fa fa-sign-in"></i> login</a></li>
                
                <%            
                    }
                %>
                <br />
            </ul>
        </nav>
        <header>
            <br />
            <h1>INSTAGRIM &#9760;</h1>
            <h2>YOUR WORLD IN BLACK AND WHITE</h2>
        </header>
        <img src="C:/Users/sahadev/Downloads/Compressed/instagrim-master-master/src/main/webapp/dummy/img1.jpg">							
    </body>
    <p> HAVE AN IMAGE? NEED IT MADE GRAYSCALE? THIS IS THE SITE FOR YOU! <br/>
        WITH OVER TWO CURRENT USERS, INSTAGRIM&#8482; IS THE ONE-STOP SHOP<br/> 
        FOR ANY BUSY BEE WHO NEEDS A PICTURE DRAINED OF ALL COLOUR!<br/>
        DAZZLE YOUR FRIENDS WITH YOUR APPARENT SKILLS IN PHOTOSHOP,<br/>
        <i>WITHOUT LEARNING A SINGLE THING!</i></p>
    <p style="position: absolute; bottom: 0; left: 0; width: 100%; text-align: left;"> 
        ORIGINAL SITE DEVELOPED BY <i class="fa fa-github-square" > </i>
        <a href="https://github.com/acobley">Andy Cobley</a>
        <br />
        MODIFIED BY <i class="fa fa-github-square" > </i> 
        <a href="https://github.com/cjgsdundee">Chris Sutherland</a>
    </p>
</html>

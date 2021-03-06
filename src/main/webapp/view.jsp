<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">
		
		<title>Movie Review</title>

		<!-- Loading third party fonts -->
		<link href="http://fonts.googleapis.com/css?family=Roboto:300,400,700|" rel="stylesheet" type="text/css">
		<link href="fonts/font-awesome.min.css" rel="stylesheet" type="text/css">

		<!-- Loading main css file -->
		<link rel="stylesheet" href="style.css">
		
		<!--[if lt IE 9]>
		<script src="js/ie-support/html5.js"></script>
		<script src="js/ie-support/respond.js"></script>
		<![endif]-->

	</head>


	<body>
		

		<div id="site-content">
			<header class="site-header">
				<div class="container">
					<a href="index1.jsp" id="branding">
						<img src="images/logo.png" alt="" class="logo">
						<div class="logo-copy">
							<h1 class="site-title">Movies Anaysis</h1>
							<small class="site-description">Watch It</small>
						</div>
					</a> <!-- #branding -->

					<div class="main-navigation">
						<button type="button" class="menu-toggle"><i class="fa fa-bars"></i></button>
						<ul class="menu">
							<li class="menu-item current-menu-item"><a href="index1.jsp">Home</a></li>
							<li class="menu-item"><a href="Register1.jsp">Register</a></li>
							<li class="menu-item"><a href="review.jsp">Movies</a></li>
							<li class="menu-item"><a href="view.jsp">View</a></li>
			                <li class="menu-item"><a href="Kmeans.jsp">Analysis</a></li>
						</ul> <!-- .menu -->

						<form action="#" class="search-form">
							<input type="text" placeholder="Search...">
							<button><i class="fa fa-search"></i></button>
						</form>
					</div> <!-- .main-navigation -->

					<div class="mobile-navigation"></div>
					
				</div>
			</header>
<main class="main-content">
				<div class="container">
					<div class="page">
						<div class="breadcrumbs">
							<a href="index1.jsp">Home</a>
							<span>View</span>
						</div>

						<div class="row">
								<div class="col-md-4">
									<div class="feature">
										<h3 class="feature-title">View Your Comment And Movie Name</h3>
										<article>
            <form method="POST"  action="email">
                <ul2>
                    <li2>Enter Email <br />
                    <input type="text" name="email" required></li2>
                    <br/>
                    <li2><input type="submit" value="Submit"></li2> 
                </ul2>
                <br/>
                
            </form>
 <input type="hidden" name="1" value="<%= request.getAttribute("mv_name")%>"> </input>
    <input type="hidden" name="2" value="<%= request.getAttribute("stars")%>"> </input> 
     <input type="hidden" name="1" value="<%= request.getAttribute("cmmnt")%>"> </input>
    
        </article>
									</div>
								</div>
								
							</div>
						</div>
					</div>
				</div> <!-- .container -->
			</main>
<footer class="site-footer">
				<div class="container">
					<div class="row">
						<div class="col-md-2">
							<div class="widget">
							</div>
						</div>
						<div class="col-md-2">
							<div class="widget">
								
								</ul>
							</div>
						</div>
						<div class="col-md-2">
							<div class="widget">
								
								</ul>
							</div>
						</div>
						<div class="col-md-2">
							<div class="widget">
								
								</ul>
							</div>
						</div>
						<div class="col-md-2">
							<div class="widget">
								
								</ul>
							</div>
						</div>
						<div class="col-md-2">
							<div class="widget">
								
								
							</div>
						</div>
					</div> <!-- .row -->
					<div class="colophon">Copyright 2014 Company name, Designed by Themezy. All rights reserved</div>
				</div> <!-- .container -->

			</footer>
		</div>
		<!-- Default snippet for navigation -->
		


		<script src="js/jquery-1.11.1.min.js"></script>
		<script src="http://maps.google.com/maps/api/js?sensor=false&amp;language=en"></script>
		<script src="js/plugins.js"></script>
		<script src="js/app.js"></script>
		
	</body>

</html>
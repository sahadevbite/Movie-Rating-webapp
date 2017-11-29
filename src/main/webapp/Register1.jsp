<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">
		
		<title>Movie Review | Join Us</title>

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
							<li class="menu-item"><a href="index1.jsp">Home</a></li>
							<li class="menu-item current-menu-item"><a href="Register.jsp">Register</a></li>
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
							<a href="index.html">Home</a>
							<span>Register</span>
						</div>

						<div class="row">
								<div class="col-md-4">
									<div class="feature">
										<h3 class="feature-title">Register</h3>
										
     
        <article>
            <h3>REGISTER AS USER</h3>
            <form method="POST"  action="Register1">
                <ul2>
                    <li2>FIRST NAME <br />
                    <input type="text" name="fname" required></li2>
                    <br/>
                    <br>
                    <li2>LAST NAME <br />
                    <input type="text" name="lname" required></li2>
                    <br/>
                    <br>
                    <li2>EMAIL <br />
                    <input type="email" name="email" required></li2>
                    <br/>
                    <br>
                    
                    <li2>Gender <br />
            <td>&nbsp;Male&nbsp;<input type="radio" name="gender" id="gender" value="male"></input> &nbsp;Female&nbsp;<input type="radio" name="gender" id="gender" value="female" required></input></td>
                    <br/>
                    <br>
                    <li2>Mobile <br />
                    <input type="number" name="mobile"></li2>
                    <br/>
                    <br>
                    <li2><input type="submit" value="REGISTER"></li2> 
                </ul2>
                <br/>
                
            </form>

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
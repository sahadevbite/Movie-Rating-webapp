<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">
		
		<title>Movie Review | Single</title>

		<!-- Loading third party fonts -->
		<link href="http://fonts.googleapis.com/css?family=Roboto:300,400,700|" rel="stylesheet" type="text/css">
		<link href="fonts/font-awesome.min.css" rel="stylesheet" type="text/css">
		<link rel='stylesheet' type='text/css' href='css/style.css'>

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
							<li class="menu-item current-menu-item"><a href="review.jsp">Movie</a></li>
							<li class="menu-item"><a href="Register1.jsp">Register</a></li>
						  <li class="menu-item"><a href="Kmeans.jsp">Analysis</a></li>
						<li class="menu-item"><a href="view.jsp">View</a></li>
						</ul> <!-- .menu -->

						<form action="#" class="search-form">
							<input type="text" placeholder="Search...">
							<button><i class="fa fa-search"></i></button>
						</form><i class="fa fa-search"></i></button>
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
							<a href="review.html">Movie Review</a>
							<span>Maleficent</span>
						</div>
      <form method="POST"  action="Rating0">
						<div class="content">
							<div class="row">
								<div class="col-md-6">
									<figure class="movie-poster"><img src="dummy/im1.jpg" alt="#"></figure>
								</div>
								<div class="col-md-6">
									<h2 class="movie-title">Maleficent</h2>
									<div class="movie-summary">
										<p>Maleficent is a kind-hearted fairy, who is deceived by the love of her life, Stefan. Soon, she places a curse on his daughter, Aurora, in order to avenge her thirst for justice.<p/>
									</div>
									
									<ul class="movie-meta">
									<!--  	<li><strong> Give Rating:</strong> 
											<div class="star-rating" title="Rated 4.00 out of 5"><span style="width:100%"><strong class="rating">4.00</strong> out of 5</span></div>
										</li> -->
										<li><strong>Length:</strong> 98 min</li>
										<li><strong>Premiere:</strong> 30 May 2014</li>
										<li><strong>Category:</strong> Animation/Adventure/Comedy</li>
									</ul>

									<ul class="starring">
										<li><strong>Directors:</strong>Robert Stromberg</li>
										<li><strong>Writers:</strong>Linda Woolverton</li>
										<li><strong>Stars:</strong> 	
Angelina Jolie,
Sharlto Copley,
Elle Fanning,
Sam Riley,
Imelda Staunton,
Juno Temple,
Lesley Manville</li>
									</ul>
									<li2>Enter Movie Name <br />
                              <input type="text" name="mv_name" required></li2>
                              <br>
                              <li2>Your Email:<br />
                           <input type="text" name="email" required></li2>
                           <br>
                           Comment:<br/>
                       <textarea name="cmmnt" rows="4" cols="30">
                            </textarea><br/><br/>
									<p>Please rate this Movie:</p>
	
	<fieldset class="rating">
		<input type="radio" name="stars" id="4_stars" value="5" >
		<label class="stars" for="4_stars">4 stars</label>
		<input type="radio" name="stars" id="3_stars" value="4" >
		<label class="stars" for="3_stars">3 stars</label>
		<input type="radio" name="stars" id="2_stars" value="3" >
		<label class="stars" for="2_stars">2 stars</label>
		<input type="radio" name="stars" id="1_stars" value="2" >
		<label class="stars" for="1_stars">1 star</label>
		<input type="radio" name="stars" id="0_stars" value="1" required>
		<label class="stars" for="0_stars">0 star</label>
		<span  class="label"> Rating: </span>
	
	 </fieldset><br>
	 <div style="text-align:left"> <input type="submit" value="Rate This Movie">
	 </form>
								</div>
							</div> <!-- .row -->
							<div class="entry-content">
							
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
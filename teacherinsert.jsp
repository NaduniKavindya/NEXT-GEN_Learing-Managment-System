<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>


<html lang="en-US">
	<head>

		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>Teacher Registration Form</title>
		<meta name="description" content="Unika - Responsive One Page HTML5 Template">
		<meta name="keywords" content="HTML5, Bootsrtrap, One Page, Responsive, Template, Portfolio" />
		<meta name="author" content="imransdesign.com">

		<!-- Mobile Metas -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
        
        <!-- Google Fonts  -->
		<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,500' rel='stylesheet' type='text/css'> <!-- Body font -->
		<link href='http://fonts.googleapis.com/css?family=Lato:300,400' rel='stylesheet' type='text/css'> <!-- Navbar font -->

		<!-- Libs and Plugins CSS -->
		<link rel="stylesheet" href="inc/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="inc/animations/css/animate.min.css">
		<link rel="stylesheet" href="inc/font-awesome/css/font-awesome.min.css"> <!-- Font Icons -->
		<link rel="stylesheet" href="inc/owl-carousel/css/owl.carousel.css">
		<link rel="stylesheet" href="inc/owl-carousel/css/owl.theme.css">

		<!-- Theme CSS -->
        <link rel="stylesheet" href="css/reset.css">
		<link rel="stylesheet" href="css/style.css">
		<link rel="stylesheet" href="css/mobile.css">

		<!-- Skin CSS -->
		<link rel="stylesheet" href="css/skin/cool-gray.css">
        <!-- <link rel="stylesheet" href="css/skin/ice-blue.css"> -->
        <!-- <link rel="stylesheet" href="css/skin/summer-orange.css"> -->
        <!-- <link rel="stylesheet" href="css/skin/fresh-lime.css"> -->
        <!-- <link rel="stylesheet" href="css/skin/night-purple.css"> -->

		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

	</head>

    <body data-spy="scroll" data-target="#main-navbar">
        <div class="page-loader"></div>  <!-- Display loading image while page loads -->
    	<div class="body">
        
            <!--========== BEGIN HEADER ==========-->
            <header id="header" class="header-main">

                <!-- Begin Navbar -->
                <nav id="main-navbar" class="navbar navbar-default navbar-fixed-top" role="navigation"> <!-- Classes: navbar-default, navbar-inverse, navbar-fixed-top, navbar-fixed-bottom, navbar-transparent. Note: If you use non-transparent navbar, set "height: 98px;" to #header -->

                  <div class="container">

                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                      </button>
                      <!--a class="navbar-brand page-scroll" href="index.html"> </a-->
                     <h1> <a class="page-scroll" href="index.html"> NEXT GEN</a></h1>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a class="page-scroll" href="body">Home</a></li>
                            
                            <li><a class="page-scroll" href="#services-section">Services</a></li>
                            <li><a class="page-scroll" href="#portfolio-section">Works</a></li>
                                                    
                            <li><a class="page-scroll" href="#prices-section">Package</a></li>
                            <li><a class="page-scroll" href="#payment-section">payment</a></li>
                            <li><a class="page-scroll" href="#contact-section">Contact</a></li>
                            <li><a class="page-scroll" href="index.html">log out</a></li>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                  </div><!-- /.container -->
                </nav>
                <!-- End Navbar -->

            </header>
            <!-- ========= END HEADER =========-->
            
         
                  
              
       
                
                         
                
            <!-- Begin payment section -->
            <section id="payment-section" class="page text-white parallax" data-stellar-background-ratio="0.5" style="background-image: url(img/slider-bg.jpg);">
            <div class="cover"></div>
            <br><br><br>
                 <!-- Begin page header-->
                <div class="page-header-wrapper">
                    <div class="container">
                        <div class="page-header text-center wow fadeInDown" data-wow-delay="0.4s">
                            <h2>Create Teacher User Profile</h2>
                            <div class="devider"></div>
                            <p class="subtitle">Fill all the fields and submit to add a teacher</p>
                        </div>
                    </div>
                </div>
                <!-- End page header-->
                
                <div class="contact wow bounceInRight" data-wow-delay="0.4s">
                    <div class="container">
                        <div class="row">
                        
                            
                        
                            <div class="col-sm-6">
                                <div class="contact-form">
                                    
                                    <form role="form">
                                        <div class="form-group">
                                            Teacher ID Number: <br><br>
                                            <input  type="text" class="form-control input-lg" name="tid" pattern="[t,T]+[0-9]{4}" title="First charachter should be t/T.Example-T0001"required>
                                        </div>
                                        <div class="form-group">
                                            Full Name:  <br><br>
                                            <input type="text" class="form-control input-lg" name="name" required>
                                        </div>
                                        <div class="form-group">
                                            NIC Number:  <br><br>
                                            <input type="text" class="form-control input-lg" name="nic" pattern="[0-9]{9}+[v,V]" title="Example- 871234859V" required> 
                                        </div>
                                        <div class="form-group">
                                        	Gender: <br><br>
                                            <input type="radio" name="gender" checked> Male
        									<input type="radio" name="gender" > Female
        
                                        </div><br>
                                        <div class="form-group">
                                        	Subject: <br><br>
                                            <select name="subject" id="subject" class="form-control input-lg" required>
        										<option value="Science">Science</option>
       											<option value="Mathematics">Mathematics</option>
       									 		<option value="English">English</option>
        										<option value="History">History</option>
        										<option value="Sinhala">Sinhala</option>
        										<option value="Commerce">Commerce</option>
        										<option value="ICT">ICT</option>
        										<option value="Geography">Geography</option>
        									</select>
                                        </div>
                                        <div class="form-group">
                                        	Address:  <br><br>
                                               <textarea class="form-control input-lg" name="address" rows="5" cols="50" required> </textarea>
                                        </div>
                                        <div class="form-group">
                                        	Email Address: <br><br>
                                            <input type="email"  class="form-control input-lg" name="email" placeholder="abc@gmail.com" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}" title="Example- abc@gmail.com"required>
                                        </div>
                                        <div class="form-group">
                                        	Contact Number:  <br><br>
                                           <input class="form-control input-lg" type="text" name="phone"  pattern="[0-9]{10}" title="Must contain 10 numbers,Example-0761234567" required>
                                        </div>
                                        <div class="form-group">
                                        	Experience in years:  <br><br>
                                            <input type="text"  class="form-control input-lg" name="experience" pattern="[0-9]{1,2}" title="Example- 20" required>
                                        </div>
                                         <div class="form-group">
                                        	Education Qualifications:  <br><br>
                                            <textarea  class="form-control input-lg" name="eduqualifications" rows="5" cols="50"  required></textarea>
                                        </div>
                                        <div class="form-group">
                                        	User Name:  <br><br>
                                             <input type="text"  class="form-control input-lg" name="uid" required>
                                        </div>
                                         <div class="form-group">
                                       		 Password:  <br><br>
                                            <input type="password" class="form-control input-lg" id="psw" name="psw" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
            title="Must contain at 					least one number and one uppercase and lowercase letter, and at least 8 or more characters" required> <br/><br/>
                                        </div>

                                        <button type="submit" name="submit" class="btn wow bounceInRight" data-wow-delay="0.8s">Add Teacher</button>
                                        
                                    </form>
                                </div>  
                            </div>
                                                                                
                        </div> <!-- /.row -->

                    </div> <!-- /.container -->
                </div>
            </section>
            <!-- End payment section -->
    
                
            <!-- Begin footer -->
            <footer class="text-off-white">
            
                <div class="footer-top">
                
                
                <div class="footer">
                    <div class="container text-center wow fadeIn" data-wow-delay="0.4s">
                        <p class="copyright">Copyright &copy; 2021 - Designed By <a href="https://www.behance.net/poljakova" class="theme-author"> </a> &amp; Developed by <a href="http://www.imransdesign.com/" class="theme-author"></a></p>
                    </div>
                </div>

            </footer>
            <!-- End footer -->

            <a href="#" class="scrolltotop"><i class="fa fa-arrow-up"></i></a> <!-- Scroll to top button -->
                                              
        </div><!-- body ends -->
        
        
        
        
        <!-- Plugins JS -->
		<script src="inc/jquery/jquery-1.11.1.min.js"></script>
		<script src="inc/bootstrap/js/bootstrap.min.js"></script>
		<script src="inc/owl-carousel/js/owl.carousel.min.js"></script>
		<script src="inc/stellar/js/jquery.stellar.min.js"></script>
		<script src="inc/animations/js/wow.min.js"></script>
        <script src="inc/waypoints.min.js"></script>
		<script src="inc/isotope.pkgd.min.js"></script>
		<script src="inc/classie.js"></script>
		<script src="inc/jquery.easing.min.js"></script>
		<script src="inc/jquery.counterup.min.js"></script>
		<script src="inc/smoothscroll.js"></script>

		<!-- Theme JS -->
		<script src="js/theme.js"></script>


</body>
</html>
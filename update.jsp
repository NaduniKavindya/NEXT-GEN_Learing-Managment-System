<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en-US">
	<head>
  		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta charset="ISO-8859-1">
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>NEXT GEN</title>
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
                            <li><a class="page-scroll" href="#about-section">About</a></li>
                                                     
                            <li><a class="page-scroll" href="#contact-section">Package</a></li>
                            <li><a class="page-scroll" href="#footer">Contact</a></li>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                  </div><!-- /.container -->
                </nav>
                <!-- End Navbar -->

            </header>
            <!-- ========= END HEADER =========-->
            
            
            <br> <br>
 <br>  <br>        
    <!-- Begin Services -->
         <section id="payment-section" class="page text-white parallax" data-stellar-background-ratio="0.5" style="background-image: url(img/slider-bg.jpg);">
            <div class="cover"></div>
                <!-- Begin page header-->
                <div class="page-header-wrapper">
                    <div class="container">
                        <div class="page-header text-center wow fadeInDown" data-wow-delay="0.4s">
                            <h2>Study Packages</h2>
                            <div class="devider"></div>
                            <p class="subtitle">More Academic Materials<br><br><br> CHECK PACKAGE<br></p>
                        </div>
                    </div>
                </div>
               
                <!-- End page header-->
 <div class="contact wow bounceInRight" data-wow-delay="0.4s" >
                    <div class="container">
                        <div class="row">
                        
               
                <!-- End page header-->
 
 <c:forEach var="cus" items="${cusdetails}">

<c:set var="cid" value="${cus.ID}"/> 
<c:set var="fna" value=" ${cus.fname}"/>
<c:set var="lna" value="${cus.lname}"/> 
<c:set var="dob" value="${cus.dob}"/> 
<c:set var="una" value="${cus.uname}"/> 
<c:set var="ima" value="${cus.image}"/> 
<c:set var="price" value="${cus.price}"/>          

<br><br><center>
<h2>CHECK THE DETAILS</h2> <br><br><br></center>


<!--  
<table style="width:50%">


<tr><td>     </td><td class="co">ID </td><td class="co"> ${cus.ID}</td></tr><tr></tr>
<tr><td>     </td><td class="co">PACKAGE NAME </td><td class="co">  ${cus.fname}</td></tr><tr></tr>
<tr><td>     </td><td class="co">SUGGESTED BY  </td><td class="co">  ${cus.lname}</td></tr><tr></tr>
<tr><td>     </td><td class="co">DATE UPLOADED </td><td class="co">  ${cus.dob}</td></tr><tr></tr>
<tr><td>     </td><td class="co">DESCRIPTION </td><td class="co"> ${cus.uname}</td></tr><tr></tr>

</table>

-->

<div class="col-sm-6">
                                <div class="contact-form">
                                
                                	<h4>Update package</h4>   
                                    <form role="form">
                                  
										<div class="form-group">
                                             <h4>PACKAGE ID:</h4>   ${cus.ID}
                                        </div>
                                        <div class="form-group">
                                             <h4>PACKAGE NAME:</h4> ${cus.fname}
                                        </div>
                                         <div class="form-group">
                                            <h4>SUGGESTED BY:</h4>  ${cus.lname}
                                        </div>
                                        <div class="form-group">
                                           <h4> DATE UPLOADED:</h4> ${cus.dob}
                                        </div>
                                        
                                        <div class="form-group">
                                           <h4> DESCRIPTION:</h4>   ${cus.uname}
                                        </div>
                                        
                                        <div class="form-group">
                                             <img src="${cus.image}">
                                        </div>
                                         <div class="form-group">
                                            <h4>PRICE :</h4>  ${cus.price}
                                        </div>
                                    </form>
                                      
                                </div>
                                </div>	
                               

	
</c:forEach>

<c:url value="updateadmin.jsp" var ="cusUp" >
<c:param name ="id" value ="${cid}"/>
<c:param name ="fname" value ="${fna}"/>
<c:param name ="lname" value ="${lna}"/>
<c:param name ="dob" value ="${dob}"/>
<c:param name ="unam" value ="${una}"/>
<c:param name ="imge" value ="${ima}"/>
<c:param name="price" value="${price}"/>  
</c:url>
<br><br>
<br><br><br><br><br><br>
<a href ="${cusUp}">
  <button type="submit"  class="btn wow bounceInRight" data-wow-delay="1s"  name ="submit">Update Details</button>
</a>


<c:url value="deleteadmin.jsp" var ="stuDe" >
<c:param name ="id" value ="${cid}"/>
<c:param name ="fname" value ="${fna}"/>
<c:param name ="lname" value ="${lna}"/>
<c:param name ="dob" value ="${dob}"/>
<c:param name ="unam" value ="${una}"/>
<c:param name ="imge" value ="${ima}"/>
<c:param name="price" value="${price}"/>  
</c:url>
<br>

<br>
<a href ="${stuDe}">
   <button type="submit"  class="btn wow bounceInRight" data-wow-delay="1s"  name ="submit"> Delete  Details</button>
</a>
</div>
</div>
</div>

</section>
            <!-- Begin social section -->
			
                

                
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


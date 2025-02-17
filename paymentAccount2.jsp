<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>


<html >
	<head>

		<meta charset="utf-8">
		<meta charset="ISO-8859-1">
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
                            <li><a class="page-scroll" href="homeAd.jsp">Home</a></li>
                     		 <li><a class="page-scroll" href="#payment-section">payment</a></li>
                           
                        </ul>
                    </div><!-- /.navbar-collapse -->
                  </div><!-- /.container -->
                </nav>
                <!-- End Navbar -->

            </header>
            <!-- ========= END HEADER =========-->
            
         
         <h1><br><br>
</h1>              
              
       
                
                         
                
            <!-- Begin payment section -->
            <section id="payment-section" class="page text-white parallax" data-stellar-background-ratio="0.5" style="background-image: url(img/pay.png);">
            <div class="cover"></div>
            
                 <!-- Begin page header-->
                <div class="page-header-wrapper">
                    <div class="container">
                        <div class="page-header text-center wow fadeInDown" data-wow-delay="0.4s">
                            <h2> PAYMENT ACCOUNT</h2>
                            <div class="devider"></div>
                            <p class="subtitle">pay class fees</p>
                        </div>
                    </div>
                </div>
                <!-- End page header-->
                
                <div class="contact wow bounceInRight" data-wow-delay="0.4s">
                    <div class="container">
                        <div class="row">
                        
                            
                        
                            
                                
                                    <center>
                                    <table style="width:100%">
                                    <c:forEach var="pay" items ="${payDetails}">
                                    
                                    
                                    <c:set var="id" value ="${pay.pID}"/>
                                    <c:set var="naem" value ="${pay.name} "/>
                                    <c:set var="age" value ="${pay.age}"/>
                                    <c:set var="Stu" value ="${pay.student_numbr}"/>
                                    <c:set var="grade" value ="${pay.grade}"/>
                                    <c:set var="suB" value ="${pay.subject}"/>
                                    <c:set var="paY" value ="${pay.paydate}"/>
                                    <c:set var="emaiL" value ="${pay.email}"/>
                                    <c:set var="mobilE" value ="${pay.phone_number}"/>
                                    <c:set var="mageG" value ="${pay.masseg}"/>
                                    <c:set var="sliP" value ="${pay.img}"/>
                                  
                                  
                                    
                                    <tr>
                                    <td>Payment ID  </td><td> =</td>
                                    <td>${pay.pID} </td>
                                    </tr>
                                    
                                      <tr>
                                    <td>Name </td><td> =</td>
                                    <td>${pay.name} </td>
                                    </tr>
                                    
                                      <tr>
                                    <td>Age </td><td> =</td>
                                    <td>${pay.age} </td>
                                    </tr>
                                    
                                      <tr>
                                    <td>Student Number </td><td> =</td>
                                    <td>${pay.student_numbr} </td>
                                    </tr>
                                    
                                      <tr>
                                    <td>Grade </td><td> =</td>
                                    <td>${pay.grade} </td>
                                    </tr>
                                    

                                    
                                      <tr>
                                    <td>Subject</td><td> =</td>
                                    <td>${pay.subject} </td>
                                    </tr>
                                    
                                      <tr>
                                    <td>Pay Date</td><td> =</td>
                                    <td>${pay.paydate} </td>
                                    </tr>
                                    
                                      <tr>
                                    <td>Email</td><td> =</td>
                                    <td>${pay.email} </td>
                                    </tr>
                                    
                                      <tr>
                                    <td>Phone Number</td><td> =</td>
                                    <td>${pay.phone_number} </td>
                                    </tr>
                                    
                                      <tr>
                                    <td>Massege</td><td> =</td>
                                    <td>${pay.masseg} </td>
                                    </tr>
                                    
                                      <tr>
                                    <td>Payment Slip Photo<br></td><td> =</td>
                                    <td><img src="${pay.img}"> </td>
                                    <a href="${pay.img}" download="${pay.img}">DOWNLORD </a>
                                    </tr>
                               
                                    </c:forEach>
                                    </table>
                                    
                        
                           </center>
                           
                            <c:url value="updatePayment.jsp" var="Upayment">          	
    					  
    					  <c:param name ="ID" value="${id}"/>
    					  <c:param name ="NAME" value="${naem}"/>		
    					  <c:param name ="AGE" value="${age}"/>
    					  <c:param name ="STU" value="${Stu}"/>
    					  <c:param name ="GRADE" value="${grade}"/>
    					  <c:param name ="SUB" value="${suB}"/>
    					  <c:param name ="PAY" value="${paY}"/>
    					  <c:param name ="emaiL" value="${emaiL}"/>
    					  <c:param name ="MOBILE" value="${mobilE}"/>
    					  <c:param name ="MSG" value="${mageG}"/>
    					  <c:param name ="IMG" value="${sliP}"/>
                           
                           </c:url>
                           
                            <c:url value="deletePayment.jsp" var="Dpayment">          	
    					  
    					  <c:param name ="ID" value="${id}"/>
    					  <c:param name ="NAME" value="${naem}"/>		
    					  <c:param name ="AGE" value="${age}"/>
    					  <c:param name ="STU" value="${Stu}"/>
    					  <c:param name ="GRADE" value="${grade}"/>
    					  <c:param name ="SUB" value="${suB}"/>
    					  <c:param name ="PAY" value="${paY}"/>
    					  <c:param name ="emaiL" value="${emaiL}"/>
    					  <c:param name ="MOBILE" value="${mobilE}"/>
    					  <c:param name ="MSG" value="${mageG}"/>
    					  <c:param name ="IMG" value="${sliP}"/>
                           
                           </c:url>
                           <a href="homeAd.jsp">
	 							<button type="submit"   class="btn wow bounceInRight" data-wow-delay="0.8s" name="ok" value="ok">DONE</button>
						</a>  
                           
                         
                           
                           
                            <a href="${pay.img}" download="${pay.img}">DOWNLORD </a>
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

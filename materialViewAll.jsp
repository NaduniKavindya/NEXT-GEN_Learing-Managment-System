<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.util.*" %> 

<html lang="en-US">
	<head>

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
                            <li><a class="page-scroll" href="#services-section">Services</a></li>
                            <li><a class="page-scroll" href="#portfolio-section">Works</a></li>
                            <li><a class="page-scroll" href="#team-section">Team</a></li>                            
                            <li><a class="page-scroll" href="#prices-section">Package</a></li>
                            <li><a class="page-scroll" href="#contact-section">Material</a></li>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                  </div><!-- /.container -->
                </nav>
                <!-- End Navbar -->

            </header>
            <!-- ========= END HEADER =========-->
            
            
            
                
        
                
            <br><br><br>
                
           
              
                
                
                
                
            <!-- Begin contact section -->
			<section id="contact-section" class="page text-white parallax" data-stellar-background-ratio="0.5" style="background-image: url(img/map-bg.jpg);">
            <div class="cover"></div>
            
                 <!-- Begin page header-->
                <div class="page-header-wrapper">
                    <div class="container">
                        <div class="page-header text-center wow fadeInDown" data-wow-delay="0.4s">
                            <h2>All Course Material(s)</h2>
                            <div class="devider"></div>
                            <!--<p class="subtitle">All to contact us</p>-->
                        </div>
                    </div>
                </div>
                <!-- End page header-->

                <div class="contact wow bounceInRight" data-wow-delay="0.4s">
                    <div class="container">
                    	<div class="row">
                        <!--start form 1-->
                        <div class="col-sm-6">
                                <div class="contact-form">
                                 <form action="materialSearch" method="post">
							<a href="materialSearch.jsp"><button type="button" class="btn wow bounceInRight">Try Another Search</button></a>
							</form>
							<br><br>
						                 <table width="1100px" align="center"  style="border: 0 none;">

												<!--<tr class="table-header">
												<td class="col col-1"><b>Title</b></td>
												<td class="col col-1"><b>Date</b></td>
												<td class="col col-1"><b>Grade</b></td>
												<td class="col col-1"><b>Subject</b></td>
												<td class="col col-1"><b>Link</b></td>
												
												</tr>-->
												<%
												int count=0;
												String color = "#F9EBB3";
												
												
												if(request.getAttribute("allList")!=null)
												{
												 	ArrayList al = (ArrayList)request.getAttribute("allList");
													Iterator itr = al.iterator();
													
													
													while(itr.hasNext())
													{
														
														if((count%2)==0)
														{
															
															color = "rgba(255, 255, 255, 0.06)";
															
															
														}
														else
														{
															 color = "#171717";
														}
														count++;
														ArrayList matList = (ArrayList) itr.next();
														%>
												<tr height=30px style="background-color:<%=color%>; text-align:center; border: 0 none;">
												<!--<td class="col col-1"><%=matList.get(0)%></td>-->
												<!--<td class="col col-2"><%=matList.get(1)%></td>-->
												<td><h3><%=matList.get(2)%> for grade <%=matList.get(4)%> <%=matList.get(5)%></h3></td>
			
												</tr>
												<tr height=30px style="background-color:<%=color%>; text-align:center; border: 0 none;">
												<td><a href="https://<%=matList.get(6)%>">View PDF on Google Drive</a></td>
												</tr>
												<tr height=30px style="background-color:<%=color%>; text-align:center; border: 0 none;">
												<td>Added on <%=matList.get(3)%></td><td></td>
												</tr>
												
							<div>	
							<tr height=30px style="background-color:<%=color%>; border: 0 none;">			
							<td><form action = "materialUpdateHelper" method = "post"><button class="btn btn2 wow bounceInRight" data-wow-delay="0.8s" type="submit" name = "submit" value = "<%=matList.get(0)%>">Update</button></form>
							<br>
							<form action = "materialDelete" method = "post" onsubmit=return(confirmDelete())><button align="left" class="btn btn2 wow bounceInRight" data-wow-delay="0.8s" type= "submit" name = "submit" value = "<%=matList.get(0)%>">Delete</button></form></td>
							</tr>
							<tr height = 10px></tr>
							</div>

							<script>
									function confirmDelete() {
										var x = confirm("Are you sure to delete this material?");
										if (x)
										  return true;
										else
										  return false;
									}
								</script>
									<%
								
								}
							}

							%>

							<%
							if(count==0)
							{
								%>
							<tr>
							<td colspan=8 align="center" style="background-color:eeffee"><b>Nothing found, please try another search...</b></td>


							</tr>
								<%
							}
							%>
							</table>
							<form action="materialViewLatest" method="post">
							<button type="submit" class="btn wow bounceInRight">Back</button>
							</form>
							</div>
							</div>
                                                                                
                        </div> <!-- /.row -->
                    </div> <!-- /.container -->
                </div>
            </section>
            <!-- End contact section -->
                
                

                
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

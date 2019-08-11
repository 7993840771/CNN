<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

<title>Online College Magazine</title>

    <link rel="shortcut icon" type="image/x-icon" href="img/headericon.png" />
    <!-- Bootstrap Core CSS - Uses Bootswatch Flatly Theme: http://bootswatch.com/flatly/ -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/freelancer.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="page-top" class="index">

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top">
                
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->

            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                  <a class="navbar-brand" href="#page-top"></a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                   <li class="page-scroll">
                        <a href="#signupfac">Faculty</a>
                    </li>
                   <li class="page-scroll">
                        <a href="#signupstu">Student</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#login">Login</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#about">About Us</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#contact">Contact Us</a>
                    </li>
                    <li class="page-scroll">
					<a href="adminlogin.jsp">Admin Login</a>
                    </li>


                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    
       
    <!-- Header -->
    <header bgcolor="blue">
	    <div class="container" style="width:95%; height:50%;">
           
			  <%@ include file="slider.jsp" %>  
           
        </div>
    </header>

    <!-- Portfolio Grid Section -->
    

    

    <!-- About Section -->
    <section class="success" id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <br/>
					<br/>
					<br/>
					<br/>
					<br/>
                </div>
				<br/>
				<div class="col-lg-12 text-left">
				
				<%@ include file="about.jsp" %>
				</div>
            </div>

        </div>
    </section>
   
    <!-- Login Begining  -->
    
    <section id="login">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <br/>
                </div>
			
            </div>
            <div class="row">
			    <br/>
                <div class="col-lg-8 col-lg-offset-2">
                    <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
                    <!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
                   				<%@ include file="login.jsp" %>
                </div>
            </div>
        </div>
    </section>

    
    
    <!-- Login Ending  -->
   
   
    
    <!-- Sign up Begining for student  -->
    
    <section id="signupfac">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
				<br/>
                  	 <div>
					  	<%@ include file="FacultyRegistration.jsp" %>
					 </div>
                </div>
            </div>
           
        </div>
    </section>

<!-- Sign Up End  for student -->


    <!-- Sign up Begining  for faculty -->
    
    <section id="signupstu">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <br/>
					 <div>
					  		<%@ include file="StudentRegistration.jsp" %>
					 </div>
                </div>
            </div>
           
        </div>
    </section>

<!-- Sign Up End  for faculty-->




    
    

    <!-- Contact Section -->
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
                    <!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
                                   </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="text-center">
       <%@ include file="footer.jsp" %>
    </footer>

    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
    <div class="scroll-top page-scroll visible-xs visible-sm">
        <a class="btn btn-primary" href="#page-top">
            <i class="fa fa-chevron-up"></i>
        </a>
    </div>

    <!-- Portfolio Modals -->
   
       <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="js/classie.js"></script>
    <script src="js/cbpAnimatedHeader.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/freelancer.js"></script>

</body>

</html>

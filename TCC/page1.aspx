<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="page1.aspx.cs" Inherits="TCC.page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Home</title>
  <meta content="" name="descriptison">
  <meta content="" name="keywords">
  

  <!-- Favicon-->
  <link rel="icon" type="image/x-icon" href="img/1.ico" />

   <!-- Font Awesome icons (free version)-->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">
   

  <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
  
  
<!-- Vendor CSS Files -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/icofont/icofont.min.css" rel="stylesheet">
<link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
<link href="vendor/animate.css/animate.min.css" rel="stylesheet">
<link href="vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="vendor/line-awesome/css/line-awesome.min.css" rel="stylesheet">
<link href="vendor/venobox/venobox.css" rel="stylesheet">
<link href="vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">

 
 

  <link href="vendor/venobox/venobox.css" rel="stylesheet">
  <link href="vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
 
  
    <!-- Template Main CSS File -->
    <link href="css/style.css" rel="stylesheet">

</head>
<body>
    <form id="form1" runat="server">

<header id="header" class="fixed-top d-flex align-items-center  header-transparent ">

    <div class="container d-flex align-items-center">

      <div class="logo mr-auto">
        <h1 class="text-light"><a href="">Technical Computer Collage</a></h1>
       
    </div>

      <nav class="nav-menu d-none d-lg-block">
        <ul style="font-weight: bold;">
          <li class="active"><a href="#up">Home</a></li>
          <li><a href="" data-toggle="modal" data-target="#myModal" >Sign-in</a></li>
          <li><a href="">Forum</a></li>
        </ul>
      </nav>
     

    </div>
  </header>


  
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header text-center">
          <h4 class="modal-title w-100 font-weight-bold">Sign up</h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body mx-3">
        
          <div class="md-form mb-5">
            <i class="fas fa-envelope prefix grey-text"></i>
            <label data-error="wrong" data-success="right" for="orangeForm-email">Your email</label>
           <!-- <input type="email" id="orangeForm-email" class="form-control validate"  required>-->
              <asp:TextBox ID="TextBox1" runat="server" type="email" required class="form-control validate" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>

          </div>
  
          <div class="md-form mb-4">
            <i class="fas fa-lock prefix grey-text"></i>
            <label data-error="wrong" data-success="right" for="orangeForm-pass">Your password</label>
           <!-- <input type="password" id="orangeForm-pass" class="form-control validate"  required>-->
              <asp:TextBox ID="TextBox2" type="password"  class="form-control validate"  required runat="server"></asp:TextBox>
          </div>
          <div class="form-check" style="font-weight: bold;">
            <input type="checkbox" required> <span > I have read and agreed to the <a  href="#" style="color: blue;">Trems Of Services</a> ! </span>
        </div>
  
        </div>
        <div class="modal-footer d-flex justify-content-center">
          <!--<button class="btn btn-primary">Sign In</button>-->
            <asp:Button class="btn btn-primary" runat="server" Text="Sign In"></asp:Button>
        </div>
      </div>
    </div>
  </div>
  
  



 <section id="hero" class="d-flex flex-column justify-content-end align-items-center">
    <div id="heroCarousel" class="container carousel carousel-fade" data-ride="carousel">

      <div class="carousel-item active">
        <div class="carousel-container">
          <h2 class="animate__animated animate__fadeInDown">Welcome to <span>TCC</span></h2>
          <h2 class="animate__animated fanimate__adeInUp" style="font-size: 32px;">"Where true computer science engineers graduate from"</h2>
         
        </div>
    </div>

    </div>

    <svg class="hero-waves" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 24 150 28 " preserveAspectRatio="none">
      <defs>
        <path id="wave-path" d="M-160 44c30 0 58-18 88-18s 58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z">
      </defs>
      <g class="wave1">
        <use xlink:href="#wave-path" x="50" y="3" fill="rgba(255,255,255, .1)">
      </g>
      <g class="wave2">
        <use xlink:href="#wave-path" x="50" y="0" fill="rgba(255,255,255, .2)">
      </g>
      <g class="wave3">
        <use xlink:href="#wave-path" x="50" y="9" fill="#fff">
      </g>
    </svg>

 </section>
 
 <main id="main">

  <section id="features" class="features">
    <div class="container">

      <div class="section-title" data-aos="zoom-out">
        <h2>About</h2>
        <p>Who are we ?</p>
      </div>

      <ul class="nav nav-tabs row d-flex">
        <li class="nav-item col-3" data-aos="zoom-in">
          <a class="nav-link active show" data-toggle="tab" href="#tab-1">
            <i class="ri-gps-line"></i>
            <h4 class="d-none d-lg-block">Software-Engineering</h4>
          </a>
        </li>
        <li class="nav-item col-3" data-aos="zoom-in" data-aos-delay="100">
          <a class="nav-link" data-toggle="tab" href="#tab-2">
            <i class="ri-body-scan-line"></i>
            <h4 class="d-none d-lg-block">Hardware-Engineering</h4>
          </a>
        </li>
     <!-- <li class="nav-item col-3" data-aos="zoom-in" data-aos-delay="200">
          <a class="nav-link" data-toggle="tab" href="#tab-3">
            <i class="ri-sun-line"></i>
            <h4 class="d-none d-lg-block">Network-Engineering</h4>
          </a>
        </li>-->
      </ul>

      <div class="tab-content" data-aos="fade-up">
        <div class="tab-pane active show" id="tab-1">
          <div class="row">
            <div class="col-lg-6 order-2 order-lg-1 mt-3 mt-lg-0">
              <h3>We will show you the way of programing.</h3>
              <p>
                The field that is concerned with developing and designing high-quality software, taking into account the user's customizations and requirements at all levels. Software engineering is concerned with configuring the program from its earliest stages during problem analysis, then designing and writing the program until it is tried, tested, installed on devices, and the process of maintaining it.
              </p>
              <ul>
                Now you will be learining with us in the following years:
                <li><i class="ri-check-double-line"></i> Algorithm.</li>
                <li><i class="ri-check-double-line"></i>Programming Languages.</li>
                <li><i class="ri-check-double-line"></i>How to create your own project.</li>
                <li><i class="ri-check-double-line"></i>How to build a database of your own</li>
                <li><i class="ri-check-double-line"></i>How to desgin your own website</li>
              </ul>
              <p>
               We have the best engineers to help you in this road that you have chosen.
              </p>
            </div>
            <div class="col-lg-6 order-1 order-lg-2 text-center">
              <img src="img/features-1.png" alt="" class="img-fluid">
            </div>
          </div>
        </div>
        <div class="tab-pane" id="tab-2">
          <div class="row">
            <div class="col-lg-6 order-2 order-lg-1 mt-3 mt-lg-0">
              <h3>We will show you how to build your own hardware components</h3>
              <p>
                It is a branch of engineering that combines the multiple fields of computer science and electronics engineering required to develop computer hardware and software. Computer engineers usually have training in electronics engineering, software design, and software and hardware integration, rather than just software engineering or electrical engineering.
              </p>
              <ul>
                Now you will be learining with us in the following years:
                <li><i class="ri-check-double-line"></i> How to build your own setup.</li>
                <li><i class="ri-check-double-line"></i> How to maintain your pc.</li>
                <li><i class="ri-check-double-line"></i> How to control hardware components.</li>
                <li><i class="ri-check-double-line"></i> And of course abit of programing so you may as well have fun.</li>
              </ul>
              <p>
                We have the best engineers to help you in this road that you have chosen.
              </p>
            </div>
            <div class="col-lg-6 order-1 order-lg-2 text-center">
              <img src="img/features-2.png" alt="" class="img-fluid">
            </div>
          </div>
        </div>
       <!-- <div class="tab-pane" id="tab-3">
          <div class="row">
            <div class="col-lg-6 order-2 order-lg-1 mt-3 mt-lg-0">
              <h3>We will show you how to build your own Network</h3>
              <p>
                Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
                velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
                culpa qui officia deserunt mollit anim id est laborum
              </p>
              <ul>
                <li><i class="ri-check-double-line"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>
                <li><i class="ri-check-double-line"></i> Duis aute irure dolor in reprehenderit in voluptate velit.</li>
                <li><i class="ri-check-double-line"></i> Provident mollitia neque rerum asperiores dolores quos qui a. Ipsum neque dolor voluptate nisi sed.</li>
              </ul>
              <p class="font-italic">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
                magna aliqua.
              </p>
            </div>
            <div class="col-lg-6 order-1 order-lg-2 text-center">
              <img src="img/features-3.png" alt="" class="img-fluid">
            </div>
          </div>
        </div>-->
      </div>
    </div>
  </section>
  </main>




<footer id="footer">
    <div class="container">

      
      <div class="copyright">
        &copy; Copyright <strong><span>Technical Computer Collage</span></strong>. All Rights Reserved <br>
        <label><i>Desgined by Massive</i></label>
      </div>
      
    </div>
  </footer>


 <!-- Vendor JS Files -->
 <script src="vendor/jquery/jquery.min.js"></script>
 <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
 <script src="vendor/jquery.easing/jquery.easing.min.js"></script>
 <script src="vendor/isotope-layout/isotope.pkgd.min.js"></script>
 <script src="vendor/venobox/venobox.min.js"></script>
 <script src="vendor/owl.carousel/owl.carousel.min.js"></script>
 
 
    <!-- Template Main JS File -->
    <script src="js/main.js"></script>
  

       
    </form>
</body>
</html>

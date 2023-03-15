<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="Finate - Job Portal Website Template Using Bootstrap 5"/>
  <meta name="keywords" content="accessories, digital products, electronic html, modern, products, responsive"/>
  <meta name="author" content="hastech"/>

  <title>Job Details :: Finate - Job Portal Website Template Using Bootstrap 5</title>

  <!--== Favicon ==-->
  <link rel="shortcut icon" href="assets/img/favicon.ico" type="image/x-icon" />

  <!--== Google Fonts ==-->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,300;0,400;0,500;0,600;0,700;1,400&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500&display=swap" rel="stylesheet">


  <!--== Bootstrap CSS ==-->
  <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
  <!--== Icofont Icon CSS ==-->
  <link href="assets/css/icofont.css" rel="stylesheet" />
  <!--== Swiper CSS ==-->
  <link href="assets/css/swiper.min.css" rel="stylesheet" />
  <!--== Fancybox Min CSS ==-->
  <link href="assets/css/fancybox.min.css" rel="stylesheet" />
  <!--== Aos Min CSS ==-->
  <link href="assets/css/aos.min.css" rel="stylesheet" />

  <!--== Main Style CSS ==-->
  <link href="assets/css/style.css" rel="stylesheet" />
</head>

<body>

<!--wrapper start-->
<div class="wrapper">

  <!--== Start Header Wrapper ==-->
  <header class="header-area transparent">
    <div class="container">
      <div class="row no-gutter align-items-center position-relative">
        <div class="col-12">
          <div class="header-align">
            <div class="header-align-start">
              <div class="header-logo-area">
                <a href="index.jsp">
                  <img class="logo-main" src="assets/img/logo-light.png" alt="Logo" />
                  <img class="logo-light" src="assets/img/logo-light.png" alt="Logo" />
                </a>
              </div>
            </div>
            <div class="header-align-center">
              <div class="header-navigation-area position-relative">
                <ul class="main-menu nav">
                  <li><a href="index.jsp"><span>Accueil</span></a></li>
                  <li class="has-submenu"><a href="#/"><span>Trouver un Maalam</span></a>
                    <ul class="submenu-nav">
                      <li><a href="job.html"><span>Maalams</span></a></li>
                      <li><a href="job-details.jsp"><span>Détails de l'Maalam</span></a></li>
                    </ul>
                  </li>
                  <li><a href="employers-details.html"><span>Détails des employeurs</span></a></li>
                  <li class="has-submenu"><a href="#/"><span>Candidats</span></a>
                    <ul class="submenu-nav">
                      <li><a href="candidate.html"><span>Candidats</span></a></li>
                      <li><a href="candidate-details.html"><span>Détails du candidat</span></a></li>
                    </ul>
                  </li>
                  <li class="has-submenu"><a href="#/"><span>Pages</span></a>
                    <ul class="submenu-nav">
                      <li><a href="about-us.html"><span>À propos de nous</span></a></li>
                      <li><a href="signin.jsp"><span>Connexion</span></a></li>
                      <li><a href="signup.jsp"><span>Inscription</span></a></li>
                      <li><a href="page-not-found.html"><span>Page non trouvée</span></a></li>
                    </ul>
                  </li>
                  <li><a href="contact.html"><span>Contact</span></a></li>
                </ul>
              </div>
            </div>
            <div class="header-align-end">
              <div class="header-action-area">
                <a class="btn-registration" href="signup.jsp"><span>+</span> Inscription</a>
                <button class="btn-menu" type="button" data-bs-toggle="offcanvas" data-bs-target="#AsideOffcanvasMenu" aria-controls="AsideOffcanvasMenu">
                  <i class="icofont-navigation-menu"></i>
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </header>
  <!--== End Header Wrapper ==-->

  <main class="main-content">
    <!--== Start Page Header Area Wrapper ==-->
    <div class="page-header-area sec-overlay sec-overlay-black" data-bg-img="assets/img/photos/bg2.jpg">
      <div class="container pt--0 pb--0">
        <div class="row">
          <div class="col-12">
            <div class="page-header-content">
              <h2 class="title">Details</h2>
              <nav class="breadcrumb-area">
                <ul class="breadcrumb justify-content-center">
                  <li><a href="index.jsp">Home</a></li>
                  <li class="breadcrumb-sep">//</li>
                  <li>Job Details</li>
                </ul>
              </nav>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--== End Page Header Area Wrapper ==-->

    <!--== Start Job Details Area Wrapper ==-->
    <section class="job-details-area">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <div class="job-details-wrap">
              <div class="job-details-info">
                <div class="thumb">
                  <img src="<c:out value="${seller.imagePath}"/>" width="130" height="130" alt="Image-HasTech">
                </div>
                <div class="content">
                  <h4 class="title"><c:out value="${seller.jobTitle}"/></h4>
                  <h5 class="sub-title"><c:out value="${seller.firstName}"/> <c:out value="${seller.lastName}"/></h5>
                  <ul class="info-list">
                    <li><i class="icofont-location-pin"></i> <c:out value="${seller.ville}"/>, <c:out value="${seller.pays}"/></li>
                    <li><i class="icofont-phone"></i> <c:out value="${seller.numTelephone}"/></li>
                  </ul>
                </div>
              </div>
              <div class="job-details-price">
                <h4 class="title"><c:out value="${seller.price}"/>DH <span>/Jour</span></h4>
                <button type="button" class="btn-theme">Commander</button>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-7 col-xl-8">
            <div class="job-details-item">
              <div class="content">
                <h4 class="title">Description</h4>
                <p class="desc"><c:out value="${seller.description}"/></p>
              </div>
              <div class="content">
                <h4 class="title">Heures de travail</h4>
                <ul class="job-details-list">
                  <li><i class="icofont-check"></i> <c:out value="${seller.workingTime}"/></li>
                </ul>
              </div>

              <div class="content">
                <a class="btn-apply-now" href="contact.html">Commander <i class="icofont-long-arrow-right"></i></a>
              </div>
            </div>
          </div>
          <div class="col-lg-5 col-xl-4">
            <div class="job-sidebar">
              <div class="widget-item">
                <div class="widget-title">
                  <h3 class="title">Sommaire</h3>
                </div>
                <div class="summery-info">
                  <table class="table">
                    <table id="information">
                      <tbody>
                      <tr>
                        <td class="table-name">Nom</td>
                        <td class="dotted">:</td>
                        <td><c:out value="${seller.firstName}"/></td>
                      </tr>
                      <tr>
                        <td class="table-name">Sexe</td>
                        <td class="dotted">:</td>
                        <td><c:out value="${seller.sexe}"/></td>
                      </tr>
                      <tr>
                        <td class="table-name">Age</td>
                        <td class="dotted">:</td>
                        <td><c:out value="${Period.between(LocalDate.parse(seller.birthDay, DateTimeFormatter.ofPattern(\"yyyy-MM-dd\")), LocalDate.now())}"/></td>
                      </tr>
                      <tr>
                        <td class="table-name">Tél</td>
                        <td class="dotted">:</td>
                        <td><c:out value="${seller.numTelephone}"/></td>
                      </tr>
                      <tr>
                        <td class="table-name">Adresse</td>
                        <td class="dotted">:</td>
                        <td><c:out value="${seller.address}"/></td>
                      </tr>
                      <tr>
                        <td class="table-name">Email</td>
                        <td class="dotted">:</td>
                        <td><c:out value="${seller.email}"/></td>
                      </tr>
                      <tr>
                        <td class="table-name">Titre </td>
                        <td class="dotted">:</td>
                        <td>Intitulé du poste</td>
                      </tr>
                      <tr>
                        <td class="table-name">Salaire</td>
                        <td class="dotted">:</td>
                        <td><c:out value="${seller.price}"/> DH / Jours</td>
                      </tr>
                      <tr>
                        <td class="table-name">Expérience</td>
                        <td class="dotted">:</td>
                        <td><c:out value="${seller.experience}"/> années</td>
                      </tr>
                      </tbody>
                    </table>

                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--== End Job Details Area Wrapper ==-->
  </main>

  <!--== Start Footer Area Wrapper ==-->
  <footer class="footer-area">
    <!--== Start Footer Main ==-->
    <div class="footer-main">
      <div class="container pt--0 pb--0">
        <div class="row">
          <div class="col-md-6 col-lg-3">
            <div class="widget-item widget-about">
              <div class="widget-logo-area">
                <a href="index.jsp">
                  <img class="logo-main" src="assets/img/logo-light-theme.png" alt="Logo" />
                </a>
              </div>
              <p class="desc">That necessitat ecommerce platform that optimi your store popularised the release</p>
              <div class="social-icons">
                <a href="https://www.facebook.com" target="_blank" rel="noopener"><i class="icofont-facebook"></i></a>
                <a href="https://www.skype.com" target="_blank" rel="noopener"><i class="icofont-skype"></i></a>
                <a href="https://twitter.com" target="_blank" rel="noopener"><i class="icofont-twitter"></i></a>
              </div>
            </div>
          </div>
          <div class="col-lg-9">
            <div class="row">
              <div class="col-md-3 col-lg-3">
                <div class="widget-item nav-menu-item1">
                  <h4 class="widget-title">Entreprise</h4>
                  <h4 class="widget-collapsed-title collapsed" data-bs-toggle="collapse" data-bs-target="#widgetId-1">Entreprise</h4>
                  <div id="widgetId-1" class="collapse widget-collapse-body">
                    <div class="collapse-body">
                      <div class="widget-menu-wrap">
                        <ul class="nav-menu">
                          <li><a href="about-us.html">A propos de nous</a></li>
                          <li><a href="about-us.html">Pourquoi</a></li>
                          <li><a href="contact.html">Nous contacter</a></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-3 col-lg-4">
                <div class="widget-item nav-menu-item2">
                  <h4 class="widget-title">Ressources</h4>
                  <h4 class="widget-collapsed-title collapsed" data-bs-toggle="collapse" data-bs-target="#widgetId-2">Ressources</h4>
                  <div id="widgetId-2" class="collapse widget-collapse-body">
                    <div class="collapse-body">
                      <div class="widget-menu-wrap">
                        <ul class="nav-menu">
                          <li><a href="account-login.html">Liens Rapides</a></li>
                          <li><a href="job.html">Forfaits d'Maalam</a></li>
                          <li><a href="job.html">Publier une nouvelle offre d'Maalam</a></li>
                          <li><a href="job.html">Liste d'Maalams</a></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>            </div>
            </div>
          </div>
        </div>
      </div>
      <!--== End Footer Main ==-->

      <!--== Start Footer Bottom ==-->
      <div class="footer-bottom">
        <div class="container pt--0 pb--0">
          <div class="row">
            <div class="col-12">
              <div class="footer-bottom-content">
                <p class="copyright">© 2023 FPT. Made with <i class="icofont-heart"></i> by <a target="_blank" href="https://themeforest.net/user/codecarnival">AK,YB,AO,AE.</a></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--== End Footer Bottom ==-->
  </footer>
  <!--== End Footer Area Wrapper ==-->

  <!--== Scroll Top Button ==-->
  <div id="scroll-to-top" class="scroll-to-top"><span class="icofont-rounded-up"></span></div>

  <!--== Start Aside Menu ==-->
  <aside class="off-canvas-wrapper offcanvas offcanvas-start" tabindex="-1" id="AsideOffcanvasMenu" aria-labelledby="offcanvasExampleLabel">
    <div class="offcanvas-header">
      <h1 class="d-none" id="offcanvasExampleLabel">Aside Menu</h1>
      <button class="btn-menu-close" data-bs-dismiss="offcanvas" aria-label="Close">menu <i class="icofont-simple-left"></i></button>
    </div>
    <div class="offcanvas-body">
      <!-- Mobile Menu Start -->
      <div class="mobile-menu-items">
        <ul class="nav-menu">
          <li><a href="index.html">Home</a></li>
          <li><a href="#">Trouver un Mallam</a>
            <ul class="sub-menu">
              <li><a href="job.html">Jobs</a></li>
              <li><a href="job-details.jsp">Details</a></li>
            </ul>
          </li>
          <li><a href="employers-details.html">Employers Details</a></li>
          <li><a href="#">Candidates</a>
            <ul class="sub-menu">
              <li><a href="candidate.html">Candidates</a></li>
              <li><a href="candidate-details.html">Candidate Details</a></li>
            </ul>
          </li>
          <li><a href="#">Blog</a>
            <ul class="sub-menu">
              <li><a href="blog-grid.html">Blog Grid</a></li>
              <li><a href="blog.html">Blog Left Sidebar</a></li>
              <li><a href="blog-right-sidebar.html">Blog Right Sidebar</a></li>
              <li><a href="blog-details.html">Blog Details</a></li>
            </ul>
          </li>
          <li><a href="#">Pages</a>
            <ul class="sub-menu">
              <li><a href="about-us.html">About us</a></li>
              <li><a href="login.html">Login</a></li>
              <li><a href="registration.html">Registration</a></li>
              <li><a href="page-not-found.html">Page Not Found</a></li>
            </ul>
          </li>
          <li><a href="contact.html">Contact</a></li>
        </ul>
      </div>
      <!-- Mobile Menu End -->
    </div>
  </aside>
  <!--== End Aside Menu ==-->
</div>

<!--=======================Javascript============================-->

<!--=== jQuery Modernizr Min Js ===-->
<script src="assets/js/modernizr.js"></script>
<!--=== jQuery Min Js ===-->
<script src="assets/js/jquery-main.js"></script>
<!--=== jQuery Migration Min Js ===-->
<script src="assets/js/jquery-migrate.js"></script>
<!--=== jQuery Popper Min Js ===-->
<script src="assets/js/popper.min.js"></script>
<!--=== jQuery Bootstrap Min Js ===-->
<script src="assets/js/bootstrap.min.js"></script>
<!--=== jQuery Swiper Min Js ===-->
<script src="assets/js/swiper.min.js"></script>
<!--=== jQuery Fancybox Min Js ===-->
<script src="assets/js/fancybox.min.js"></script>
<!--=== jQuery Aos Min Js ===-->
<script src="assets/js/aos.min.js"></script>
<!--=== jQuery Counterup Min Js ===-->
<script src="assets/js/counterup.js"></script>
<!--=== jQuery Waypoint Js ===-->
<script src="assets/js/waypoint.js"></script>

<!--=== jQuery Custom Js ===-->
<script src="assets/js/custom.js"></script>

</body>

</html>
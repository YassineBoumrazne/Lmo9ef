<%--
  Created by IntelliJ IDEA.
  User: anasStilinski
  Date: 4/6/2023
  Time: 10:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content=""/>
    <meta name="keywords" content=""/>

    <title>El Moukef</title>

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
                                <a href="index.html">
                                    <img class="logo-main" src="assets/img/logo-light.png" alt="Logo" />
                                    <img class="logo-light" src="assets/img/logo-light.png" alt="Logo" />
                                </a>
                            </div>
                        </div>
                        <div class="header-align-center">
                            <div class="header-navigation-area position-relative">
                                <ul class="main-menu nav">
                                    <li><a href="index"><span>Accueil</span></a></li>
                                    <li class="has-submenu"><a href="#/"><span>Trouver un Maalam</span></a>
                                        <ul class="submenu-nav">
                                            <li><a href="job.html"><span>Maalams</span></a></li>
                                            <li><a href="job-details.html"><span>Détails de l'Maalam</span></a></li>
                                        </ul>
                                    </li>
                                    <li><a href="employers-details.jsp"><span>Détails des employeurs</span></a></li>
                                    <li class="has-submenu"><a href="#/"><span>Candidats</span></a>
                                        <ul class="submenu-nav">
                                            <li><a href="candidate.html"><span>Candidats</span></a></li>
                                            <li><a href="candidate-details.jsp"><span>Détails du candidat</span></a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="has-submenu"><a href="#/"><span>Pages</span></a>
                                        <ul class="submenu-nav">
                                            <li><a href="about-us.html"><span>À propos de nous</span></a></li>
                                            <li><a href="signin.jsp"><span>Connexion</span></a></li>
                                            <li><a href="sellerRegister"><span>Inscription</span></a></li>
                                            <li><a href="page-not-found.html"><span>Page non trouvée</span></a></li>
                                        </ul>
                                    </li>
                                    <%

                                        if (session != null && session.getAttribute("loggedInUser") != null) {
                                            // the user is logged in
                                            // perform authenticated actions here
                                    %>

                                    <%
                                    } else {
                                        // the user is not logged in
                                        // redirect to the login page or show an error message
                                    %>
                                    <li><a href="signin.jsp"><span>Connexion</span></a></li>
                                    <%
                                        }
                                    %>
                                </ul>
                            </div>
                        </div>
                        <div class="header-align-end">
                            <div class="header-action-area">
                                <%

                                    if (session != null && session.getAttribute("loggedInUser") != null) {
                                        // the user is logged in
                                        // perform authenticated actions here
                                %>
                                <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">
                                    <!-- <i class="uil uil-shopping-cart"></i> -->
                                    <img src="assets\img\photos\sh2.png" width="32" height="32" alt="">
                                </a>
                                <ul class="dropdown-menu" style="translate: -88px 0px;">
                                    <li class="nav-item"><a class="dropdown-item"
                                                            href="<%=request.getContextPath()%>/Profile">Profile</a>
                                    </li>
                                    <li class="nav-item">
                                        <form method="POST" action="logout">
                                            <input type="submit" style="color:#e2626b" class="btn" value="Logout"/>
                                        </form>
                                    </li>
                                </ul>
                                <%
                                } else {
                                    // the user is not logged in
                                    // redirect to the login page or show an error message
                                %>
                                <a class="btn-registration" href="sellerRegister"><span>+</span> Inscription</a>
                                <button class="btn-menu" type="button" data-bs-toggle="offcanvas"
                                        data-bs-target="#AsideOffcanvasMenu" aria-controls="AsideOffcanvasMenu">
                                    <i class="icofont-navigation-menu"></i>
                                </button>
                                <%
                                    }
                                %>
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
                            <h2 class="title">Trouver un Maalam</h2>
                            <nav class="breadcrumb-area">
                                <ul class="breadcrumb justify-content-center">
                                    <li><a href="index.html">Accueil</a></li>
                                    <li class="breadcrumb-sep">//</li>
                                    <li>Trouver un Maalam</li>
                                </ul>
                            </nav>
                        </div>
                        <div class="col-12 pt-5">
                            <div class="job-search-wrap">
                                <div class="job-search-form">
                                    <form method="post" action="BlogServlet">
                                        <div class="row row-gutter-10">
                                            <div class="col-lg-auto col-sm-6 col-12 flex-grow-1">
                                            </div>
                                            <div class="col-lg-auto col-sm-6 col-12 flex-grow-1">
                                                <div class="form-group">
                                                    <select class="form-control" name="city" id="city">
                                                        <option value="1" selected>Ville</option>
                                                        <c:forEach var="city" items="${cities}">
                                                            <c:choose>
                                                                <c:when test="${city == pageContext.request.getParameter('city')}">
                                                                    <option selected value="<c:out value="${city}"/>"><c:out value="${city}"/></option>
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <option value="<c:out value="${city}"/>"><c:out value="${city}"/></option>
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-lg-auto col-sm-6 col-12 flex-grow-1">
                                                <div class="form-group">
                                                    <select class="form-control" name="category" id="category">
                                                        <option value="1" selected>Catégorie</option>
                                                        <c:forEach var="categorie" items="${Categories}">
                                                            <option value="<c:out value="${categorie.getTitle()}"/>"><c:out value="${categorie.getTitle()}"/></option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-lg-auto col-sm-6 col-12 flex-grow-1">
                                                <div class="form-group">
                                                    <button type="submit" class="btn-form-search"><i class="icofont-search-1"></i></button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--== End Page Header Area Wrapper ==-->

        <!--== Start Blog Area Wrapper ==-->
        <section class="blog-area blog-right-sidebar-area">
            <div class="container">
                <div class="row justify-content-between">
                    <div class="col-xl-8">
                        <div class="row row-gutter-70">
                            <div class="row">
                                <c:forEach var="seller" items="${sellers}">
                                    <div class="col-md-6 col-lg-4 col-xl-6">
                                        <!--== Start Recent Job Item ==-->
                                        <div class="recent-job-item recent-job-style2-item">
                                            <div class="company-info">
                                                <div class="logo">
                                                    <a href="<%=request.getContextPath()%>/JobDetails?id=<c:out value="${seller.id}"/>"><img src="<c:out value="${seller.imagePath}"/>" width="75" height="75" alt="Image-HasTech"></a>
                                                </div>
                                                <div class="content">
                                                    <h4 class="name"><a href="<%=request.getContextPath()%>/JobDetails?id=<c:out value="${seller.id}"/>"><c:out value="${seller.firstName}"/></a></h4>
                                                    <p class="address"><c:out value="${seller.ville}"/>, <c:out value="${seller.pays}"/></p>
                                                </div>
                                            </div>
                                            <div class="main-content">
                                                <h3 class="title"><a href="<%=request.getContextPath()%>/JobDetails?id=<c:out value="${seller.id}"/>"><c:out value="${seller.jobTitle}"/></a></h3>
                                                <h5 class="work-type">Temps plein</h5>
                                                <p class="desc"><c:out value="${seller.description}"/></p>
                                            </div>
                                            <div class="recent-job-info">
                                                <div class="salary">
                                                    <h4><c:out value="${seller.price}"/></h4>
                                                    <p>/jour</p>
                                                </div>
                                                <a class="btn-theme btn-sm" href="<%=request.getContextPath()%>/JobDetails?id=<c:out value="${seller.id}"/>">Commander</a>
                                            </div>
                                        </div>
                                        <!--== End Recent Job Item ==-->
                                    </div>
                                </c:forEach>
                            </div>
                            <div class="col-12 text-left">
                                <div class="pagination-area">
                                    <nav>

                                        <ul class="page-numbers d-inline-flex">
                                            <c:if test="${currentPage != 1}">
                                                <li>
                                                    <a class="page-number previous" href="BlogServlet?city=${pageContext.request.getParameter("city")}&category=${pageContext.request.getParameter("category")}&page=${currentPage - 1}"><i class="icofont-long-arrow-left"></i></a>
                                                </li>
                                            </c:if>

                                            <c:forEach begin="1" end="${noOfPages}" var="i">
                                                <c:choose>
                                                    <c:when test="${currentPage eq i}">
                                                        <li>
                                                            <a class="page-number active" href="#">${i}</a>
                                                        </li>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <li>
                                                            <a class="page-number" href="BlogServlet?city=${pageContext.request.getParameter("city")}&category=${pageContext.request.getParameter("category")}&page=${i}">${i}</a>
                                                        </li>
                                                    </c:otherwise>
                                                </c:choose>
                                            </c:forEach>

                                            <c:if test="${currentPage lt noOfPages}">
                                                <li>
                                                    <a class="page-number next" href="BlogServlet?city=${pageContext.request.getParameter("city")}&category=${pageContext.request.getParameter("category")}&page=${currentPage + 1}"><i class="icofont-long-arrow-right"></i></a>
                                                </li>

                                            </c:if>
                                        </ul>

                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4">
                        <div class="blog-sidebar blog-sidebar-right">
                            <div class="widget-item">
                                <div class="widget-body">
                                    <div class="widget-search-box">

                                    </div>
                                </div>
                            </div>
                            <div class="widget-item">
                                <div class="widget-title">
                                    <h3 class="title">Catégorie</h3>
                                </div>
                                <div class="widget-body">
                                    <div class="widget-categories">
                                        <ul>
                                            <li><a href="job.html">Plomberie  <span>(305)</span></a></li>
                                            <li><a href="job.html">Electricité / Eclairage <span>(95)</a></li>
                                            <li><a href="job.html">Peinture / Décoration <span>(212)</span></a></li>
                                            <li><a href="job.html">Maçonnerie / Brique <span>(93)</span></a></li>
                                            <li><a href="job.html">Jardinage / Paysagisme <span>(450)</span></a></li>
                                            <li><a href="job.html">Electricité / Eclairage <span>(95)</span></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--== End Blog Area Wrapper ==-->
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
                                <a href="index.html">
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
                                    <h4 class="widget-title">Company</h4>
                                    <h4 class="widget-collapsed-title collapsed" data-bs-toggle="collapse" data-bs-target="#widgetId-1">Company</h4>
                                    <div id="widgetId-1" class="collapse widget-collapse-body">
                                        <div class="collapse-body">
                                            <div class="widget-menu-wrap">
                                                <ul class="nav-menu">
                                                    <li><a href="about-us.html">About Us</a></li>
                                                    <li><a href="about-us.html">Why Extobot</a></li>
                                                    <li><a href="contact.html">Contact With Us</a></li>
                                                    <li><a href="contact.html">Our Partners</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-lg-3">
                                <div class="widget-item nav-menu-item2">
                                    <h4 class="widget-title">Resources</h4>
                                    <h4 class="widget-collapsed-title collapsed" data-bs-toggle="collapse" data-bs-target="#widgetId-2">Resources</h4>
                                    <div id="widgetId-2" class="collapse widget-collapse-body">
                                        <div class="collapse-body">
                                            <div class="widget-menu-wrap">
                                                <ul class="nav-menu">
                                                    <li><a href="account-login.html">Quick Links</a></li>
                                                    <li><a href="job.html">Job Packages</a></li>
                                                    <li><a href="job.html">Post New Job</a></li>
                                                    <li><a href="job.html">Jobs Listing</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-lg-3">
                                <div class="widget-item nav-menu-item3">
                                    <h4 class="widget-title">Legal</h4>
                                    <h4 class="widget-collapsed-title collapsed" data-bs-toggle="collapse" data-bs-target="#widgetId-3">Legal</h4>
                                    <div id="widgetId-3" class="collapse widget-collapse-body">
                                        <div class="collapse-body">
                                            <div class="widget-menu-wrap">
                                                <ul class="nav-menu">
                                                    <li><a href="account-login.html">Affiliate</a></li>
                                                    <li><a href="blog.html">Blog</a></li>
                                                    <li><a href="account-login.html">Help & Support</a></li>
                                                    <li><a href="job.html">Careers</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-lg-3">
                                <div class="widget-item nav-menu-item4">
                                    <h4 class="widget-title">Products</h4>
                                    <h4 class="widget-collapsed-title collapsed" data-bs-toggle="collapse" data-bs-target="#widgetId-4">Products</h4>
                                    <div id="widgetId-4" class="collapse widget-collapse-body">
                                        <div class="collapse-body">
                                            <div class="widget-menu-wrap">
                                                <ul class="nav-menu">
                                                    <li><a href="account-login.html">Star a Trial</a></li>
                                                    <li><a href="about-us.html">How It Works</a></li>
                                                    <li><a href="account-login.html">Features</a></li>
                                                    <li><a href="about-us.html">Price & Planing</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
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
                            <p class="copyright">© 2021 Finate. Made with <i class="icofont-heart"></i> by <a target="_blank" href="https://themeforest.net/user/codecarnival">Codecarnival.</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--== End Footer Bottom ==-->
    </footer>
    <!--== End Footer Area Wrapper ==-->

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
                    <li><a href="#">Find Jobs</a>
                        <ul class="sub-menu">
                            <li><a href="job.html">Jobs</a></li>
                            <li><a href="job-details.html">Job Details</a></li>
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
                            <li><a href="blog-right-sidebar.jsp">Blog Right Sidebar</a></li>
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
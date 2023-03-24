<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: anasStilinski
  Date: 3/12/2023
  Time: 10:12 PM
  To change this template use File | Settings | File Templates.
--%>
<html lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content="Finate - Job Portal Website Template Using Bootstrap 5"/>
    <meta name="keywords" content="accessories, digital products, electronic html, modern, products, responsive"/>
    <meta name="author" content="hastech"/>

    <title>Profile</title>

    <!--== Favicon ==-->
    <link rel="shortcut icon" href="assets/img/favicon.ico" type="image/x-icon"/>

    <!--== Google Fonts ==-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,300;0,400;0,500;0,600;0,700;1,400&display=swap"
          rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500&display=swap" rel="stylesheet">


    <!--== Bootstrap CSS ==-->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
    <!--== Icofont Icon CSS ==-->
    <link href="assets/css/icofont.css" rel="stylesheet"/>
    <!--== Swiper CSS ==-->
    <link href="assets/css/swiper.min.css" rel="stylesheet"/>
    <!--== Fancybox Min CSS ==-->
    <link href="assets/css/fancybox.min.css" rel="stylesheet"/>
    <!--== Aos Min CSS ==-->
    <link href="assets/css/aos.min.css" rel="stylesheet"/>

    <!--== Main Style CSS ==-->
    <link href="assets/css/style.css" rel="stylesheet"/>
    <link class="jsbin" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/base/jquery-ui.css"
          rel="stylesheet" type="text/css"/>
    <script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.0/jquery-ui.min.js"></script>


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
                                <a href="<%=request.getContextPath()%>/index">
                                    <img class="logo-main" src="assets/img/logo-light.png" alt="Logo"/>
                                    <img class="logo-light" src="assets/img/logo-light.png" alt="Logo"/>
                                </a>
                            </div>
                        </div>
                        <div class="header-align-center">
                            <div class="header-navigation-area position-relative">
                                <ul class="main-menu nav">
                                    <li><a href="<%=request.getContextPath()%>/index"><span>Accueil</span></a></li>
                                    <li class="has-submenu"><a href="#/"><span>Trouver un Maalam</span></a>
                                        <ul class="submenu-nav">
                                            <li><a href="job.html"><span>Maalams</span></a></li>
                                            <li><a href="job-details.html"><span>Détails de l'Maalam</span></a></li>
                                        </ul>
                                    </li>
                                    <li><a href="employers-details.html"><span>Détails des employeurs</span></a></li>
                                    <li class="has-submenu"><a href="#/"><span>Candidats</span></a>
                                        <ul class="submenu-nav">
                                            <li><a href="candidate.html"><span>Candidats</span></a></li>
                                            <li><a href="candidate-details.html"><span>Détails du candidat</span></a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="has-submenu"><a href="#/"><span>Pages</span></a>
                                        <ul class="submenu-nav">
                                            <li><a href="about-us.html"><span>À propos de nous</span></a></li>
                                            <li><a href="page-not-found.html"><span>Page non trouvée</span></a></li>
                                        </ul>
                                    </li>
                                    <li><a href="contact.html"><span>Contact</span></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="header-align-end">
                            <div class="header-action-area">
                                <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">
                                    <!-- <i class="uil uil-shopping-cart"></i> -->
                                    <img src="assets\img\photos\sh2.png" width="32" height="32" alt="">
                                </a>
                                <ul class="dropdown-menu" style="translate: -88px 0px;">
                                    <li class="nav-item"><a class="dropdown-item" href="<%=request.getContextPath()%>/Profile">Profile</a></li>
                                    <li class="nav-item">
                                        <form method="POST" action="logout">
                                            <input type="submit" style="color:#e2626b" class="btn" value="Logout"/>
                                        </form>
                                    </li>
                                </ul>
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
        <div class="page-header-area sec-overlay sec-overlay-black" data-bg-img="assets/img/photos/bg19.jpg">
            <div class="container pt--0 pb--0">
                <div class="row">
                    <div class="col-12">
                        <div class="page-header-content">
                            <h2 class="title">Votre Profile</h2>
                            <nav class="breadcrumb-area">
                                <ul class="breadcrumb justify-content-center">
                                    <li><a href="<%=request.getContextPath()%>/index">Accueil</a></li>
                                    <li class="breadcrumb-sep">//</li>
                                    <li>Profile</li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--== End Page Header Area Wrapper ==-->

        <!--== Start Login Area Wrapper ==-->
        <section class="account-login-area">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-10 col-lg-7 col-xl-12">
                        <div class="login-register-form-wrap register-form-wrap">
                            <div class="login-register-form">
                                <form method="post" action="update">
                                    <div class="py-2">
                                        <div class="row g-4 align-items-center">
                                            <div class="col">
                                                <h1 class="h3 m-0">General</h1>
                                            </div>
                                            <div class="col-auto d-flex">
                                                <input type="submit" value="Enregistrer" class="btn-theme">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mt-2">
                                        <div class="p-2 d-flex justify-content-center">
                                            <div class="d-flex align-items-center flex-column">
                                                <img id="blahS" src="assets\img\photos\Profile_example.png"
                                                     alt="your image" width="256" height="256">
                                                <input type="file" onchange="readURL(this);" name="file-1S[]"
                                                       id="file-1S" class="inputfile inputfile-1"
                                                       accept="image/png, image/gif, image/jpeg">
                                                <label for="file-1S" class="btn-theme">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="17"
                                                         viewBox="0 0 20 17">
                                                        <path d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z"></path>
                                                    </svg>
                                                    <span>Choose a file…</span>
                                                </label>
                                                <script>
                                                    function readURL(input) {
                                                        if (input.files && input.files[0]) {
                                                            var reader = new FileReader();

                                                            reader.onload = function (e) {
                                                                $('#blahS')
                                                                    .attr('src', e.target.result)
                                                                    .width(256)
                                                                    .height(256);
                                                            };

                                                            reader.readAsDataURL(input.files[0]);
                                                        }
                                                    }
                                                </script>
                                            </div>


                                        </div>

                                    </div>
                                    <div class="mt-2">
                                        <div class="p-2">
                                            <div class="mb-5">
                                                <h2 class="mb-0 fs-exact-18">Profile</h2>
                                                <div class="mt-3 text-muted">Vous pouvez accéder ou modifier vos données
                                                    à tout moment.
                                                </div>
                                            </div>
                                            <div class="row g-4 mt-2">
                                                <div class="col-6">
                                                    <label class="form-label">Nom</label>
                                                    <input type="text" class="form-control" placeholder="Nom" id="NomS"
                                                           name="NomS"
                                                           value="<c:out value="${user.getLastName()}"/>">
                                                </div>
                                                <div class="col-6">
                                                    <label class="form-label">Prenom</label>
                                                    <input type="text" class="form-control" placeholder="Prenom"
                                                           id="PrenomS" name="PrenomS"
                                                           value="<c:out value="${user.getFirstName()}"/>">
                                                </div>
                                            </div>
                                            <div class="row g-4 mt-3">
                                                <div class="col-6">
                                                    <label class="form-label">Numéro de Téléphone</label>
                                                    <input type="text"
                                                           oninput="this.value=this.value.replace(/[^0-9]/g,'');"
                                                           onpaste="return false;" class="form-control"
                                                           placeholder="Numéro de Téléphone" id="NumTelephoneS"
                                                           name="NumTelephoneS" value="<c:out value="${user.getPhoneNumber()}"/>">
                                                </div>
                                                <div class="col-6">
                                                    <label class="form-label">Date de Naissance</label>
                                                    <input type="date" class="form-control"
                                                           placeholder="Date de Naissance" id="DateDeNaissanceS"
                                                           name="DateDeNaissanceS" value="<c:out value="${user.getBirthDay()}"/>">
                                                </div>
                                            </div>
                                            <div class="row g-4 mt-3">
                                                <div class="col-6">
                                                    <label class="form-label">Addresse</label>
                                                    <input type="text" class="form-control" placeholder="Addresse"
                                                           id="AddresseS" name="AddresseS"
                                                           value="<c:out value="${user.getAddress()}"/>">
                                                </div>
                                                <div class="col-6">
                                                    <label class="form-label">Email</label>
                                                    <input type="email" class="form-control" placeholder="Email"
                                                           id="EmailS" name="EmailS" value="<c:out value="${user.getEmail()}"/>">
                                                </div>
                                            </div>

                                            <div class="row g-4 mt-3">
                                                <div class="col-6">
                                                    <label class="form-label">Categorie</label>
                                                    <select class="form-select" aria-label="Default select example"
                                                            name="CategorieS" id="CategorieS">
                                                        <option selected=""><c:out value="${user.getJobTitle()}"/></option>
                                                        <c:forEach var="categorie" items="${Categories}">
                                                            <option value="<c:out value="${categorie.getTitle()}"/>">
                                                                <c:out value="${categorie.getTitle()}"/></option>
                                                        </c:forEach>

                                                    </select>
                                                </div>
                                                <div class="col-6">
                                                    <label class="form-label">Experience</label>
                                                    <select class="form-select" aria-label="Default select example"
                                                            name="ExperienceS" id="ExperienceS">
                                                        <option selected=""><c:out value="${user.getExperience()}"/></option>
                                                        <c:forEach var="experience" items="${Experiences}">
                                                            <option value="<c:out value="${experience}"/>"><c:out
                                                                    value="${experience}"/> ans
                                                            </option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="row g-4 mt-3">
                                                <div class="col-6">
                                                    <label class="form-label">Ville</label>
                                                    <input type="text" class="form-control" placeholder="Ville"
                                                           id="VilleS" name="VilleS" value="<c:out value="${user.getVille()}"/>">
                                                </div>
                                                <div class="col-6">
                                                    <label class="form-label">Pays</label>
                                                    <input type="Text" class="form-control" placeholder="Pays"
                                                           id="PaysS" name="PaysS" value="<c:out value="${user.getPays()}"/>">
                                                </div>
                                            </div>
                                            <div class="row g-4 mt-3">
                                                <div class="col-12">
                                                    <label class="form-label">Description</label>
                                                    <textarea class="form-control" id="DescriptionS" name="DescriptionS"
                                                              rows="4"
                                                              cols="50"><c:out value="${user.getDescription()}"/></textarea>
                                                </div>
                                            </div>
                                            <div class="row g-4 mt-3">
                                                <div class="col-6">
                                                    <label class="form-label">Hourly Rate</label>
                                                    <input type="number" class="form-control" placeholder="HourlyRate"
                                                           id="HourlyRateS" name="HourlyRateS"
                                                           value="<c:out value="${user.getPrice()}"/>">
                                                </div>
                                                <div class="col-6">
                                                    <label class="form-label">Working Time</label>
                                                    <textarea class="form-control" id="WorkingTimeS" name="WorkingTimeS"
                                                              rows="4"
                                                              cols="50"><c:out value="${user.getWorkingTime()}"/></textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--== End Login Area Wrapper ==-->
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
                                <a href="<%=request.getContextPath()%>/index">
                                    <img class="logo-main" src="assets/img/logo-light-theme.png" alt="Logo"/>
                                </a>
                            </div>
                            <p class="desc">That necessitat ecommerce platform that optimi your store popularised the
                                release</p>
                            <div class="social-icons">
                                <a href="https://www.facebook.com" target="_blank" rel="noopener"><i
                                        class="icofont-facebook"></i></a>
                                <a href="https://www.skype.com" target="_blank" rel="noopener"><i
                                        class="icofont-skype"></i></a>
                                <a href="https://twitter.com" target="_blank" rel="noopener"><i
                                        class="icofont-twitter"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-9">
                        <div class="row">
                            <div class="col-md-3 col-lg-3">
                                <div class="widget-item nav-menu-item1">
                                    <h4 class="widget-title">Entreprise</h4>
                                    <h4 class="widget-collapsed-title collapsed" data-bs-toggle="collapse"
                                        data-bs-target="#widgetId-1">Entreprise</h4>
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
                                    <h4 class="widget-collapsed-title collapsed" data-bs-toggle="collapse"
                                        data-bs-target="#widgetId-2">Ressources</h4>
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
                                <p class="copyright">© 2023 FPT. Made with <i class="icofont-heart"></i> by <a
                                        target="_blank"
                                        href="https://themeforest.net/user/codecarnival">AK,YB,AO,AE.</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--== End Footer Bottom ==-->
        </div>
    </footer>
    <!--== End Footer Area Wrapper ==-->

    <!--== Scroll Top Button ==-->
    <div id="scroll-to-top" class="scroll-to-top">
        <span class="icofont-rounded-up"></span>
    </div>
    <div class="progress-wrap">
        <span class="icofont-rounded-up"></span>
        <svg class="progress-circle svg-content" width="100%" height="100%" viewBox="-1 -1 102 102">
            <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98"/>
        </svg>
    </div>
    <!--== Start Aside Menu ==-->
    <aside class="off-canvas-wrapper offcanvas offcanvas-start" tabindex="-1" id="AsideOffcanvasMenu"
           aria-labelledby="offcanvasExampleLabel">
        <div class="offcanvas-header">
            <h1 class="d-none" id="offcanvasExampleLabel">Menu de côté</h1>
            <button class="btn-menu-close" data-bs-dismiss="offcanvas" aria-label="Fermer">menu <i
                    class="icofont-simple-left"></i></button>
        </div>
        <div class="offcanvas-body">
            <!-- Mobile Menu Start -->
            <div class="mobile-menu-items">
                <ul class="nav-menu">
                    <li><a href="<%=request.getContextPath()%>/index">Accueil</a></li>
                    <li><a href="#">Trouver des Maalams</a>
                        <ul class="sub-menu">
                            <li><a href="job.html">Maalams</a></li>
                            <li><a href="job-details.html">Détails de l'Maalam</a></li>
                        </ul>
                    </li>
                    <li><a href="employers-details.html">Détails des employeurs</a></li>
                    <li><a href="#">Candidats</a>
                        <ul class="sub-menu">
                            <li><a href="candidate.html">Candidats</a></li>
                            <li><a href="candidate-details.html">Détails du candidat</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Pages</a>
                        <ul class="sub-menu">
                            <li><a href="about-us.html">À propos de nous</a></li>
                            <li><a href="signin.jsp">Connexion</a></li>
                            <li><a href="signup.jsp">Inscription</a></li>
                            <li><a href="page-not-found.html">Page non trouvée</a></li>
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
<script src="./assets/js/plugins.js"></script>
<script src="./assets/js/theme.js"></script>


</body>

</html>

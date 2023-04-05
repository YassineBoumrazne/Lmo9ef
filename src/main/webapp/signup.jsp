<%--
  Created by IntelliJ IDEA.
  User: anasStilinski
  Date: 3/5/2023
  Time: 10:21 PM
  To change this template use File | Settings | File Templates.
--%>
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
                                <a href="<%=request.getContextPath()%>/index">
                                    <img class="logo-main" src="assets/img/logo-light.png" alt="Logo" />
                                    <img class="logo-light" src="assets/img/logo-light.png" alt="Logo" />
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
                                            <li><a href="candidate-details.html"><span>Détails du candidat</span></a></li>
                                        </ul>
                                    </li>
                                    <li class="has-submenu"><a href="#/"><span>Pages</span></a>
                                        <ul class="submenu-nav">
                                            <li><a href="about-us.html"><span>À propos de nous</span></a></li>
                                            <li><a href="page-not-found.html"><span>Page non trouvée</span></a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="header-align-end">
                            <div class="header-action-area">
                                <a class="btn-registration" href="signin.jsp"><span>+</span> Connection</a>
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
                            <h2 class="title">Page d'inscription</h2>
                            <nav class="breadcrumb-area">
                                <ul class="breadcrumb justify-content-center">
                                    <li><a href="<%=request.getContextPath()%>/index">Accueil</a></li>
                                    <li class="breadcrumb-sep">//</li>
                                    <li>Pages</li>
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
                                <div class="form-title">
                                    <h4 class="title">S'inscrire Maintenant</h4>
                                </div>
                                <ul class="nav nav-pills" id="pills-tab" role="tablist">
                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link active" id="candidate-tab" data-bs-toggle="pill" data-bs-target="#candidate" type="button" role="tab" aria-controls="candidate" aria-selected="true"><i class="icofont-businessman"></i> client</button>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link" id="employer-tab" data-bs-toggle="pill" data-bs-target="#employer" type="button" role="tab" aria-controls="employer" aria-selected="false"><i class="icofont-bag-alt"></i>Maalam</button>
                                    </li>
                                </ul>
                                <div class="tab-content" id="pills-tabContent">
                                    <div class="tab-pane fade show active" id="candidate" role="tabpanel" aria-labelledby="candidate-tab">
                                        <form method="post" action="customerRegister" class="text-start mb-3">
                                            <div class="row">
                                                <div class="col-6">
                                                    <div class="form-group">
                                                        <input class="form-control" type="text" placeholder="Prénom" id="Prenom" name="Prenom" >
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="form-group">
                                                        <input class="form-control" type="text" placeholder="Nom de famille"  id="Nom" name="Nom">
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="form-group">
                                                        <input class="form-control" type="tel" placeholder="Numéro de téléphone" id="NumTelephone" name="NumTelephone">
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="form-group">
                                                        <input class="form-control" type="text" placeholder="Adresse"  id="Addresse" name="Addresse">
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="form-group">
                                                        <input class="form-control" type="text" placeholder="Ville"  id="Ville" name="Ville">
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="form-group">
                                                        <input class="form-control" type="text" placeholder="Pays"  id="Pays" name="Pays">
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="form-group">
                                                        <select class="form-control" name="Sexe" id="Sexe">
                                                            <option value="M">Homme</option>
                                                            <option value="F">Femme</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="form-group">
                                                        <input class="form-control" type="date" id="DateDeNaissance" name="DateDeNaissance">
                                                    </div>
                                                </div>
                                                <div class="col-12">
                                                    <div class="form-group">
                                                        <input class="form-control" type="email" placeholder="Email" id="Email" name="Email">
                                                    </div>
                                                </div>
                                                <div class="col-12">
                                                    <div class="form-group">
                                                        <input class="form-control" type="password" placeholder="Mot de passe"  id="Password" name="Password">
                                                    </div>
                                                </div>
                                                <div class="col-12">
                                                    <div class="form-group">
                                                        <div class="remember-forgot-info">
                                                            <div class="remember">
                                                                <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                                                                <label class="form-check-label" for="defaultCheck1">Accepter nos conditions générales.</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-12">
                                                    <div class="form-group">
                                                        <input type="submit" value="S'inscrire" class="btn-theme">
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="tab-pane fade" id="employer" role="tabpanel" aria-labelledby="employer-tab">
                                        <form method="post" action="sellerRegister">
                                            <div class="row">
                                                <div class="col-6">
                                                    <div class="form-group">
                                                        <input class="form-control" type="text" placeholder="Prénom" id="PrenomMaalam" name="Prenom" >
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="form-group">
                                                        <input class="form-control" type="text" placeholder="Nom de famille"  id="NomMaalam" name="Nom">
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="form-group">
                                                        <input class="form-control" type="tel" placeholder="Numéro de téléphone" id="NumTelephoneMaalam" name="NumTelephone">
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="form-group">
                                                        <input class="form-control" type="text" placeholder="Adresse"  id="AddresseMaalam" name="Addresse">
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="form-group">
                                                        <input class="form-control" type="text" placeholder="Ville"  id="VilleMaalam" name="Ville">
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="form-group">
                                                        <input class="form-control" type="text" placeholder="Pays"  id="PaysMaalam" name="Pays">
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="form-group">
                                                        <select class="form-control" name="Sexe" id="SexeMaalam">
                                                            <option value="M">Homme</option>
                                                            <option value="F">Femme</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="form-group">
                                                        <input class="form-control" type="date" id="DateDeNaissanceMaalam" name="DateDeNaissance">
                                                    </div>
                                                </div>
                                                <div class="col-12">
                                                    <div class="form-group">
                                                        <input class="form-control" type="email" placeholder="Email" id="EmailMaalam" name="Email">
                                                    </div>
                                                </div>
                                                <div class="col-12">
                                                    <div class="form-group">
                                                        <input class="form-control" type="password" placeholder="Mot de passe"  id="PasswordMaalam" name="Password">
                                                    </div>
                                                </div>
                                                <div class="col-12">
                                                    <div class="form-group">
                                                        <div class="remember-forgot-info">
                                                            <div class="remember">
                                                                <input class="form-check-input" type="checkbox" value="" id="defaultCheck2">
                                                                <label class="form-check-label" for="defaultCheck2">Accepter nos conditions générales.</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-12">
                                                    <div class="form-group">
                                                        <input type="submit" value="S'inscrire" class="btn-theme">
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div class="login-register-form-info">
                                    <p>Déjà un compte ? <a href="signin.jsp">Se connecter</a></p>
                                </div>
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
            <!--== End Footer Bottom ==-->
    </footer>
    <!--== End Footer Area Wrapper ==-->

    <!--== Scroll Top Button ==-->
    <div id="scroll-to-top" class="scroll-to-top"><span class="icofont-rounded-up"></span></div>

    <!--== Start Aside Menu ==-->
    <aside class="off-canvas-wrapper offcanvas offcanvas-start" tabindex="-1" id="AsideOffcanvasMenu" aria-labelledby="offcanvasExampleLabel">
        <div class="offcanvas-header">
            <h1 class="d-none" id="offcanvasExampleLabel">Menu de côté</h1>
            <button class="btn-menu-close" data-bs-dismiss="offcanvas" aria-label="Fermer">menu <i class="icofont-simple-left"></i></button>
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

</body>

</html>
<%@ page import="com.example.lmo9ef.Repository.AuthRepositroy" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.lmo9ef.Model.Categorie" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content="Finate - Job Portal Website Template Using Bootstrap 5"/>
    <meta name="keywords" content="accessories, digital products, electronic html, modern, products, responsive"/>
    <meta name="author" content="hastech"/>

    <title>El Moukef - </title>

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
                                            <li><a href="signup.jsp"><span>Inscription</span></a></li>
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
                                <a class="btn-registration" href="signup.jsp"><span>+</span> Inscription</a>
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
        <!--== Start Hero Area Wrapper ==-->

        <section class="home-slider-area">
            <div class="home-slider-container default-slider-container">
                <div class="home-slider-wrapper slider-default">
                    <div class="slider-content-area" data-bg-img="assets/img/slider/slider-bg.jpg">
                        <div class="container pt--0 pb--0">
                            <div class="slider-container">
                                <div class="row justify-content-center align-items-center">
                                    <div class="col-12 col-lg-8">
                                        <div class="slider-content">
                                            <h2 class="title"><span class="counter" data-counterup-delay="80">261</span>
                                                services disponibles <br>Trouvez le service dont vousbe avez besoin</h2>
                                            <p class="desc">Trouvez le service dont vous avez besoin parmi les nombreux
                                                services proposés. De la plomberie aux services d'un handyman, vous
                                                trouverez tout sur cette plateforme.</p>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="job-search-wrap">
                                            <div class="job-search-form">
                                                <form action="#">
                                                    <div class="row row-gutter-10">
                                                        <div class="col-lg-auto col-sm-6 col-12 flex-grow-1">
                                                            <div class="form-group">
                                                                <input type="text" class="form-control"
                                                                       placeholder="Type de service">
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-auto col-sm-6 col-12 flex-grow-1">
                                                            <div class="form-group">
                                                                <select class="form-control">
                                                                    <option value="1" selected>Ville</option>
                                                                    <option value="2">Agadir</option>
                                                                    <option value="3">Safi</option>
                                                                    <option value="4">Taroudant</option>
                                                                    <option value="5">Casablanca</option>
                                                                    <option value="6">Rabat</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-auto col-sm-6 col-12 flex-grow-1">
                                                            <div class="form-group">
                                                                <select class="form-control">
                                                                    <option value="1" selected>Catégorie</option>
                                                                    <option value="2">Plomberie</option>
                                                                    <option value="3">Peinture</option>
                                                                    <option value="4">Bricolage</option>
                                                                    <option value="5">Jardinage</option>
                                                                    <option value="6">Ménage</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-auto col-sm-6 col-12 flex-grow-1">
                                                            <div class="form-group">
                                                                <button type="button" class="btn-form-search"><i
                                                                        class="icofont-search-1"></i></button>
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
                </div>
            </div>
            <div class="container pt--0 pb--0">
                <div class="row">
                    <div class="col-12">
                        <div class="play-video-btn">
                            <a href="https://www.youtube.com/mcvqOUtcAJg" class="video-popup">
                                <img src="assets/img/icons/play.png" alt="Image-HasTech">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="home-slider-shape">
                <img class="shape1" data-aos="fade-down" data-aos-duration="1500" src="assets/img/slider/vector1.png"
                     width="270" height="234" alt="Image-HasTech">
                <img class="shape2" data-aos="fade-left" data-aos-duration="2000" src="assets/img/slider/vector2.png"
                     width="201" height="346" alt="Image-HasTech">
                <img class="shape3" data-aos="fade-right" data-aos-duration="2000" src="assets/img/slider/vector3.png"
                     width="276" height="432" alt="Image-HasTech">
                <img class="shape4" data-aos="flip-left" data-aos-duration="1500" src="assets/img/slider/vector4.png"
                     width="127" height="121" alt="Image-HasTech">
            </div>
        </section>
        <!--== End Hero Area Wrapper ==-->

        <!--== Start Job Category Area Wrapper ==-->

        <!--== Start Job Category Area Wrapper ==-->
        <section class="job-category-area">
            <div class="container" data-aos="fade-down">
                <div class="row">
                    <div class="col-12">
                        <div class="section-title text-center">
                            <h3 class="title">Catégories populaires</h3>
                            <div class="desc">
                                <p>Beaucoup de packages de publication sur bureau et éditeurs de page Web</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row row-gutter-20">
                    <c:forEach var="categorie" items="${Categories}">
                        <div class="col-sm-6 col-lg-3">
                            <!--== Start Job Category Item ==-->
                            <div class="job-category-item">
                                <div class="content">
                                    <h3 class="title"><a href="job-details.html"><c:out
                                            value="${categorie.getTitle()}"/>
                                        <span>(<c:out value="${categorie.getNumOfSellers()}"/>)</span></a></h3>
                                </div>
                                <a class="overlay-link" href="job-details.html"></a>
                            </div>
                            <!--== End Job Category Item ==-->
                        </div>
                    </c:forEach>
                </div>
            </div>
        </section>
        <!--== End Job Category Area Wrapper ==-->
        <!--== Start Recent Job Area Wrapper ==-->

        <section class="recent-job-area bg-color-gray">
            <div class="container" data-aos="fade-down">
                <div class="row">
                    <div class="col-12">
                        <div class="section-title text-center">
                            <h3 class="title">Offres Récentes De Services à Domicile</h3>
                            <div class="desc">
                                <p>De nombreux packages de publication de bureau et éditeurs de pages Web</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <c:forEach var="seller" items="${recentSellers}">
                        <div class="col-md-6 col-lg-4">
                            <!--== Start Recent Job Item ==-->
                            <div class="recent-job-item">
                                <div class="company-info">
                                    <div class="logo">
                                        <a href="JobDetails?id=<c:out value="${seller.id}"/>"><img
                                                src="<c:out value="${seller.imagePath}"/>" width="75" height="75"
                                                alt="Image-HasTech"></a>
                                    </div>
                                    <div class="content">
                                        <h4 class="name"><a href="JobDetails?id=<c:out value="${seller.id}"/>"><c:out
                                                value="${seller.firstName}"/></a></h4>
                                        <p class="address"><c:out value="${seller.ville}"/>, <c:out
                                                value="${seller.pays}"/></p>
                                    </div>
                                </div>
                                <div class="main-content">
                                    <h3 class="title"><a href="JobDetails?id=<c:out value="${seller.id}"/>"><c:out
                                            value="${seller.jobTitle}"/></a></h3>
                                    <h5 class="work-type">Temps plein</h5>
                                    <p class="desc"><c:out value="${seller.description}"/></p>
                                </div>
                                <div class="recent-job-info">
                                    <div class="salary">
                                        <h4><c:out value="${seller.price}"/></h4>
                                        <p>/jour</p>
                                    </div>
                                    <a class="btn-theme btn-sm" href="JobDetails?id=<c:out value="${seller.id}"/>">Commander</a>
                                </div>
                            </div>
                            <!--== End Recent Job Item ==-->
                        </div>
                    </c:forEach>
                </div>
            </div>
        </section>
        <!--== End Recent Job Area Wrapper ==-->

        <!--== Start Work Process Area Wrapper ==-->
        <section class="work-process-area">
            <div class="container" data-aos="fade-down">
                <div class="row">
                    <div class="col-12">
                        <div class="section-title text-center">
                            <h3 class="title">Comment ça marche</h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="working-process-content-wrap">
                            <div class="working-col">
                                <!--== Start Work Process ==-->
                                <div class="working-process-item">
                                    <div class="icon-box">
                                        <div class="inner">
                                            <img class="icon-img" src="assets/img/icons/w1.png" alt="Image-HasTech">
                                            <img class="icon-hover" src="assets/img/icons/w1-hover.png"
                                                 alt="Image-HasTech">
                                        </div>
                                    </div>
                                    <div class="content">
                                        <h4 class="title">Création de compte et soumission de la demande</h4>
                                        <p class="desc">Les clients créent un compte sur le site Web et fournissent des
                                            détails sur le service dont ils ont besoin et leur emplacement.</p>
                                    </div>
                                    <div class="shape-arrow-icon">
                                        <img class="shape-icon" src="assets/img/icons/right-arrow.png"
                                             alt="Image-HasTech">
                                        <img class="shape-icon-hover" src="assets/img/icons/right-arrow2.png"
                                             alt="Image-HasTech">
                                    </div>
                                </div>
                                <!--== End Work Process ==-->
                            </div>
                            <div class="working-col">
                                <!--== Start Work Process ==-->
                                <div class="working-process-item">
                                    <div class="icon-box">
                                        <div class="inner">
                                            <img class="icon-img" src="assets/img/icons/w3.png" alt="Image-HasTech">
                                            <img class="icon-hover" src="assets/img/icons/w3-hover.png"
                                                 alt="Image-HasTech">
                                        </div>
                                    </div>
                                    <div class="content">
                                        <h4 class="title">Recherche de correspondance et présentation des
                                            fournisseurs</h4>
                                        <p class="desc">Le site Web recherche une correspondance entre la demande du
                                            client et les fournisseurs qui offrent le service dans la zone du client.
                                            Une fois la correspondance trouvée, le client reçoit une liste de
                                            fournisseurs disponibles et de leurs profils.</p>
                                    </div>
                                    <div class="shape-arrow-icon">
                                        <img class="shape-icon" src="assets/img/icons/right-arrow.png"
                                             alt="Image-HasTech">
                                        <img class="shape-icon-hover" src="assets/img/icons/right-arrow2.png"
                                             alt="Image-HasTech">
                                    </div>
                                </div>
                                <!--== End Work Process ==-->
                            </div>
                            <div class="working-col">
                                <!--== Start Work Process ==-->
                                <div class="working-process-item">
                                    <div class="icon-box">
                                        <div class="inner">
                                            <img class="icon-img" src="assets/img/icons/w4.png" alt="Image-HasTech">
                                            <img class="icon-hover" src="assets/img/icons/w4-hover.png"
                                                 alt="Image-HasTech">
                                        </div>
                                    </div>
                                    <div class="content">
                                        <h4 class="title">Choix du fournisseur, réservation et paiement</h4>
                                        <p class="desc">Le client parcourt les profils et choisit le fournisseur avec
                                            lequel il souhaite travailler. Ensuite, le client contacte le fournisseur
                                            directement pour discuter de détails supplémentaires et réserver le service.
                                            Le paiement pour le service est traité via le site Web</p>
                                    </div>
                                    <div class="shape-arrow-icon d-none">
                                        <img class="shape-icon" src="assets/img/icons/right-arrow.png"
                                             alt="Image-HasTech">
                                        <img class="shape-icon-hover" src="assets/img/icons/right-arrow2.png"
                                             alt="Image-HasTech">
                                    </div>
                                </div>
                                <!--== End Work Process ==-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--== End Work Process Area Wrapper ==-->


        <section class="team-area">
            <div class="container" data-aos="fade-down">
                <div class="row">
                    <div class="col-12">
                        <div class="section-title text-center">
                            <h3 class="title">Les Meilleurs Maalmiya</h3>
                            <div class="desc">
                                <p>Nos artisans sont qualifiés et très professionnels</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <c:forEach var="seller" items="${bestSellers}">
                        <div class="col-sm-6 col-lg-4 col-xl-3">
                            <!--== Start Team Item ==-->
                            <div class="team-item">
                                <div class="thumb">
                                    <a href="JobDetails?id=<c:out value="${seller.id}"/>">
                                        <img src="<c:out value="${seller.imagePath}"/>" width="160" height="160"
                                             alt="Image-HasTech">
                                    </a>
                                </div>
                                <div class="content">
                                    <h4 class="title"><a href="JobDetails?id=<c:out value="${seller.id}"/>"><c:out
                                            value="${seller.firstName}"/> <c:out value="${seller.lastName}"/></a></h4>
                                    <h5 class="sub-title"><c:out value="${seller.jobTitle}"/></h5>
                                    <div class="rating-box">
                                        <i class="icofont-star"></i>
                                        <i class="icofont-star"></i>
                                        <i class="icofont-star"></i>
                                        <i class="icofont-star"></i>
                                        <i class="icofont-star"></i>
                                    </div>
                                    <p class="desc"><c:out value="${seller.description}"/></p>
                                    <a class="btn-theme btn-white btn-sm"
                                       href="JobDetails?id=<c:out value="${seller.id}"/>">Voir le profile</a>
                                </div>
                                <div class="bookmark-icon"><img src="assets/img/icons/bookmark1.png"
                                                                alt="Image-HasTech"></div>
                                <div class="bookmark-icon-hover"><img src="assets/img/icons/bookmark2.png"
                                                                      alt="Image-HasTech"></div>
                            </div>
                            <!--== End Team Item ==-->
                        </div>
                    </c:forEach>
                </div>
            </div>
        </section>
        <!--== End Team Area Wrapper ==-->

        <!--== Start Brand Logo Area Wrapper ==-->
        <div class="brand-logo-area">
            <div class="container pt--0 pb--0" data-aos="fade-down">
                <div class="row">
                    <div class="col-12">
                        <div class="brand-logo-content">
                            <div class="swiper brand-logo-slider-container">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <!--== Start Brand Logo Item ==-->
                                        <div class="brand-logo-item">
                                            <img src="assets/img/brand-logo/1.png" alt="Image-HasTech">
                                        </div>
                                        <!--== End Brand Logo Item ==-->
                                    </div>
                                    <div class="swiper-slide">
                                        <!--== Start Brand Logo Item ==-->
                                        <div class="brand-logo-item">
                                            <img src="assets/img/brand-logo/2.png" alt="Image-HasTech">
                                        </div>
                                        <!--== End Brand Logo Item ==-->
                                    </div>
                                    <div class="swiper-slide">
                                        <!--== Start Brand Logo Item ==-->
                                        <div class="brand-logo-item">
                                            <img src="assets/img/brand-logo/3.png" alt="Image-HasTech">
                                        </div>
                                        <!--== End Brand Logo Item ==-->
                                    </div>
                                    <div class="swiper-slide">
                                        <!--== Start Brand Logo Item ==-->
                                        <div class="brand-logo-item">
                                            <img src="assets/img/brand-logo/4.png" alt="Image-HasTech">
                                        </div>
                                        <!--== End Brand Logo Item ==-->
                                    </div>
                                    <div class="swiper-slide">
                                        <!--== Start Brand Logo Item ==-->
                                        <div class="brand-logo-item">
                                            <img src="assets/img/brand-logo/5.png" alt="Image-HasTech">
                                        </div>
                                        <!--== End Brand Logo Item ==-->
                                    </div>
                                    <div class="swiper-slide">
                                        <!--== Start Brand Logo Item ==-->
                                        <div class="brand-logo-item">
                                            <img src="assets/img/brand-logo/6.png" alt="Image-HasTech">
                                        </div>
                                        <!--== End Brand Logo Item ==-->
                                    </div>
                                    <div class="swiper-slide">
                                        <!--== Start Brand Logo Item ==-->
                                        <div class="brand-logo-item">
                                            <img src="assets/img/brand-logo/1.png" alt="Image-HasTech">
                                        </div>
                                        <!--== End Brand Logo Item ==-->
                                    </div>
                                </div>
                            </div>
                            <!--== Add Swiper Arrows ==-->
                            <div class="swiper-btn-wrap">
                                <div class="brand-swiper-btn-prev">
                                    <i class="icofont-long-arrow-left"></i>
                                </div>
                                <div class="brand-swiper-btn-next">
                                    <i class="icofont-long-arrow-right"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--== End Brand Logo Area Wrapper ==-->

        <!--== Start Testimonial Area Wrapper ==-->
        <section class="testimonial-area bg-color-gray">
            <div class="container" data-aos="fade-down">
                <div class="row">
                    <div class="col-12">
                        <div class="section-title text-center">
                            <h3 class="title">Nos Clients Heureux</h3>
                            <div class="desc">
                                <p>Nos clients sont notre priorité, et nous sommes heureux de leur offrir des produits
                                    et services de qualité exceptionnelle. Nous travaillons dur pour nous assurer que
                                    chaque client est satisfait de ce que nous proposons et que nous leur offrons une
                                    expérience de magasinage agréable. </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="swiper testi-slider-container">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <!--== Start Testimonial Item ==-->

                                    <div class="testimonial-item">
                                        <div class="testi-inner-content">
                                            <div class="testi-author">
                                                <div class="testi-thumb">
                                                    <img src="assets/img/testimonial/2.jpg" width="75" height="75"
                                                         alt="Image-HasTech">
                                                </div>
                                                <div class="testi-info">
                                                    <h4 class="name">Hassan Benslimane</h4>
                                                    <span class="designation">Marrakech,Maroc</span>
                                                </div>
                                            </div>
                                            <div class="testi-content">
                                                <p class="desc">"J'ai trouvé le El moukef pour les homeservices très
                                                    utile. Il est très bien organisé et propose des informations
                                                    précises et complètes sur les services disponibles. Les outils et
                                                    les fonctionnalités sont très utiles et les tarifs sont très
                                                    compétitifs. Je recommande vivement ce El moukef à tous ceux qui
                                                    recherchent des services à domicile."</p>
                                                <div class="rating-box">
                                                    <i class="icofont-star"></i>
                                                    <i class="icofont-star"></i>
                                                    <i class="icofont-star"></i>
                                                    <i class="icofont-star"></i>
                                                    <i class="icofont-star"></i>
                                                </div>
                                                <div class="testi-quote"><img src="assets/img/icons/quote1.png"
                                                                              alt="Image-HasTech"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--== End Testimonial Item ==-->
                                </div>
                                <div class="swiper-slide">
                                    <!--== Start Testimonial Item ==-->

                                    <div class="testimonial-item">
                                        <div class="testi-inner-content">
                                            <div class="testi-author">
                                                <div class="testi-thumb">
                                                    <img src="assets/img/testimonial/3.jpg" width="75" height="75"
                                                         alt="Image-HasTech">
                                                </div>
                                                <div class="testi-info">
                                                    <h4 class="name">Soumaya Benslimane</h4>
                                                    <span class="designation">Casablanca,Maroc</span>
                                                </div>
                                            </div>
                                            <div class="testi-content">
                                                <p class="desc">"J'ai trouvé ce El moukef pour les homeservices très
                                                    pratique et facile à utiliser. Il est très bien organisé et fournit
                                                    des informations précises et complètes sur les services disponibles.
                                                    Les outils et les fonctionnalités sont très utiles et les tarifs
                                                    sont très compétitifs. Je recommande vivement ce El moukef à tous
                                                    ceux qui recherchent des services à domicile."</p>
                                                <div class="rating-box">
                                                    <i class="icofont-star"></i>
                                                    <i class="icofont-star"></i>
                                                    <i class="icofont-star"></i>
                                                    <i class="icofont-star"></i>
                                                    <i class="icofont-star"></i>
                                                </div>
                                                <div class="testi-quote"><img src="assets/img/icons/quote1.png"
                                                                              alt="Image-HasTech"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--== End Testimonial Item ==-->
                                </div>
                                <div class="swiper-slide">
                                    <!--== Start Testimonial Item ==-->

                                    <div class="testimonial-item">
                                        <div class="testi-inner-content">
                                            <div class="testi-author">
                                                <div class="testi-thumb">
                                                    <img src="assets/img/testimonial/3.jpg" width="75" height="75"
                                                         alt="Image-HasTech">
                                                </div>
                                                <div class="testi-info">
                                                    <h4 class="name">Karim El-hassani</h4>
                                                    <span class="designation">Tanger,Maroc</span>
                                                </div>
                                            </div>
                                            <div class="testi-content">
                                                <p class="desc">"Je suis très satisfait du service que j'ai reçu de ce
                                                    El moukef pour les homeservices. Les outils et les fonctionnalités
                                                    sont très utiles et les tarifs sont très compétitifs. Les
                                                    informations sont très claires et complètes et le site est très bien
                                                    organisé. Je recommande fortement ce El moukef à tous ceux qui
                                                    recherchent des services à domicile."</p>
                                                <div class="rating-box">
                                                    <i class="icofont-star"></i>
                                                    <i class="icofont-star"></i>
                                                    <i class="icofont-star"></i>
                                                    <i class="icofont-star"></i>
                                                    <i class="icofont-star"></i>
                                                </div>
                                                <div class="testi-quote"><img src="assets/img/icons/quote1.png"
                                                                              alt="Image-HasTech"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--== End Testimonial Item ==-->
                                </div>
                                <div class="swiper-slide">
                                    <!--== Start Testimonial Item ==-->

                                    <div class="testimonial-item">
                                        <div class="testi-inner-content">
                                            <div class="testi-author">
                                                <div class="testi-thumb">
                                                    <img src="assets/img/testimonial/3.jpg" width="75" height="75"
                                                         alt="Image-HasTech">
                                                </div>
                                                <div class="testi-info">
                                                    <h4 class="name">Karim el-hassani</h4>
                                                    <span class="designation">Casablanca,Maroc</span>
                                                </div>
                                            </div>
                                            <div class="testi-content">
                                                <p class="desc">"Le El moukef pour les services à domicile est très
                                                    facile à utiliser et très bien organisé. Il propose des informations
                                                    précises et complètes sur les services disponibles. Les outils et
                                                    les fonctionnalités sont très utiles et les tarifs sont très
                                                    compétitifs. Je recommande vivement ce El moukef à tous ceux qui
                                                    recherchent des services à domicile."</p>
                                                <div class="rating-box">
                                                    <i class="icofont-star"></i>
                                                    <i class="icofont-star"></i>
                                                    <i class="icofont-star"></i>
                                                    <i class="icofont-star"></i>
                                                    <i class="icofont-star"></i>
                                                </div>
                                                <div class="testi-quote"><img src="assets/img/icons/quote1.png"
                                                                              alt="Image-HasTech"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--== End Testimonial Item ==-->
                                </div>
                                <div class="swiper-slide">
                                    <!--== Start Testimonial Item ==-->

                                    <div class="testimonial-item">
                                        <div class="testi-inner-content">
                                            <div class="testi-author">
                                                <div class="testi-thumb">
                                                    <img src="assets/img/testimonial/3.jpg" width="75" height="75"
                                                         alt="Image-HasTech">
                                                </div>
                                                <div class="testi-info">
                                                    <h4 class="name">Karim el-hassani</h4>
                                                    <span class="designation">Casablanca,Maroc</span>
                                                </div>
                                            </div>
                                            <div class="testi-content">
                                                <p class="desc">"Le El moukef pour les services à domicile est très
                                                    facile à utiliser et très bien organisé. Il propose des informations
                                                    précises et complètes sur les services disponibles. Les outils et
                                                    les fonctionnalités sont très utiles et les tarifs sont très
                                                    compétitifs. Je recommande vivement ce El moukef à tous ceux qui
                                                    recherchent des services à domicile."</p>
                                                <div class="rating-box">
                                                    <i class="icofont-star"></i>
                                                    <i class="icofont-star"></i>
                                                    <i class="icofont-star"></i>
                                                    <i class="icofont-star"></i>
                                                    <i class="icofont-star"></i>
                                                </div>
                                                <div class="testi-quote"><img src="assets/img/icons/quote1.png"
                                                                              alt="Image-HasTech"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--== End Testimonial Item ==-->
                                </div>
                            </div>

                            <!--== Add Swiper Pagination ==-->
                            <div class="swiper-pagination"></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--== End Testimonial Area Wrapper ==-->

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
                                        target="_blank" href="#">AK,YB,AO,AE.</a></p>
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
    <div id="scroll-to-top" class="scroll-to-top"><span class="icofont-rounded-up"></span></div>

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
                    <li><a href="#">Trouver des Maalam</a>
                        <ul class="sub-menu">
                            <li><a href="job.html">Maalam</a></li>
                            <li><a href="job-details.html">Détails de l'Maalam</a></li>
                        </ul>
                    </li>
                    <li><a href="employers-details.jsp">Détails de Maalam</a></li>
                    <li><a href="#">Candidats</a>
                        <ul class="sub-menu">
                            <li><a href="candidate.html">Candidats</a></li>
                            <li><a href="candidate-details.jsp">Détails du candidat</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Pages</a>
                        <ul class="sub-menu">
                            <li><a href="about-us.html">À propos de nous</a></li>
                            <li><a href="login.html">Connexion</a></li>
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
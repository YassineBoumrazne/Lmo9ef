<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="Finate - Job Portal Website Template Using Bootstrap 5"/>
    <meta name="keywords" content="accessories, digital products, electronic html, modern, products, responsive"/>
    <meta name="author" content="hastech"/>

    <title>El Moukef - </title>

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
                                            <li><a href="job-details.html"><span>D??tails de l'Maalam</span></a></li>
                                        </ul>
                                    </li>
                                    <li><a href="employers-details.html"><span>D??tails des employeurs</span></a></li>
                                    <li class="has-submenu"><a href="#/"><span>Candidats</span></a>
                                        <ul class="submenu-nav">
                                            <li><a href="candidate.html"><span>Candidats</span></a></li>
                                            <li><a href="candidate-details.html"><span>D??tails du candidat</span></a></li>
                                        </ul>
                                    </li>
                                    <li class="has-submenu"><a href="#/"><span>Pages</span></a>
                                        <ul class="submenu-nav">
                                            <li><a href="about-us.html"><span>?? propos de nous</span></a></li>
                                            <li><a href="signin.jsp"><span>Connexion</span></a></li>
                                            <li><a href="signup.jsp"><span>Inscription</span></a></li>
                                            <li><a href="page-not-found.html"><span>Page non trouv??e</span></a></li>
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
                                            <h2 class="title"><span class="counter" data-counterup-delay="80">261</span> services disponibles <br>Trouvez le service dont vousbe avez besoin</h2>
                                            <p class="desc">Trouvez le service dont vous avez besoin parmi les nombreux services propos??s. De la plomberie aux services d'un handyman, vous trouverez tout sur cette plateforme.</p>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="job-search-wrap">
                                            <div class="job-search-form">
                                                <form action="#">
                                                    <div class="row row-gutter-10">
                                                        <div class="col-lg-auto col-sm-6 col-12 flex-grow-1">
                                                            <div class="form-group">
                                                                <input type="text" class="form-control" placeholder="Type de service">
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
                                                                    <option value="1" selected>Cat??gorie</option>
                                                                    <option value="2">Plomberie</option>
                                                                    <option value="3">Peinture</option>
                                                                    <option value="4">Bricolage</option>
                                                                    <option value="5">Jardinage</option>
                                                                    <option value="6">M??nage</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-auto col-sm-6 col-12 flex-grow-1">
                                                            <div class="form-group">
                                                                <button type="button" class="btn-form-search"><i class="icofont-search-1"></i></button>
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
                <img class="shape1" data-aos="fade-down" data-aos-duration="1500" src="assets/img/slider/vector1.png" width="270" height="234" alt="Image-HasTech">
                <img class="shape2" data-aos="fade-left" data-aos-duration="2000" src="assets/img/slider/vector2.png" width="201" height="346" alt="Image-HasTech">
                <img class="shape3" data-aos="fade-right" data-aos-duration="2000" src="assets/img/slider/vector3.png" width="276" height="432" alt="Image-HasTech">
                <img class="shape4" data-aos="flip-left" data-aos-duration="1500" src="assets/img/slider/vector4.png" width="127" height="121" alt="Image-HasTech">
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
                            <h3 class="title">Cat??gories populaires</h3>
                            <div class="desc">
                                <p>Beaucoup de packages de publication sur bureau et ??diteurs de page Web</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row row-gutter-20" >
                    <div class="col-sm-6 col-lg-3">
                        <!--== Start Job Category Item ==-->
                        <div class="job-category-item">
                            <div class="content">
                                <h3 class="title"><a href="job-details.html">Plomberie / Services g??n??raux <span>(305)</span></a></h3>
                            </div>
                            <a class="overlay-link" href="job-details.html"></a>
                        </div>
                        <!--== End Job Category Item ==-->
                    </div>
                    <div class="col-sm-6 col-lg-3">
                        <!--== Start Job Category Item ==-->
                        <div class="job-category-item">
                            <div class="content">
                                <h3 class="title"><a href="job-details.html">Electricit?? / Eclairage <span>(95)</span></a></h3>
                            </div>
                            <a class="overlay-link" href="job-details.html"></a>
                        </div>
                        <!--== End Job Category Item ==-->
                    </div>
                    <div class="col-sm-6 col-lg-3">
                        <!--== Start Job Category Item ==-->
                        <div class="job-category-item">
                            <div class="content">
                                <h3 class="title"><a href="job-details.html">Peinture / D??coration <span>(212)</span></a></h3>
                            </div>
                            <a class="overlay-link" href="job-details.html"></a>
                        </div>
                        <!--== End Job Category Item ==-->
                    </div>
                    <div class="col-sm-6 col-lg-3">
                        <!--== Start Job Category Item ==-->
                        <div class="job-category-item">
                            <div class="content">
                                <h3 class="title"><a href="job-details.html">Ma??onnerie / Brique <span>(93)</span></a></h3>
                            </div>
                            <a class="overlay-link" href="job-details.html"></a>
                        </div>
                        <!--== End Job Category Item ==-->
                    </div>
                    <div class="col-sm-6 col-lg-3">
                        <!--== Start Job Category Item ==-->
                        <div class="job-category-item">
                            <div class="content">
                                <h3 class="title"><a href="job-details.html">Cuisine / Salle de bains <span>(4)</span></a></h3>
                            </div>
                            <a class="overlay-link" href="job-details.html"></a>
                        </div>
                        <!--== End Job Category Item ==-->
                    </div>
                    <div class="col-sm-6 col-lg-3">
                        <!--== Start Job Category Item ==-->
                        <div class="job-category-item">
                            <div class="content">
                                <h3 class="title"><a href="job-details.html">Menuiserie / Escaliers <span>(34)</span></a></h3>
                            </div>
                            <a class="overlay-link" href="job-details.html"></a>
                        </div>
                        <!--== End Job Category Item ==-->
                    </div>
                    <div class="col-sm-6 col-lg-3">
                        <!--== Start Job Category Item ==-->
                        <div class="job-category-item">
                            <div class="content">
                                <h3 class="title"><a href="job-details.html">Toiture / Tuiles <span>(376)</span></a></h3>
                            </div>
                            <a class="overlay-link" href="job-details.html"></a>
                        </div>
                        <!--== End Job Category Item ==-->
                    </div>
                    <div class="col-sm-6 col-lg-3">
                        <!--== Start Job Category Item ==-->
                        <div class="job-category-item">
                            <div class="content">
                                <h3 class="title"><a href="job-details.html">Jardinage / Paysagisme <span>(450)</span></a></h3>
                            </div>
                            <a class="overlay-link" href="job-details.html"></a>
                        </div>
                        <!--== End Job Category Item ==-->
                    </div>
                    <div class="col-sm-6 col-lg-3">
                        <!--== Start Job Category Item ==-->
                        <div class="job-category-item">
                            <div class="content">
                                <h3 class="title"><a href="job-details.html">D??m??nagement / Stockage <span>(25)</span></a></h3>
                            </div>
                            <a class="overlay-link" href="job-details.html"></a>
                        </div>
                        <!--== End Job Category Item ==-->
                    </div>
                    <div class="col-sm-6 col-lg-3">
                        <!--== Start Job Category Item ==-->
                        <div class="job-category-item">
                            <div class="content">
                                <h3 class="title"><a href="job-details.html">Electricit?? / Eclairage <span>(95)</span></a></h3>
                            </div>
                            <a class="overlay-link" href="job-details.html"></a>
                        </div>
                        <!--== End Job Category Item ==-->
                    </div>
                    <div class="col-sm-6 col-lg-3">
                        <!--== Start Job Category Item ==-->
                        <div class="job-category-item">
                            <div class="content">
                                <h3 class="title"><a href="job-details.html">R??parations / montage <span>(666)</span></a></h3>
                            </div>
                            <a class="overlay-link" href="job-details.html"></a>
                        </div>
                        <!--== End Job Category Item ==-->
                    </div>
                    <div class="col-sm-6 col-lg-3">
                        <!--== Start Job Category Item ==-->
                        <div class="job-category-item">
                            <div class="content">
                                <h3 class="title"><a href="job-details.html">Travaux de finition <span>(62)</span></a></h3>
                            </div>
                            <a class="overlay-link" href="job-details.html"></a>
                        </div>
                        <!--== End Job Category Item ==-->
                    </div>
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
                            <h3 class="title">Offres R??centes De Services ?? Domicile</h3>
                            <div class="desc">
                                <p>De nombreux packages de publication de bureau et ??diteurs de pages Web</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 col-lg-4">
                        <!--== Start Recent Job Item ==-->
                        <div class="recent-job-item">
                            <div class="company-info">
                                <div class="logo">
                                    <a href="company-details.html"><img src="assets/img/companies/1.jpg" width="75" height="75" alt="Image-HasTech"></a>
                                </div>
                                <div class="content">
                                    <h4 class="name"><a href="company-details.html">Omare Lamire</a></h4>
                                    <p class="address">Casablanca, Maroc</p>
                                </div>
                            </div>
                            <div class="main-content">
                                <h3 class="title"><a href="job-details.html">Plombier</a></h3>
                                <h5 class="work-type">Temps plein</h5>
                                <p class="desc">Exp??rience dans l'installation et la r??paration des ??quipements sanitaires</p>
                            </div>
                            <div class="recent-job-info">
                                <div class="salary">
                                    <h4>150 Dhs</h4>
                                    <p>/jour</p>
                                </div>
                                <a class="btn-theme btn-sm" href="job-details.html">Commander</a>
                            </div>
                        </div>
                        <!--== End Recent Job Item ==-->
                    </div>
                    <div class="col-md-6 col-lg-4">
                        <!--== Start Recent Job Item ==-->
                        <div class="recent-job-item">
                            <div class="company-info">
                                <div class="logo">
                                    <a href="company-details.html"><img src="assets/img/companies/1.jpg" width="75" height="75" alt="Image-HasTech"></a>
                                </div>
                                <div class="content">
                                    <h4 class="name"><a href="company-details.html">Mustapha Readi</a></h4>
                                    <p class="address">Casablanca, Maroc</p>
                                </div>
                            </div>
                            <div class="main-content">
                                <h3 class="title"><a href="job-details.html">Peinture</a></h3>
                                <h5 class="work-type">Temps plein</h5>
                                <p class="desc">Exp??rience dans le m??lange et l'application de peintures et de rev??tements de sols, ainsi que l'application de rev??tements muraux.</p>
                            </div>
                            <div class="recent-job-info">
                                <div class="salary">
                                    <h4>200 Dhs</h4>
                                    <p>/jour</p>
                                </div>
                                <a class="btn-theme btn-sm" href="job-details.html">Commander</a>
                            </div>
                        </div>
                        <!--== End Recent Job Item ==-->
                    </div>

                    <div class="col-md-6 col-lg-4">
                        <!--== Start Recent Job Item ==-->
                        <div class="recent-job-item">
                            <div class="company-info">
                                <div class="logo">
                                    <a href="company-details.html"><img src="assets/img/companies/2.jpg" width="75" height="75" alt="Image-HasTech"></a>
                                </div>
                                <div class="content">
                                    <h4 class="name"><a href="company-details.html">Ahmed Mounir</a></h4>
                                    <p class="address">Rabat, Maroc</p>
                                </div>
                            </div>
                            <div class="main-content">
                                <h3 class="title"><a href="job-details.html">Plomberie</a></h3>
                                <h5 class="work-type">Temps plein</h5>
                                <p class="desc">Capacit?? ?? travailler avec des outils divers et ?? r??soudre des probl??mes de plomberie complexes.</p>
                            </div>
                            <div class="recent-job-info">
                                <div class="salary">
                                    <h4>250 Dhs</h4>
                                    <p>/jour</p>
                                </div>
                                <a class="btn-theme btn-sm" href="job-details.html">Commander</a>
                            </div>
                        </div>
                        <!--== End Recent Job Item ==-->
                    </div>
                    <div class="col-md-6 col-lg-4">
                        <!--== Start Recent Job Item ==-->
                        <div class="recent-job-item">
                            <div class="company-info">
                                <div class="logo">
                                    <a href="company-details.html"><img src="assets/img/companies/3.jpg" width="75" height="75" alt="Image-HasTech"></a>
                                </div>
                                <div class="content">
                                    <h4 class="name"><a href="company-details.html">Mohammed El Amine</a></h4>
                                    <p class="address">F??s, Maroc</p>
                                </div>
                            </div>
                            <div class="main-content">
                                <h3 class="title"><a href="job-details.html">Menuiserie</a></h3>
                                <h5 class="work-type">Temps plein</h5>
                                <p class="desc">Capacit?? ?? couper, fa??onner et assembler le bois pour construire et r??parer des structures et des ??l??ments.</p>
                            </div>
                            <div class="recent-job-info">
                                <div class="salary">
                                    <h4>180 Dhs</h4>
                                    <p>/jour</p>
                                </div>
                                <a class="btn-theme btn-sm" href="job-details.html">Commander</a>
                            </div>
                        </div>
                        <!--== End Recent Job Item ==-->
                    </div>
                    <div class="col-md-6 col-lg-4">
                        <!--== Start Recent Job Item ==-->

                        <div class="recent-job-item">
                            <div class="company-info">
                                <div class="logo">
                                    <a href="company-details.html"><img src="assets/img/companies/1.jpg" width="75" height="75" alt="Image-HasTech"></a>
                                </div>
                                <div class="content">
                                    <h4 class="name"><a href="company-details.html">Mohamed Electricien</a></h4>
                                    <p class="address">Casablanca, Maroc</p>
                                </div>
                            </div>
                            <div class="main-content">
                                <h3 class="title"><a href="job-details.html">??lectricit??</a></h3>
                                <h5 class="work-type">Temps plein</h5>
                                <p class="desc">Exp??rience en tant qu'??lectricien avec une solide connaissance des codes et des normes de s??curit??.</p>
                            </div>
                            <div class="recent-job-info">
                                <div class="salary">
                                    <h4>350 Dhs</h4>
                                    <p>/jour</p>
                                </div>
                                <a class="btn-theme btn-sm" href="job-details.html">Commander</a>
                            </div>
                        </div>
                        <!--== End Recent Job Item ==-->
                    </div>
                    <div class="col-md-6 col-lg-4">
                        <!--== Start Recent Job Item ==-->

                        <div class="recent-job-item">
                            <div class="company-info">
                                <div class="logo">
                                    <a href="company-details.html"><img src="assets/img/companies/2.jpg" width="75" height="75" alt="Image-Mustapha Readi"></a>
                                </div>
                                <div class="content">
                                    <h4 class="name"><a href="company-details.html">Bahija laasri</a></h4>
                                    <p class="address">Casablanca, Maroc</p>
                                </div>
                            </div>
                            <div class="main-content">
                                <h3 class="title"><a href="job-details.html">Nettoyage et M??nage</a></h3>
                                <h5 class="work-type">Temps plein</h5>
                                <p class="desc">Exp??rience dans le nettoyage des sols, des meubles et des surfaces. Comp??tences en cuisine et en repassage.</p>
                            </div>
                            <div class="recent-job-info">
                                <div class="salary">
                                    <h4>150 Dhs</h4>
                                    <p>/jour</p>
                                </div>
                                <a class="btn-theme btn-sm" href="job-details.html">Commander</a>
                            </div>
                        </div>
                        <!--== End Recent Job Item ==-->
                    </div>
                </div>
            </div>
</section>
<!--== End Recent Job Area Wrapper ==-->

<!--== Start Work Process Area Wrapper ==-->
<section class="work-process-area">
    <div class="container" data-aos="fade-down">
        <div class="row">
            <div class="col-12">
                <div class="section-title text-center" >
                    <h3 class="title">Comment ??a marche</h3>
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
                                    <img class="icon-hover" src="assets/img/icons/w1-hover.png" alt="Image-HasTech">
                                </div>
                            </div>
                            <div class="content">
                                <h4 class="title">Cr??ation de compte et soumission de la demande</h4>
                                <p class="desc">Les clients cr??ent un compte sur le site Web et fournissent des d??tails sur le service dont ils ont besoin et leur emplacement.</p>
                            </div>
                            <div class="shape-arrow-icon">
                                <img class="shape-icon" src="assets/img/icons/right-arrow.png" alt="Image-HasTech">
                                <img class="shape-icon-hover" src="assets/img/icons/right-arrow2.png" alt="Image-HasTech">
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
                                    <img class="icon-hover" src="assets/img/icons/w3-hover.png" alt="Image-HasTech">
                                </div>
                            </div>
                            <div class="content">
                                <h4 class="title">Recherche de correspondance et pr??sentation des fournisseurs</h4>
                                <p class="desc">Le site Web recherche une correspondance entre la demande du client et les fournisseurs qui offrent le service dans la zone du client. Une fois la correspondance trouv??e, le client re??oit une liste de fournisseurs disponibles et de leurs profils.</p>
                            </div>
                            <div class="shape-arrow-icon">
                                <img class="shape-icon" src="assets/img/icons/right-arrow.png" alt="Image-HasTech">
                                <img class="shape-icon-hover" src="assets/img/icons/right-arrow2.png" alt="Image-HasTech">
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
                                    <img class="icon-hover" src="assets/img/icons/w4-hover.png" alt="Image-HasTech">
                                </div>
                            </div>
                            <div class="content">
                                <h4 class="title">Choix du fournisseur, r??servation et paiement</h4>
                                <p class="desc">Le client parcourt les profils et choisit le fournisseur avec lequel il souhaite travailler. Ensuite, le client contacte le fournisseur directement pour discuter de d??tails suppl??mentaires et r??server le service. Le paiement pour le service est trait?? via le site Web</p>
                            </div>
                            <div class="shape-arrow-icon d-none">
                                <img class="shape-icon" src="assets/img/icons/right-arrow.png" alt="Image-HasTech">
                                <img class="shape-icon-hover" src="assets/img/icons/right-arrow2.png" alt="Image-HasTech">
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
                <div class="section-title text-center" >
                    <h3 class="title">Les Meilleurs Maalmiya</h3>
                    <div class="desc">
                        <p>Nos artisans sont qualifi??s et tr??s professionnels</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6 col-lg-4 col-xl-3">
                <!--== Start Team Item ==-->
                <div class="team-item">
                    <div class="thumb">
                        <a href="candidate-details.html">
                            <img src="assets/img/team/1.jpg" width="160" height="160" alt="Image-HasTech">
                        </a>
                    </div>
                    <div class="content">
                        <h4 class="title"><a href="candidate-details.html">Mohammed Laghzizil</a></h4>
                        <h5 class="sub-title">Plombier</h5>
                        <div class="rating-box">
                            <i class="icofont-star"></i>
                            <i class="icofont-star"></i>
                            <i class="icofont-star"></i>
                            <i class="icofont-star"></i>
                            <i class="icofont-star"></i>
                        </div>
                        <p class="desc">Mise en place de tuyauteries, d??pannage et r??novation</p>
                        <a class="btn-theme btn-white btn-sm" href="candidate-details.html">Voir le profile</a>
                    </div>
                    <div class="bookmark-icon"><img src="assets/img/icons/bookmark1.png" alt="Image-HasTech"></div>
                    <div class="bookmark-icon-hover"><img src="assets/img/icons/bookmark2.png" alt="Image-HasTech"></div>
                </div>
                <!--== End Team Item ==-->
            </div>
            <div class="col-sm-6 col-lg-4 col-xl-3">
                <!--== Start Team Item ==-->
                <div class="team-item">
                    <div class="thumb">
                        <a href="candidate-details.html">
                            <img src="assets/img/team/2.jpg" width="160" height="160" alt="Image-HasTech">
                        </a>
                    </div>
                    <div class="content">
                        <h4 class="title"><a href="candidate-details.html">Hamza Serghini</a></h4>
                        <h5 class="sub-title">??lectricien</h5>
                        <div class="rating-box">
                            <i class="icofont-star"></i>
                            <i class="icofont-star"></i>
                            <i class="icofont-star"></i>
                            <i class="icofont-star"></i>
                            <i class="icofont-star"></i>
                        </div>
                        <p class="desc">Installation d'??quipements ??lectriques, r??paration et maintenance</p>
                        <a class="btn-theme btn-white btn-sm" href="candidate-details.html">Voir le profile</a>
                    </div>
                    <div class="bookmark-icon"><img src="assets/img/icons/bookmark1.png" alt="Image-HasTech"></div>
                    <div class="bookmark-icon-hover"><img src="assets/img/icons/bookmark2.png" alt="Image-HasTech"></div>
                </div>
                <!--== End Team Item ==-->
            </div>
            <div class="col-sm-6 col-lg-4 col-xl-3">
                <!--== Start Team Item ==-->
                <div class="team-item">
                    <div class="thumb">
                        <a href="candidate-details.html">
                            <img src="assets/img/team/3.jpg" width="160" height="160" alt="Image-HasTech">
                        </a>
                    </div>
                    <div class="content">
                        <h4 class="title"><a href="candidate-details.html">Hassan El Idrissi</a></h4>
                        <h5 class="sub-title">Menuisier</h5>
                        <div class="rating-box">
                            <i class="icofont-star"></i>
                            <i class="icofont-star"></i>
                            <i class="icofont-star"></i>
                            <i class="icofont-star"></i>
                            <i class="icofont-star"></i>
                        </div>
                        <p class="desc">Fabrication et installation de meubles en bois, menuiseries</p>
                        <a class="btn-theme btn-white btn-sm" href="candidate-details.html">Voir le profile</a>
                    </div>
                    <div class="bookmark-icon"><img src="assets/img/icons/bookmark1.png" alt="Image-HasTech"></div>
                    <div class="bookmark-icon-hover"><img src="assets/img/icons/bookmark2.png" alt="Image-HasTech"></div>
                </div>
                <!--== End Team Item ==-->
            </div>
            <div class="col-sm-6 col-lg-4 col-xl-3">
                <!--== Start Team Item ==-->
                <div class="team-item">
                    <div class="thumb">
                        <a href="candidate-details.html">
                            <img src="assets/img/team/4.jpg" width="160" height="160" alt="Image-HasTech">
                        </a>
                    </div>
                    <div class="content">
                        <h4 class="title"><a href="candidate-details.html">Hajar Azizi</a></h4>
                        <h5 class="sub-title">Femme de m??nage</h5>
                        <div class="rating-box">
                            <i class="icofont-star"></i>
                            <i class="icofont-star"></i>
                            <i class="icofont-star"></i>
                            <i class="icofont-star"></i>
                            <i class="icofont-star"></i>
                        </div>
                        <p class="desc">Effectue des t??ches de nettoyage et d'entretien dans des r??sidences ou des bureaux. </p>
                        <a class="btn-theme btn-white btn-sm" href="candidate-details.html">Voir le profile</a>
                    </div>
                    <div class="bookmark-icon"><img src="assets/img/icons/bookmark1.png" alt="Image-HasTech"></div>
                    <div class="bookmark-icon-hover"><img src="assets/img/icons/bookmark2.png" alt="Image-HasTech"></div>
                </div>
                <!--== End Team Item ==-->
            </div>
        </div>
    </div>
</section>
<!--== End Team Area Wrapper ==-->

<!--== Start Brand Logo Area Wrapper ==-->
<div class="brand-logo-area">
    <div class="container pt--0 pb--0" data-aos="fade-down">
        <div class="row">
            <div class="col-12">
                <div class="brand-logo-content" >
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
                <div class="section-title text-center" >
                    <h3 class="title">Nos Clients Heureux</h3>
                    <div class="desc">
                        <p>Nos clients sont notre priorit??, et nous sommes heureux de leur offrir des produits et services de qualit?? exceptionnelle. Nous travaillons dur pour nous assurer que chaque client est satisfait de ce que nous proposons et que nous leur offrons une exp??rience de magasinage agr??able. </p>
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
                                            <img src="assets/img/testimonial/2.jpg" width="75" height="75" alt="Image-HasTech">
                                        </div>
                                        <div class="testi-info">
                                            <h4 class="name">Hassan Benslimane</h4>
                                            <span class="designation">Marrakech,Maroc</span>
                                        </div>
                                    </div>
                                    <div class="testi-content">
                                        <p class="desc">"J'ai trouv?? le El moukef pour les homeservices tr??s utile. Il est tr??s bien organis?? et propose des informations pr??cises et compl??tes sur les services disponibles. Les outils et les fonctionnalit??s sont tr??s utiles et les tarifs sont tr??s comp??titifs. Je recommande vivement ce El moukef ?? tous ceux qui recherchent des services ?? domicile."</p>
                                        <div class="rating-box">
                                            <i class="icofont-star"></i>
                                            <i class="icofont-star"></i>
                                            <i class="icofont-star"></i>
                                            <i class="icofont-star"></i>
                                            <i class="icofont-star"></i>
                                        </div>
                                        <div class="testi-quote"><img src="assets/img/icons/quote1.png" alt="Image-HasTech"></div>
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
                                            <img src="assets/img/testimonial/3.jpg" width="75" height="75" alt="Image-HasTech">
                                        </div>
                                        <div class="testi-info">
                                            <h4 class="name">Soumaya Benslimane</h4>
                                            <span class="designation">Casablanca,Maroc</span>
                                        </div>
                                    </div>
                                    <div class="testi-content">
                                        <p class="desc">"J'ai trouv?? ce El moukef pour les homeservices tr??s pratique et facile ?? utiliser. Il est tr??s bien organis?? et fournit des informations pr??cises et compl??tes sur les services disponibles. Les outils et les fonctionnalit??s sont tr??s utiles et les tarifs sont tr??s comp??titifs. Je recommande vivement ce El moukef ?? tous ceux qui recherchent des services ?? domicile."</p>
                                        <div class="rating-box">
                                            <i class="icofont-star"></i>
                                            <i class="icofont-star"></i>
                                            <i class="icofont-star"></i>
                                            <i class="icofont-star"></i>
                                            <i class="icofont-star"></i>
                                        </div>
                                        <div class="testi-quote"><img src="assets/img/icons/quote1.png" alt="Image-HasTech"></div>
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
                                            <img src="assets/img/testimonial/3.jpg" width="75" height="75" alt="Image-HasTech">
                                        </div>
                                        <div class="testi-info">
                                            <h4 class="name">Karim El-hassani</h4>
                                            <span class="designation">Tanger,Maroc</span>
                                        </div>
                                    </div>
                                    <div class="testi-content">
                                        <p class="desc">"Je suis tr??s satisfait du service que j'ai re??u de ce El moukef pour les homeservices. Les outils et les fonctionnalit??s sont tr??s utiles et les tarifs sont tr??s comp??titifs. Les informations sont tr??s claires et compl??tes et le site est tr??s bien organis??. Je recommande fortement ce El moukef ?? tous ceux qui recherchent des services ?? domicile."</p>
                                        <div class="rating-box">
                                            <i class="icofont-star"></i>
                                            <i class="icofont-star"></i>
                                            <i class="icofont-star"></i>
                                            <i class="icofont-star"></i>
                                            <i class="icofont-star"></i>
                                        </div>
                                        <div class="testi-quote"><img src="assets/img/icons/quote1.png" alt="Image-HasTech"></div>
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
                                            <img src="assets/img/testimonial/3.jpg" width="75" height="75" alt="Image-HasTech">
                                        </div>
                                        <div class="testi-info">
                                            <h4 class="name">Karim el-hassani</h4>
                                            <span class="designation">Casablanca,Maroc</span>
                                        </div>
                                    </div>
                                    <div class="testi-content">
                                        <p class="desc">"Le El moukef pour les services ?? domicile est tr??s facile ?? utiliser et tr??s bien organis??. Il propose des informations pr??cises et compl??tes sur les services disponibles. Les outils et les fonctionnalit??s sont tr??s utiles et les tarifs sont tr??s comp??titifs. Je recommande vivement ce El moukef ?? tous ceux qui recherchent des services ?? domicile."</p>
                                        <div class="rating-box">
                                            <i class="icofont-star"></i>
                                            <i class="icofont-star"></i>
                                            <i class="icofont-star"></i>
                                            <i class="icofont-star"></i>
                                            <i class="icofont-star"></i>
                                        </div>
                                        <div class="testi-quote"><img src="assets/img/icons/quote1.png" alt="Image-HasTech"></div>
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
                                            <img src="assets/img/testimonial/3.jpg" width="75" height="75" alt="Image-HasTech">
                                        </div>
                                        <div class="testi-info">
                                            <h4 class="name">Karim el-hassani</h4>
                                            <span class="designation">Casablanca,Maroc</span>
                                        </div>
                                    </div>
                                    <div class="testi-content">
                                        <p class="desc">"Le El moukef pour les services ?? domicile est tr??s facile ?? utiliser et tr??s bien organis??. Il propose des informations pr??cises et compl??tes sur les services disponibles. Les outils et les fonctionnalit??s sont tr??s utiles et les tarifs sont tr??s comp??titifs. Je recommande vivement ce El moukef ?? tous ceux qui recherchent des services ?? domicile."</p>
                                        <div class="rating-box">
                                            <i class="icofont-star"></i>
                                            <i class="icofont-star"></i>
                                            <i class="icofont-star"></i>
                                            <i class="icofont-star"></i>
                                            <i class="icofont-star"></i>
                                        </div>
                                        <div class="testi-quote"><img src="assets/img/icons/quote1.png" alt="Image-HasTech"></div>
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
                            <p class="copyright">?? 2023 FPT. Made with <i class="icofont-heart"></i> by <a target="_blank" href="https://themeforest.net/user/codecarnival">AK,YB,AO,AE.</a></p>
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
<aside class="off-canvas-wrapper offcanvas offcanvas-start" tabindex="-1" id="AsideOffcanvasMenu" aria-labelledby="offcanvasExampleLabel">
    <div class="offcanvas-header">
        <h1 class="d-none" id="offcanvasExampleLabel">Menu de c??t??</h1>
        <button class="btn-menu-close" data-bs-dismiss="offcanvas" aria-label="Fermer">menu <i class="icofont-simple-left"></i></button>
    </div>
    <div class="offcanvas-body">
        <!-- Mobile Menu Start -->
        <div class="mobile-menu-items">
            <ul class="nav-menu">
                <li><a href="index.jsp">Accueil</a></li>
                <li><a href="#">Trouver des Maalam</a>
                    <ul class="sub-menu">
                        <li><a href="job.html">Maalam</a></li>
                        <li><a href="job-details.html">D??tails de l'Maalam</a></li>
                    </ul>
                </li>
                <li><a href="employers-details.html">D??tails de Maalam</a></li>
                <li><a href="#">Candidats</a>
                    <ul class="sub-menu">
                        <li><a href="candidate.html">Candidats</a></li>
                        <li><a href="candidate-details.html">D??tails du candidat</a></li>
                    </ul>
                </li>
                <li><a href="#">Pages</a>
                    <ul class="sub-menu">
                        <li><a href="about-us.html">?? propos de nous</a></li>
                        <li><a href="login.html">Connexion</a></li>
                        <li><a href="signup.jsp">Inscription</a></li>
                        <li><a href="page-not-found.html">Page non trouv??e</a></li>
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
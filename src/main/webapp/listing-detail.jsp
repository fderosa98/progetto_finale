<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="keywords" content="">
<meta name="description" content="">
<title>CarForYou - Responsive Car Dealer HTML5 Template</title>
<!--Bootstrap -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css">
<!--Custome Style -->
<link rel="stylesheet" href="assets/css/style.css" type="text/css">
<link rel="stylesheet" href="assets/css/custom.css" type="text/css">
<!--OWL Carousel slider-->
<link rel="stylesheet" href="assets/css/owl.carousel.css" type="text/css">
<link rel="stylesheet" href="assets/css/owl.transitions.css" type="text/css">
<!--slick-slider -->
<link href="assets/css/slick.css" rel="stylesheet">
<!--bootstrap-slider -->
<link href="assets/css/bootstrap-slider.min.css" rel="stylesheet">
<!--FontAwesome Font Style -->
<link href="assets/css/font-awesome.min.css" rel="stylesheet">

<!-- Custom Colors -->
<link rel="stylesheet" href="assets/colors/red.css">
<!--<link rel="stylesheet" href="assets/colors/orange.css">-->
<!--<link rel="stylesheet" href="assets/colors/blue.css">-->
<!--<link rel="stylesheet" href="assets/colors/pink.css">-->
<!--<link rel="stylesheet" href="assets/colors/green.css">-->
<!--<link rel="stylesheet" href="assets/colors/purple.css">-->
        
<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/images/favicon-icon/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/images/favicon-icon/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/images/favicon-icon/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="assets/images/favicon-icon/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="assets/images/favicon-icon/favicon.png">
<!-- Google-Font-->
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->  
</head>
<body class="listing-detail-2">

<!--Header-->
<header>
    <div class="default-header">
      <div class="container">
        <div class="row">
          <div class="col-sm-3 col-md-2">
            <div class="logo"> <a href="index.html"><img src="assets/images/logo.png" alt="image"/></a> </div>
          </div>
          <div class="col-sm-9 col-md-10">
            <div class="header_info">
              <div class="header_widgets">
                <div class="circle_icon"> <i class="fa fa-envelope" aria-hidden="true"></i> </div>
                <p class="uppercase_text">Scrivici: </p>
                <a href="Paolo_maccari@outlook.com" class="disabled">Paolo_maccari@outlook.com</a> </div>
              <div class="header_widgets">
                <div class="circle_icon"> <i class="fa fa-phone" aria-hidden="true"></i> </div>
                <p class="uppercase_text">Contattaci: </p>
                <a href="tel:39 342 093 9646" class="disabled">+39 342 162 6277</a> </div>
              <div class="social-follow">
                <ul>
                  <li><a href="#" class="disabled"><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
                  <li><a href="#" class="disabled"><i class="fa fa-twitter-square" aria-hidden="true"></i></a></li>
                  <li><a href="#" class="disabled"><i class="fa fa-linkedin-square" aria-hidden="true"></i></a></li>
                  <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                </ul>
              </div>
              <div class="login_btn"> <a href="#loginform" class="btn btn-xs uppercase" data-bs-toggle="modal" data-bs-dismiss="modal">Login / Registrati</a> </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  
  <!-- Navigation -->
  <nav id="navigation_bar" class="navbar navbar-expand-lg">
  <div class="container">
  <div class="row header-row desktop">
    <div class="navbar-header">
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <i class="fa fa-bars"></i> </button>
    </div>
    
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="nav navbar-nav">
        <!--li class="dropdown"><a href="#" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">Home</a>
           <ul class="dropdown-menu">
            <li><a href="index-2 U.html">Index-2</a></li> 
          </ul>
        </li> -->
        <li><a href="index.html"> Home</a></li> <!-- modifica dal dropdown di Home-->
        <li><a href="about-us.html">Chi siamo</a></li> <!-- modifica dal dropdown di Chi siamo-->
        <!--<li class="dropdown"><a href="#" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">Catalogo</a>
          <ul class="dropdown-menu">
            <li><a href="about-us U.html">About-us-u</a></li>
          </ul>
        </li>-->
        <li><a href="listing-classic.jsp">Catalogo</a></li><!-- modifica dal dropdown di Catalogo-->
        <!--li class="dropdown"><a href="#" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">Rivenditori</a>
          <ul class="dropdown-menu">
            <li><a href="dealers-list.html">List View</a></li>
            <li><a href="dealers-profile.html">Detail Page</a></li>
          </ul>
        </li> -->
         <!-- <li class="dropdown"><a href="#" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">Sezione Da togliere?</a>
          <ul class="dropdown-menu">
            <li><a href="services.html">Services</a></li>
            <li><a href="contact-us.html">Contact Us</a></li>
            <li><a href="compare.html">Compare Vehicles</a></li>
            <li><a href="faq.html">FAQ</a></li>
            <li><a href="404.html">404 Error</a></li>
    
          </ul>
        </li> -->
        <li><a href="contact-us.html">Contattaci</a></li>
      </ul>
    </div>
  <div class="header_wrap">
      <div class="user_login">
        <ul>
          <li class="dropdown dropdown-toggle"> <a href="#" class="dropdown-toggle" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false"><i class="fa fa-user-circle" aria-hidden="true"></i>IlBolter<i class="fa fa-angle-down" aria-hidden="true"></i></a>
            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
              <li><a class="dropdown-item" href="profile-settings.html">impostazioni</a></li>
              <li><a class="dropdown-item" href="my-vehicles.html">Le mie auto</a></li>
              <li><a class="dropdown-item" href="post-vehicle.html">Crea un Annucio</a></li>
              <li><a class="dropdown-item" href="#">Esci</a></li>
            </ul>
          </li>
        </ul>
      </div>
      <div class="header_search">
        <div id="search_toggle"><i class="fa fa-search" aria-hidden="true"></i></div>
        <form action="#" method="get" id="header-search-form">
          <input type="text" placeholder="Cerca..." class="form-control">
          <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
        </form>
      </div>
    </div>
  </div>
	
	 <!-- mobile-view -->
	  <div class="row header-row mobile">
	<div class="col-10 col-md-8 right">
      <div class="navbar-header">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <i class="fa fa-bars"></i> </button>
      </div>
      
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="nav navbar-nav">
          <li class="dropdown"><a href="#" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">Home</a>
          	 <ul class="dropdown-menu">
              <li><a href="index.html">Home Page 1</a></li>
              <li><a href="index-2.html">Home Page 2</a></li>
			  <li><a href="index-3.html">Home Page 3</a></li>
            </ul>
          </li>
          <li><a href="about-us.html">About Us</a></li>
          <li class="dropdown"><a href="#" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">Inventory</a>
            <ul class="dropdown-menu">
              <li><a href="listing-grid.html">Grid Style</a></li>
              <li><a href="listing-classic.html">Classic Style</a></li>
              <li><a href="listing-detail.html">Detail Page Style 1</a></li>
              <li><a href="listing-detail-2.html">Detail Page Style 2</a></li>
            </ul>
          </li>
          <li class="dropdown"><a href="#" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">Dealers</a>
            <ul class="dropdown-menu">
              <li><a href="dealers-list.html">List View</a></li>
              <li><a href="dealers-profile.html">Detail Page</a></li>
            </ul>
          </li>
          <li class="dropdown"><a href="#" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">Pages</a>
            <ul class="dropdown-menu">
              <li><a href="services.html">Services</a></li>
              <li><a href="contact-us.html">Contact Us</a></li>
              <li><a href="compare.html">Compare Vehicles</a></li>
              <li><a href="faq.html">FAQ</a></li>
              <li><a href="404.html">404 Error</a></li>
              <li><a href="coming-soon.html">Coming Soon</a></li>
            </ul>
          </li>
          <li class="dropdown"><a href="#" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">News</a>
            <ul class="dropdown-menu">
              <li><a href="blog-left-sidebar.html">Blog Left Sidebar</a></li>
              <li><a href="blog-right-sidebar.html">Blog Right Sidebar</a></li>
              <li><a href="blog-detail.html">Blog Detail</a></li>
            </ul>
          </li>
        </ul>
      </div>
	  <div class="header_wrap">
        <div class="user_login">
          <ul>
            <li class="dropdown dropdown-toggle"> <a href="#" class="dropdown-toggle" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false"><i class="fa fa-user-circle" aria-hidden="true"></i> Jhon Anderson <i class="fa fa-angle-down" aria-hidden="true"></i></a>
              <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                <li><a class="dropdown-item" href="profile-settings.html">Profile Settings</a></li>
                <li><a class="dropdown-item" href="my-vehicles.html">My Vehicles</a></li>
                <li><a class="dropdown-item" href="post-vehicle.html">Post a Vehicle</a></li>
                <li><a class="dropdown-item" href="#">Sign Out</a></li>
              </ul>
            </li>
          </ul>
        </div>
        <div class="header_search">
          <div id="search_toggle"><i class="fa fa-search" aria-hidden="true"></i></div>
          <form action="#" method="get" id="header-search-form">
            <input type="text" placeholder="Search..." class="form-control">
            <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
          </form>
        </div>
      </div>
	  </div>
	  
	  <div class="col-2 col-md-4 right">
		<div class="user_login mobile">
          <ul>
            <li class="dropdown"> <a href="#" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false"><i class="fa fa-user-circle" aria-hidden="true"></i></a>
              <ul class="dropdown-menu">
                <li><a href="profile-settings.html">Profile Settings</a></li>
                <li><a href="my-vehicles.html">My Vehicles</a></li>
                <li><a href="post-vehicle.html">Post a Vehicle</a></li>
                <li><a href="#">Sign Out</a></li>
              </ul>
            </li>
          </ul>
        </div>
	  </div>
	  
	  </div>
	  <!-- mobile-view -->
	
    </div>
  </nav>
  <!-- Navigation end --> 
  
</header>
<!-- /Header --> 

<!-- Listing-detail-header -->
<section class="listing_detail_header">
  <div class="container">
    <div class="listing_detail_head white-text div_zindex row">
      <div class="col-md-9">
        <h2>Nome Auto</h2>
        <!-- <div class="car-location"><span><i class="fa fa-map-marker" aria-hidden="true"></i> 12250 F Garvey Ave South West Covina, CA 91791</span></div>
        <div class="add_compare">
          <!-- <div class="checkbox">
            <input value="" id="compare14" type="checkbox">
            <label for="compare14">Aggiungi al confronto</label>
          </div> 
          <div class="share_vehicle">
            <p>Condividi: <a href="#"><i class="fa fa-facebook-square" aria-hidden="true"></i></a> <a href="#"><i class="fa fa-twitter-square" aria-hidden="true"></i></a> <a href="#"><i class="fa fa-linkedin-square" aria-hidden="true"></i></a> <a href="#"></a> </p>
          </div>
        </div> -->
      </div> 
      <div class="col-md-3">
        <div class="price_info">
          <p>$90,000</p>
          <p class="old_price">$95,000</p>
        </div>
      </div>
    </div>
  </div>
  <div class="dark-overlay"></div>
</section>
<!-- /Listing-detail-header -->

<section class="listing_other_info secondary-bg">
  <div class="container">
    <div id="filter_toggle" class="search_other"> <i class="fa fa-filter" aria-hidden="true"></i> Cerca Auto </div>
    <div id="other_info"><i class="fa fa-info-circle" aria-hidden="true"></i></div>
    <div id="info_toggle">
      <button type="button" data-bs-toggle="modal" data-bs-target="#schedule"> <i class="fa fa-car" aria-hidden="true"></i> Prenota un test drive </button>
      <button type="button" data-bs-toggle="modal" data-bs-target="#make_offer"> <i class="fa fa-money" aria-hidden="true"></i> Fai un'offerta </button>
      <button type="button" data-bs-toggle="modal" data-bs-target="#email_friend"> <i class="fa fa-envelope" aria-hidden="true"></i> Invia ad un amico </button>
      <button type="button" data-bs-toggle="modal" data-bs-target="#more_info"> <i class="fa fa-file-text-o" aria-hidden="true"></i> Richiedi maggiori informazioni </button>
    </div>
  </div>
</section>

<!-- Filter-Form -->
<section id="filter_form" class="inner-filter gray-bg">
  <div class="container">
    <h3>Trova l'auto dei tuoi sogni <span>(Ricerca facile da qui)</span></h3>
    
      <form action="ricerca-auto" method="get">
	  <div class="row">
        <div class="form-group col-md-3 col-sm-6 black_input">
          <div class="select">
            <select class="form-control" name="marca" id="marca" >
                  <option value="">Seleziona la marca</option>
                  <option value="mercedes">mercedes</option>
                  <option value="peugeot">peugeot</option>
                  <option value="fiat">fiat</option>
                  <option value="toyota">toyota</option>
                  <option value="ford">ford</option>
            </select>      
           </div>
        </div>
        <div class="form-group col-md-3 col-sm-6 black_input">
          <div class="select">
            <select class="form-control" name="modello" id="modello">
            	<option value="">Seleziona il modello</option>
                <option value="punto">punto</option>
                <option value="Fiesta">Fiesta</option>
                <option value="Hybrid">Hybrid</option>
                <option value="classe c">classe c</option>
             </select>
          </div>
        </div>
        <div class="form-group col-md-3 col-sm-6 black_input">
          <div class="select">
            <select class="form-control" name="prezzo" id="prezzo">
               	<option value="">prezzo fino a</option>
                <option value="10000">10000</option>
                <option value="20000">20000</option>
           		<option value="100000">100000</option>
            </select>
          </div>
        </div>
        <!--  <div class="form-group col-md-3 col-sm-6 black_input">
          <div class="select">
            <select class="form-control">
              <option>Anno del modello </option>
              <option>2016</option>
              <option>2015</option>
              <option>2014</option>
            </select>
          </div>
        </div> 
        <div class="form-group col-md-6 col-sm-6 black_input">
          <label class="form-label">Fascia di prezzo (€)</label>
          <input id="price_range" type="text" class="span2" value="" data-slider-min="50" data-slider-max="6000" data-slider-step="5" data-slider-value="[1000,5000]"/>
        </div>
        <div class="form-group col-md-3 col-sm-6 black_input">
          <div class="select">
            <select class="form-control">
              <option>Tipo di auto </option>
              <option>Auto nuova</option>
              <option>Auto usata</option>
            </select>
          </div>
        </div> -->
        <div class="form-group col-md-3 col-sm-6">
          <button type="submit" class="btn btn-block"><i class="fa fa-search" aria-hidden="true"></i> Cerca auto </button>
        </div>
		</div>
      </form>
    
  </div>
</section>
<!-- /Filter-Form --> 

<!--Listing-detail-->
<section class="listing-detail">
  <div class="container">
    <div class="row">
      <div class="col-md-9">
        <div class="listing_images">
          <div id="listing_images_slider" class="listing_images_slider">
            <div><img src="assets/images/900x560.jpg" alt="image"></div>
            <div><img src="assets/images/900x560.jpg" alt="image"></div>
            <div><img src="assets/images/900x560.jpg" alt="image"></div>
            <div><img src="assets/images/900x560.jpg" alt="image"></div>
            <div><img src="assets/images/900x560.jpg" alt="image"></div>
            <div><img src="assets/images/900x560.jpg" alt="image"></div>
            <div><img src="assets/images/900x560.jpg" alt="image"></div>
            <div><img src="assets/images/900x560.jpg" alt="image"></div>
            <div><img src="assets/images/900x560.jpg" alt="image"></div>
          </div>
          <div id="listing_images_slider_nav" class="listing_images_slider_nav">
            <div><img src="assets/images/900x560.jpg" alt="image"></div>
            <div><img src="assets/images/900x560.jpg" alt="image"></div>
            <div><img src="assets/images/900x560.jpg" alt="image"></div>
            <div><img src="assets/images/900x560.jpg" alt="image"></div>
            <div><img src="assets/images/900x560.jpg" alt="image"></div>
            <div><img src="assets/images/900x560.jpg" alt="image"></div>
            <div><img src="assets/images/900x560.jpg" alt="image"></div>
            <div><img src="assets/images/900x560.jpg" alt="image"></div>
            <div><img src="assets/images/900x560.jpg" alt="image"></div>
          </div>
        </div>
        <div class="main_features">
          <ul>
            <li> <i class="fa fa-tachometer" aria-hidden="true"></i>
              <h5>13,000</h5>
              <p>Kilometri totali</p>
            </li>
            <li> <i class="fa fa-calendar" aria-hidden="true"></i>
              <h5>2010</h5>
              <p>Anno di riferimento</p>
            </li>
            <li> <i class="fa fa-cogs" aria-hidden="true"></i>
              <h5>Diesel</h5>
              <p>Tipo di carburante</p>
            </li>
            <li> <i class="fa fa-power-off" aria-hidden="true"></i>
              <h5>Automatica</h5>
              <p>Trasmissione</p>
            </li>
            <li> <i class="fa fa-superpowers" aria-hidden="true"></i>
              <h5>153KW</h5>
              <p>Motore</p>
            </li>
            <li> <i class="fa fa-user-plus" aria-hidden="true"></i>
              <h5>5</h5>
              <p>Posti a sedere</p>
            </li>
          </ul>
        </div>
        <div class="listing_more_info">
          <div class="listing_detail_wrap"> 
            <!-- Nav tabs -->
            <ul class="nav nav-tabs" id="myTab" role="tablist">
              <li class="nav-item" role="presentation"><a class="nav-link active" id="home-tab" data-bs-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Panoramica del veicolo </a></li>
              <li class="nav-item" role="presentation"><a class="nav-link" id="Technical-tab" data-bs-toggle="tab" href="#Technical" role="tab" aria-controls="Technical" aria-selected="true">Specifiche tecniche</a></li>
              <li class="nav-item" role="presentation"><a class="nav-link" id="Accessories-tab" data-bs-toggle="tab" href="#Accessories" role="tab" aria-controls="Accessories" aria-selected="true">Accessori</a></li>
            </ul>
            
            <!-- Tab panes -->
            <div class="tab-content" id="myTabContent"> 
              <!-- vehicle-overview -->
              <div role="tabpanel" class="tab-pane active" id="home" aria-labelledby="home-tab">
                <h4>Cos'è il Lorem Ipsum?</h4>
                <p>Ci sono molte varianti di passaggi di Lorem Ipsum disponibili, ma la maggior parte ha subito alterazioni in qualche forma, con umorismo iniettato, o parole casuali che non sembrano nemmeno lontanamente credibili. Se hai intenzione di usare un passaggio di Lorem Ipsum, devi essere sicuro che non ci sia nulla di imbarazzante nascosto in mezzo al testo. Tutti i generatori di Lorem Ipsum su Internet tendono a ripetere pezzi predefiniti come necessario, rendendo questo il primo vero generatore su Internet. Utilizza un dizionario di oltre 200 parole latine, combinato con una manciata di strutture di frasi modello, per generare Lorem Ipsum che sembra ragionevole.</p>
                <p>Lorem Ipsum è semplicemente il testo fittizio dell'industria della stampa e della composizione. Il Lorem Ipsum è stato il testo fittizio standard dell'industria fin dal 1500, quando uno stampatore sconosciuto prese una galea di caratteri e la strapazzò per fare un libro di campioni di caratteri. È sopravvissuto non solo a cinque secoli, ma anche al salto nella composizione elettronica, rimanendo essenzialmente invariato.</p>
                <h4>Cos'è il Lorem Ipsum?</h4>
                <p>Ci sono molte varianti di passaggi di Lorem Ipsum disponibili, ma la maggior parte ha subito alterazioni in qualche forma, con umorismo iniettato, o parole casuali che non sembrano nemmeno lontanamente credibili. Se hai intenzione di usare un passaggio di Lorem Ipsum, devi essere sicuro che non ci sia nulla di imbarazzante nascosto in mezzo al testo. Tutti i generatori di Lorem Ipsum su Internet tendono a ripetere pezzi predefiniti come necessario, rendendo questo il primo vero generatore su Internet. Utilizza un dizionario di oltre 200 parole latine, combinato con una manciata di strutture di frasi modello, per generare Lorem Ipsum che sembra ragionevole.</p>
              </div>
              
              <!-- Technical-Specification -->
              <div role="tabpanel" class="tab-pane" id="Technical" aria-labelledby="Technical-tab">
                <div class="table-responsive"> 
                  <!--Basic-Info-Table-->
                  <table>
                    <thead>
                      <tr>
                        <th colspan="2">INFORMAZIONI BASE</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>Anno del modello</td>
                        <td>2010</td>
                      </tr>
                      <tr>
                        <td>Numero di proprietari</td>
                        <td>4</td>
                      </tr>
                      <tr>
                        <td>Guidato da KM</td>
                        <td>30,000</td>
                      </tr>
                      <tr>
                        <td>Tipo di carburante</td>
                        <td>Diesel</td>
                      </tr>
                    </tbody>
                  </table>
                  
                  <!--Technical-Specification-Table-->
                  <table>
                    <thead>
                      <tr>
                        <th colspan="2">Specifiche tecniche</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>Tipo di motore</td>
                        <td>Motore diesel TDCI</td>
                      </tr>
                      <tr>
                        <td>Descrizione motore</td>
                        <td>1.5KW</td>
                      </tr>
                      <tr>
                        <td>Numero di cilindrata</td>
                        <td>4</td>
                      </tr>
                      <tr>
                        <td>Chilometraggio-Città</td>
                        <td>22.4kmpl</td>
                      </tr>
                      <tr>
                        <td>Chilometri-strada</td>
                        <td>25.83kmpl</td>
                      </tr>
                      <tr>
                        <td>Capacità del serbatoio del carburante</td>
                        <td>40 (Litri)</td>
                      </tr>
                      <tr>
                        <td>Capacità dei posti a sedere</td>
                        <td>5</td>
                      </tr>
                      <tr>
                        <td>Tipo di trasmissione</td>
                        <td>Manuale</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
              
              <!-- Accessories -->
              <div role="tabpanel" class="tab-pane" id="Accessories" aria-labelledby="Accessories-tab"> 
                <!--Accessories-->
                <table>
                  <thead>
                    <tr>
                      <th colspan="2">Accessori</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>Aria condizionata</td>
                      <td><i class="fa fa-check" aria-hidden="true"></i></td>
                    </tr>
                    <tr>
                      <td>Sistema frenante antibloccaggio</td>
                      <td><i class="fa fa-check" aria-hidden="true"></i></td>
                    </tr>
                    <tr>
                      <td>Servosterzo</td>
                      <td><i class="fa fa-check" aria-hidden="true"></i></td>
                    </tr>
                    <tr>
                      <td>Alzacristalli elettrici</td>
                      <td><i class="fa fa-check" aria-hidden="true"></i></td>
                    </tr>
                    <tr>
                      <td>Lettore CD</td>
                      <td><i class="fa fa-close" aria-hidden="true"></i></td>
                    </tr>
                    <tr>
                      <td>Sedili in pelle</td>
                      <td><i class="fa fa-check" aria-hidden="true"></i></td>
                    </tr>
                    <tr>
                      <td>Chiusura centralizzata</td>
                      <td><i class="fa fa-check" aria-hidden="true"></i></td>
                    </tr>
                    <tr>
                      <td>Serrature della porta di alimentazione</td>
                      <td><i class="fa fa-check" aria-hidden="true"></i></td>
                    </tr>
                    <tr>
                      <td>Assistente di frenata</td>
                      <td><i class="fa fa-check" aria-hidden="true"></i></td>
                    </tr>
                    <tr>
                      <td>Airbag conducente</td>
                      <td><i class="fa fa-check" aria-hidden="true"></i></td>
                    </tr>
                    <tr>
                      <td>Airbag del passeggero</td>
                      <td><i class="fa fa-check" aria-hidden="true"></i></td>
                    </tr>
                    <tr>
                      <td>Sensore d'urto</td>
                      <td><i class="fa fa-check" aria-hidden="true"></i></td>
                    </tr>
                    <tr>
                      <td>Avviso di controllo del motore</td>
                      <td><i class="fa fa-check" aria-hidden="true"></i></td>
                    </tr>
                    <tr>
                      <td>Fari automatici</td>
                      <td><i class="fa fa-check" aria-hidden="true"></i></td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
          
          <!--Vehicle-Video-->
        <!--   <div class="video_wrap">
            <h6>Guarda video </h6>
            <div class="video-box">
               <iframe class="mfp-iframe" src="https://www.youtube.com/embed/rqSoXtKMU3Q" allowfullscreen></iframe>
            </div>
        </div> -->
        
        
          <!--Comment-Form-->
         <!--   <div class="comment_form">
            <h6>Lasciare un commento</h6>
            <form action="#">
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Nome e cognome">
              </div>
              <div class="form-group">
                <input type="email" class="form-control" placeholder="Indirizzo e-mail">
              </div>
              <div class="form-group">
                <textarea rows="5" class="form-control" placeholder="Commenti"></textarea>
              </div>
              <div class="form-group">
                <input type="submit" class="btn" value="Invia commento">
              </div>
            </form>
          </div> -->
          <!--/Comment-Form--> 
          
        </div>
      </div> 
      
      <!--Side-Bar-->
      <aside class="col-md-3">
        <div class="sidebar_widget">
          <div class="widget_heading">
            <h5><i class="fa fa-calculator" aria-hidden="true"></i> Calcolatrice di finanziamento </h5>
          </div>
          <div class="financing_calculatoe">
            <form action="#" method="get">
              <div class="form-group">
                <label class="form-label">Prezzo dell'auto (€)</label>
                <input class="form-control" type="text">
              </div>
              <div class="form-group">
                <label class="form-label">Giù il prezzo (€)</label>
                <input class="form-control" type="text">
              </div>
              <div class="form-group">
                <label class="form-label">Tasso di interesse</label>
                <div class="select">
                  <select class="form-control select">
                    <option>12%</option>
                    <option>13%</option>
                    <option>14%</option>
                    <option>15%</option>
                    <option>16%</option>
                    <option>17%</option>
                  </select>
                </div>
              </div>
              <div class="form-group">
                <label class="form-label">Periodo in anni</label>
                <div class="select">
                  <select class="form-control">
                    <option>3 Anni</option>
                    <option>4 Anni</option>
                    <option>5 Anni</option>
                    <option>6 Anni</option>
                    <option>7 Anni</option>
                    <option>8 Anni</option>
                  </select>
                </div>
              </div>
              <div class="form-group">
                <button type="submit" class="btn btn-block">Calcola</button>
              </div>
            </form>
          </div>
        </div>
        <div class="sidebar_widget">
          <div class="widget_heading">
            <h5><i class="fa fa-address-card-o" aria-hidden="true"></i> Contatto del rivenditore </h5>
          </div>
          <div class="dealer_detail"> <img src="assets/images/90x90.jpg" alt="image">
            <p><span>Name:</span> Nome del rivenditore</p>
            <p><span>Email:</span> contact@example.com</p>
            <p><span>Phone:</span> +61-1234-5678-09</p>
            <a href="#" class="btn btn-xs">Visualizza profilo</a> </div>
        </div>
        <div class="sidebar_widget">
          <div class="widget_heading">
            <h5><i class="fa fa-envelope" aria-hidden="true"></i> Messaggio al concessionario</h5>
          </div>
          <form action="#">
            <div class="form-group">
              <input type="text" class="form-control" placeholder="Name">
            </div>
            <div class="form-group">
              <input type="email" class="form-control" placeholder="Email">
            </div>
            <div class="form-group">
              <textarea rows="4" class="form-control" placeholder="Message"></textarea>
            </div>
            <div class="form-group">
              <input type="submit" value="Send Message" class="btn btn-block">
            </div>
          </form>
        </div>
      </aside>
      <!--/Side-Bar--> 
      
    </div>
    <div class="space-20"></div>
    <div class="divider"></div>
    
    <!--Similar-Cars-->
    <div class="similar_cars">
      <h3>Auto simili</h3>
      <div class="row">
        <div class="col-md-3 grid_listing">
          <div class="product-listing-m gray-bg">
            <div class="product-listing-img"> <a href="#"><img src="assets/images/600x380.jpg" class="img-fluid" alt="image" /> </a>
              <div class="label_icon">Nuova</div>
              <div class="compare_item">
                <div class="checkbox">
                  <input type="checkbox" value="" id="compare13">
                  <label for="compare13">Confronta</label>
                </div>
              </div>
            </div>
            <div class="product-listing-content">
              <h5><a href="#">Nome auto</a></h5>
              <p class="list-price">$89,000</p>
              <div class="car-location"><span><i class="fa fa-map-marker" aria-hidden="true"></i> Colorado, USA</span></div>
              <ul class="features_list">
                <li><i class="fa fa-road" aria-hidden="true"></i>35,000 km</li>
                <li><i class="fa fa-tachometer" aria-hidden="true"></i>30.000 miles</li>
                <li><i class="fa fa-calendar" aria-hidden="true"></i>2005 model</li>
                <li><i class="fa fa-car" aria-hidden="true"></i>Diesel</li>
              </ul>
            </div>
          </div>
        </div>
        <div class="col-md-3 grid_listing">
          <div class="product-listing-m gray-bg">
            <div class="product-listing-img"> <a href="#"><img src="assets/images/600x380.jpg" class="img-fluid" alt="image" /> </a>
              <div class="label_icon">Nuova</div>
              <div class="compare_item">
                <div class="checkbox">
                  <input type="checkbox" value="" id="compare20">
                  <label for="compare20">Confronta</label>
                </div>
              </div>
            </div>
            <div class="product-listing-content">
              <h5><a href="#">Nome auto</a></h5>
              <p class="list-price">$89,000</p>
              <div class="car-location"><span><i class="fa fa-map-marker" aria-hidden="true"></i> Colorado, USA</span></div>
              <ul class="features_list">
                <li><i class="fa fa-road" aria-hidden="true"></i>35,000 km</li>
                <li><i class="fa fa-tachometer" aria-hidden="true"></i>30.000 miles</li>
                <li><i class="fa fa-calendar" aria-hidden="true"></i>2005 model</li>
                <li><i class="fa fa-car" aria-hidden="true"></i>Diesel</li>
              </ul>
            </div>
          </div>
        </div>
        <div class="col-md-3 grid_listing">
          <div class="product-listing-m gray-bg">
            <div class="product-listing-img"> <a href="#"><img src="assets/images/600x380.jpg" class="img-fluid" alt="image" /> </a>
              <div class="label_icon">Usata</div>
              <div class="compare_item">
                <div class="checkbox">
                  <input type="checkbox" value="" id="compare15">
                  <label for="compare15">Confronta</label>
                </div>
              </div>
            </div>
            <div class="product-listing-content">
              <h5><a href="#">Nome auto</a></h5>
              <p class="list-price">$89,000</p>
              <div class="car-location"><span><i class="fa fa-map-marker" aria-hidden="true"></i> Colorado, USA</span></div>
              <ul class="features_list">
                <li><i class="fa fa-road" aria-hidden="true"></i>35,000 km</li>
                <li><i class="fa fa-tachometer" aria-hidden="true"></i>30.000 miles</li>
                <li><i class="fa fa-calendar" aria-hidden="true"></i>2005 model</li>
                <li><i class="fa fa-car" aria-hidden="true"></i>Diesel</li>
              </ul>
            </div>
          </div>
        </div>
        <div class="col-md-3 grid_listing">
          <div class="product-listing-m gray-bg">
            <div class="product-listing-img"> <a href="#"><img src="assets/images/600x380.jpg" class="img-fluid" alt="image" /> </a>
              <div class="label_icon">Usata</div>
              <div class="compare_item">
                <div class="checkbox">
                  <input type="checkbox" value="" id="compare16">
                  <label for="compare16">Confronta</label>
                </div>
              </div>
            </div>
            <div class="product-listing-content">
              <h5><a href="#">Nome auto</a></h5>
              <p class="list-price">$89,000</p>
              <div class="car-location"><span><i class="fa fa-map-marker" aria-hidden="true"></i> Colorado, USA</span></div>
              <ul class="features_list">
                <li><i class="fa fa-road" aria-hidden="true"></i>35,000 km</li>
                <li><i class="fa fa-tachometer" aria-hidden="true"></i>30.000 miles</li>
                <li><i class="fa fa-calendar" aria-hidden="true"></i>2005 model</li>
                <li><i class="fa fa-car" aria-hidden="true"></i>Diesel</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--/Similar-Cars--> 
    
  </div>
</section>
<!--/Listing-detail--> 

<!--Brands-->
<section class="brand-section gray-bg">
  <div class="container">
    <div class="brand-hadding">
      <h4>Le pi� vendute</h4>
    </div>
    <div class="brand-logo-list">
      <div id="popular_brands">
        <div><a href="#" class="disabled"><img src="assets/images/loghi/logoford.png" class="img-fluid" alt="image"></a></div>
        <div><a href="#" class="disabled"><img src="assets/images/loghi/logoaudi.png" class="img-fluid" alt="image"></a></div>
        <div><a href="#" class="disabled"><img src="assets/images/loghi/logomercedes.png" class="img-fluid" alt="image"></a></div>
        <div><a href="#" class="disabled"><img src="assets/images/loghi/logovolkswagen.png" class="img-fluid" alt="image"></a></div>
        <div><a href="#" class="disabled"><img src="assets/images/loghi/logopeugeot.png" class="img-fluid" alt="image"></a></div>
      </div>
    </div>
  </div>
</section>
<!-- /Brands--> 

<!--Footer -->
<footer>
  <div class="footer-top">
    <div class="container">
      <div class="row">
        <div class="col-md-3 col-sm-6">
          <h6>annunci/modelli piu visitati/venduti</h6>
          <ul>
            <li><a href="#" class="disabled">Marca dell'auto</a></li>
            <li><a href="#" class="disabled">Marca dell'auto </a></li>
            <li><a href="#" class="disabled">Marca dell'auto </a></li>
            <li><a href="#" class="disabled">Marca dell'auto </a></li>
            <li><a href="#" class="disabled">Marca dell'auto </a></li>
          </ul>
        </div>
        <div class="col-md-3 col-sm-6">
          <h6>Chi siamo</h6>
          <ul>
            <li><a href="#" class="disabled">Privacy</a></li>
            <li><a href="#" class="disabled">Auto ibride</a></li>
            <li><a href="#" class="disabled">Cookies</a></li>
            <li><a href="#" class="disabled">Marchi</a></li>
            <li><a href="#" class="disabled">Condizioni d'uso</a></li>
          </ul>
        </div>
        <div class="col-md-3 col-sm-6">
          <h6>Link utili</h6>
          <ul>
            <li><a href="#" class="disabled">I nostri partner</a></li>
            <li><a href="#" class="disabled">Carriere</a></li>
            <li><a href="#" class="disabled">Mappa del sito</a></li>
            <li><a href="#" class="disabled">Investitori</a></li>
            <li><a href="#" class="disabled">Richiedi un preventivo</a></li>
          </ul>
        </div>
        <div class="col-md-3 col-sm-6">
          <h6>Iscriviti alla newsletter</h6>
          <div class="newsletter-form">
            <form action="#">
              <div class="form-group">
                <a class="disabled" ><input type="email" class="form-control newsletter-input disabled" required placeholder="Inserisci l'indirizzo e-mail" /></a>
              </div>
              <a class="disabled" ><button type="submit" class="btn btn-block">Iscriviti <span class="angle_arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></span></button></a>
            </form>
            <p class="subscribed-text">Inviamo ogni settimana grandi offerte e le ultime notizie sull'auto ai nostri utenti iscritti.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="footer-bottom">
    <div class="container">
      <div class="row">
        
        <div class="col-md-6">
          <p class="copy-right">Copyright &copy; 2021 MacAuto. Tutti i diritti riservati</p>
        </div>
		<div class="col-md-6 text-right">
          <div class="footer_widget">
            <p>Scarica l'app</p>
            <ul>
              <li><a href="#" class="disabled"><i class="fa fa-android" aria-hidden="true"></i></a></li>
              <li><a href="#" class="disabled"><i class="fa fa-apple" aria-hidden="true"></i></a></li>
            </ul>
          </div>
          <div class="footer_widget">
            <p>Social:</p>
            <ul>
              <li><a href="#" class="disabled"><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
              <li><a href="#" class="disabled"><i class="fa fa-twitter-square" aria-hidden="true"></i></a></li>
              <li><a href="#" class="disabled"><i class="fa fa-linkedin-square" aria-hidden="true"></i></a></li>
              <li><a href="#" class= disabled><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</footer>
<!-- /Footer--> 

<!--Back to top-->
<div id="back-top" class="back-top"> <a href="#top"><i class="fa fa-angle-up" aria-hidden="true"></i> </a> </div>
<!--/Back to top--> 

<!--Schedule-Test-Drive -->
<div class="modal fade" id="schedule">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h3 class="modal-title">Prenota un test drive</h3>
      </div>
      <div class="modal-body">
        <form action="#" method="get">
          <div class="form-group">
            <input type="text" class="form-control" placeholder="Full Name">
          </div>
          <div class="form-group">
            <input type="email" class="form-control" placeholder="Email Address">
          </div>
          <div class="form-group">
            <input type="text" class="form-control" placeholder="Phone Number">
          </div>
          <div class="form-group">
            <input type="text" class="form-control" placeholder="Best Time (00:00am)">
          </div>
          <div class="form-group">
            <input type="text" class="form-control" placeholder="Best Date (dd/mm/yyyy)">
          </div>
          <div class="form-group">
            <textarea rows="4" class="form-control" placeholder="Message"></textarea>
          </div>
          <div class="form-group">
            <input type="submit" value="Submit Query" class="btn btn-block">
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<!--/Schedule-Test-Drive --> 

<!--Make-Offer -->
<div class="modal fade" id="make_offer">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h3 class="modal-title">Fai un'offerta</h3>
      </div>
      <div class="modal-body">
        <form action="#" method="get">
          <div class="form-group">
            <input type="text" class="form-control" placeholder="Full Name">
          </div>
          <div class="form-group">
            <input type="email" class="form-control" placeholder="Email Address">
          </div>
          <div class="form-group">
            <input type="text" class="form-control" placeholder="Phone Number">
          </div>
          <div class="form-group">
            <input type="text" class="form-control" placeholder="Offer Price">
          </div>
          <div class="form-group">
            <textarea class="form-control" placeholder="Message"></textarea>
          </div>
          <div class="form-group">
            <input type="submit" value="Submit Query" class="btn btn-block">
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<!--/Make-Offer --> 

<!--Email-to-Friend -->
<div class="modal fade" id="email_friend">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h3 class="modal-title">Inviare una mail ad un amico</h3>
      </div>
      <div class="modal-body">
        <form action="#" method="get">
          <div class="form-group">
            <input type="text" class="form-control" placeholder="Your Name">
          </div>
          <div class="form-group">
            <input type="email" class="form-control" placeholder="Your Email Address">
          </div>
          <div class="form-group">
            <input type="email" class="form-control" placeholder="Friend Email Address">
          </div>
          <div class="form-group">
            <textarea rows="4" class="form-control" placeholder="Message"></textarea>
          </div>
          <div class="form-group">
            <input type="submit" value="Submit Query" class="btn btn-block">
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<!--/Email-to-Friend --> 

<!--Request-More-Info -->
<div class="modal fade" id="more_info">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h3 class="modal-title">Richiedi più informazioni</h3>
      </div>
      <div class="modal-body">
        <form action="#" method="get">
          <div class="form-group">
            <input type="text" class="form-control" placeholder="Full Name">
          </div>
          <div class="form-group">
            <input type="email" class="form-control" placeholder="Email Address">
          </div>
          <div class="form-group">
            <input type="text" class="form-control" placeholder="Phone Number">
          </div>
          <div class="form-group">
            <textarea rows="4" class="form-control" placeholder="Message"></textarea>
          </div>
          <div class="form-group">
            <input type="submit" value="Submit Query" class="btn btn-block">
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<!--/Request-More-Info --> 

<!--Login-Form -->
<div class="modal fade" id="loginform">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
    	
      <div class="modal-header">
        <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h3 class="modal-title">Login</h3>
      </div>
      <div class="modal-body">
        
          <div class="login_wrap">
		  <div class="mx-auto">
            <div class="text-center">
              <form action="#" method="get">
                <div class="form-group">
                  <input type="text" class="form-control" placeholder="Nome utente o Indirizzo email">
                </div>
                <div class="form-group">
                  <input type="password" class="form-control" placeholder="Password*">
                </div>
                <div class="form-group checkbox">
                  <input type="checkbox" id="remember">
                  <label for="remember">Ricordati di me</label>
                </div>
                <div class="form-group">
                  <input type="submit" value="Login" class="btn btn-block">
                </div>
              </form>
            </div>
             <!-- <div class="col-md-6 col-sm-6">
              <h6 class="gray_text">Accedi in modo veloce</h6>
              <a href="#" class="btn btn-block facebook-btn"><i class="fa fa-facebook-square" aria-hidden="true"></i> Accedi con Facebook</a> <a href="#" class="btn btn-block twitter-btn"><i class="fa fa-twitter-square" aria-hidden="true"></i> LIscriviti con Twitter</a> <a href="#" class="btn btn-block googleplus-btn"><i class="fa fa-google-plus-square" aria-hidden="true"></i> Iscriviti con Google+</a> </div>
            <div class="mid_divider"></div> -->
          </div>
        </div>
      </div>
      <div class="modal-footer text-center">
        <p>Non hai un'account? <a href="#signupform" data-bs-toggle="modal" data-bs-dismiss="modal">Iscriviti qui</a></br>
        <!--<a href="#forgotpassword" data-bs-toggle="modal" data-bs-dismiss="modal">Hai dimenticato la password?</a></p> -->
      </div>
    </div>
  </div>
</div>

<!--/Login-Form --> 

<!--Register-Form -->
<div class="modal fade" id="signupform">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h3 class="modal-title">Iscriviti</h3>
      </div>
      <div class="modal-body">
        
          <div class="signup_wrap">
		  <div class="row">
            <div class="text-center">
              <form action="#" method="get">
                <div class="form-group">
                  <input type="text" class="form-control" placeholder="Nome e cognome">
                </div>
                <div class="form-group">
                  <input type="email" class="form-control" placeholder="Indirizzo Email">
                </div>
                <div class="form-group">
                  <input type="password" class="form-control" placeholder="Password">
                </div>
                <div class="form-group">
                  <input type="password" class="form-control" placeholder="Conferma password">
                </div>
                <div class="form-group checkbox">
                  <input type="checkbox" id="terms_agree">
                  <label for="terms_agree">Sono d'accordo con <a href="#">Termini e Condizioni</a></label>
                </div>
                <div class="form-group">
                  <input type="submit" value="Registrati" class="btn btn-block">
                </div>
              </form>
            </div>
            <!--<div class="col-md-6 col-sm-6">
              <h6 class="gray_text">Accedi in modo veloce</h6>
              <a href="#" class="btn btn-block facebook-btn"><i class="fa fa-facebook-square" aria-hidden="true"></i> Iscriviti con Facebook</a> <a href="#" class="btn btn-block twitter-btn"><i class="fa fa-twitter-square" aria-hidden="true"></i> Iscriviti con Twetter</a> <a href="#" class="btn btn-block googleplus-btn"><i class="fa fa-google-plus-square" aria-hidden="true"></i> Iscriviti con Google+</a> </div>
            <div class="mid_divider"></div>
          </div> -->
        </div>
      </div>
      <div class="modal-footer text-center">
        <p>Hai gi� un account? <a href="#loginform" data-bs-toggle="modal" data-bs-dismiss="modal">Accedi qui</a></p>
      </div>
    </div>
  </div>
</div>
<!--/Register-Form --> 

<!--Forgot-password-Form -->
<div class="modal fade" id="forgotpassword">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">

        <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h3 class="modal-title">Recupero password</h3>
      </div>
      <div class="modal-body">
        <div class="text-center">
          <div class="forgotpassword_wrap">
            <div class="col-md-12">
              <form action="#" method="get">
                <div class="form-group">
                  <input type="email" class="form-control" placeholder="Your Email address*">
                </div>
                <div class="form-group">
                  <input type="submit" value="Reset My Password" class="btn btn-block">
                </div>
              </form>
              <!-- <div class="text-center">
                <p class="gray_text">Per ragioni di sicurezza non conserviamo la tua password. La tua password sar� resettata e te ne sar� inviata una nuova.</p>
                <p><a href="#loginform" data-bs-toggle="modal" data-bs-dismiss="modal"><i class="fa fa-angle-double-left" aria-hidden="true"></i> Torna al Login</a></p>
              </div> -->
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!--/Forgot-password-Form -->

<!-- Scripts --> 
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/popper.min.js"></script> 
<script src="assets/js/bootstrap.min.js"></script> 
<script src="assets/js/interface.js"></script> 
<!--bootstrap-slider-JS--> 
<script src="assets/js/bootstrap-slider.min.js"></script> 
<!--Slider-JS--> 
<script src="assets/js/slick.min.js"></script> 
<script src="assets/js/owl.carousel.min.js"></script>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %> <!-- non ignora l'expression language -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
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
<title>MacAuto - Responsive Car Dealer HTML5 Template</title>
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
<body class="listing-classic">

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
              <p class="uppercase_text">Per l'assistenza, inviateci una mail: </p>
              <a href="mailto:info@example.com">info@example.com</a> </div>
            <div class="header_widgets">
              <div class="circle_icon"> <i class="fa fa-phone" aria-hidden="true"></i> </div>
              <p class="uppercase_text">Assistenza telefonica Chiamaci: </p>
              <a href="tel:61-1234-5678-09">+61-1234-5678-9</a> </div>
            <div class="social-follow">
              <ul>
                <li><a href="#"><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-twitter-square" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-linkedin-square" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
              </ul>
            </div>
            <div class="login_btn"> <a href="#loginform" class="btn btn-xs uppercase" data-bs-toggle="modal" data-bs-dismiss="modal">Accedi/Registrati</a> </div>
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
          <li class="dropdown"><a href="#" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">Home</a>
          	 <ul class="dropdown-menu">
              <li><a href="index-2.html">Home Page 2</a></li>
            </ul>
          </li>
          <li><a href="about-us.html">Chi siamo</a></li>
          <li class="dropdown"><a href="#" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">Catalogo</a>
            <ul class="dropdown-menu">
              <li><a href="listing-classic.html">Stile Classico</a></li>
              <li><a href="listing-detail-2.html">Dettaglio Stile</a></li>
            </ul>
          </li>
          <li class="dropdown"><a href="#" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">Pagine</a>
            <ul class="dropdown-menu">
              <li><a href="services.html">Servizi</a></li>
              <li><a href="contact-us.html">Contattaci</a></li>
              <li><a href="compare.html">Confronta i veicoli</a></li>
              <li><a href="404.html">404 Error</a></li>
            </ul>
          </li>
	  <div class="header_wrap">
        <div class="user_login">
          <ul>
            <li class="dropdown dropdown-toggle"> <a href="#" class="dropdown-toggle" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false"><i class="fa fa-user-circle" aria-hidden="true"></i> Jhon Anderson <i class="fa fa-angle-down" aria-hidden="true"></i></a>
              <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                <li><a class="dropdown-item" href="profile-settings.html">Impostazioni del profilo</a></li>
                <li><a class="dropdown-item" href="my-vehicles.html">I Miei Veicoli</a></li>
                <li><a class="dropdown-item" href="post-vehicle.html">Posta un veicolo</a></li>
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
              <li><a href="index-2.html">Home Page 2</a></li>
            </ul>
          </li>
          <li><a href="about-us.html">Chi siamo</a></li>
          <li class="dropdown"><a href="#" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">Cataloghi</a>
            <ul class="dropdown-menu">
              <li><a href="listing-classic.html">Stile Classico</a></li>
              <li><a href="listing-detail-2.html">Dettaglio stile</a></li>
            </ul>
          </li>
          <li class="dropdown"><a href="#" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">Pagine</a>
            <ul class="dropdown-menu">
              <li><a href="services.html">Servizi</a></li>
              <li><a href="contact-us.html">Contattaci</a></li>
              <li><a href="compare.html">Confronta i veicoli</a></li>
              <li><a href="404.html">404 Error</a></li>
            </ul>
      </div>
	  <div class="header_wrap">
        <div class="user_login">
          <ul>
            <li class="dropdown dropdown-toggle"> <a href="#" class="dropdown-toggle" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false"><i class="fa fa-user-circle" aria-hidden="true"></i> Jhon Anderson <i class="fa fa-angle-down" aria-hidden="true"></i></a>
              <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                <li><a class="dropdown-item" href="profile-settings.html">Impostazioni del profilo</a></li>
                <li><a class="dropdown-item" href="my-vehicles.html">I Miei Veicoli</a></li>
                <li><a class="dropdown-item" href="post-vehicle.html">Posta un auto</a></li>
                <li><a class="dropdown-item" href="#">Firma fuori</a></li>
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
                <li><a href="profile-settings.html">Impostazioni del profilo</a></li>
                <li><a href="my-vehicles.html">I Miei Veicoli</a></li>
                <li><a href="post-vehicle.html">Posta un auto</a></li>
                <li><a href="#">Firma fuori</a></li>
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

<!--Page Header-->
<section class="page-header listing_page">
  <div class="container">
    <div class="page-header_wrap">
      <div class="page-heading">
        <h1>Lista auto</h1>
      </div>
      <ul class="coustom-breadcrumb">
        <li><a href="#">Home</a></li>
        <li>Lista auto</li>
      </ul>
    </div>
  </div>
  <!-- Dark Overlay-->
  <div class="dark-overlay"></div>
</section>
<!-- /Page Header--> 

<!--Listing-->
<section class="listing-page">
  <div class="container">
    <div class="row">
      <div class="col-md-9 col-md-push-3">
	  <div class="mobile_search">
		 <div class="sidebar_widget">
          <div class="widget_heading">
            <h5><i class="fa fa-filter" aria-hidden="true"></i> Trova l'auto dei tuoi sogni </h5>
          </div>
          <div class="sidebar_filter">
            <form action="#" method="get">
              <div class="form-group select">
                <select class="form-control">
                  <option>Seleziona la posizione</option>
                  <option>Location 1</option>
                  <option>Location 2</option>
                  <option>Location 3</option>
                  <option>Location 4</option>
                </select>
              </div>
              <div class="form-group select">
                <select class="form-control">
                  <option>Seleziona Marca</option>
                  <option>Brand 1</option>
                  <option>Brand 2</option>
                  <option>Brand 3</option>
                  <option>Brand 4</option>
                </select>
              </div>
              <div class="form-group select">
                <select class="form-control">
                  <option>Seleziona Modello</option>
                  <option>Series 1</option>
                  <option>Series 2</option>
                  <option>Series 3</option>
                  <option>Series 4</option>
                </select>
              </div>
              <div class="form-group select">
                <select class="form-control">
                  <option>Anno del modello </option>
                  <option>2016</option>
                  <option>2015</option>
                  <option>2014</option>
                  <option>2013</option>
                </select>
              </div>
              
              <div class="form-group">
                  <label class="form-label">Fascia di prezzo ($)</label>
                  <input id="price_range1" type="text" class="span2" value="" data-slider-min="50" data-slider-max="6000" data-slider-step="5" data-slider-value="[1000,5000]"/>
              </div>
              <div class="form-group select">
                <select class="form-control">
                  <option>Tipo macchina </option>
                  <option>Auto nuova</option>
                  <option>Auto usata</option>
                </select>
              </div>
              <div class="form-group">
                <button type="submit" class="btn btn-block"><i class="fa fa-search" aria-hidden="true"></i> Search Car</button>
              </div>
            </form>
          </div>
        </div>
	   </div>
        <div class="result-sorting-wrapper">
          <div class="sorting-count">
            <p>1 - 8 <span>di 50 annunci</span></p>
          </div>
          <div class="result-sorting-by">
            <p>Ordina per:</p>
            <form action="#" method="post">
              <div class="form-group select sorting-select">
                <select class="form-control ">
                  <option>Prezzo (dal più basso al più alto)</option>
                  <option>$100 to $500</option>
                  <option>$500 to $1000</option>
                  <option>$1000 to $1500</option>
                  <option>$1500 to $2000</option>
                </select>
              </div>
            </form>
          </div>
        </div>
       	<c:if test="${not empty annunci}">
			<c:forEach items="${annunci}" var="annuncio">
	        <div class="product-listing-m gray-bg">
	        <c:forEach items="${annuncio.foto}" var="foto">
	        <c:if test="${foto.principale}">
	        <div class="product-listing-img"><img src="${foto.url}" class="img-fluid" alt="image">
	            <div class="label_icon">Nuovo</div>
<!-- 	            <div class="compare_item"> -->
<!-- 	              <div class="checkbox"> -->
<!-- 	                <input type="checkbox" value="" id="compare22"> -->
<!-- 	                <label for="compare22">Confronta</label> -->
<!-- 	              </div> -->
<!-- 	            </div> -->
	          </div>
	         </c:if>
	        </c:forEach>
	         

	          <div class="product-listing-content">
	            <h5>${annuncio.titolo}</h5>
	            <p class="list-price">${annuncio.automobile.prezzo}</p>
	            <ul>
	              <li><i class="fa fa-road" aria-hidden="true"></i>${annucio.automobile.km}</li>
	              <li><i class="fa fa-tachometer" aria-hidden="true"></i>${annuncio.automobile.anno}</li>
	              <li><i class="fa fa-user" aria-hidden="true"></i>${annuncio.automobile.numeroPorte}</li>
<!-- 	              <li><i class="fa fa-calendar" aria-hidden="true"></i>2005 model</li> -->
<!-- 	              <li><i class="fa fa-car" aria-hidden="true"></i>Diesel</li> -->
<!-- 	              <li><i class="fa fa-superpowers" aria-hidden="true"></i>143 kW</li> -->
	            </ul>
	          	<form action="dettaglio-annuncio" method="get">
	            <button type="submit" class="btn">Visualizza Dettagli <span class="angle_arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></span></button>
	            <!-- div class="car-location"><span><i class="fa fa-map-marker" aria-hidden="true"></i> Colorado, USA</span></div> -->
	          	</form>
	          </div>
	        </div>
	        </c:forEach>
		</c:if>
 
	
       <!-- <div class="product-listing-m gray-bg">
          <div class="product-listing-img"> <a href="#"><img src="assets/images/600x380.jpg" class="img-fluid" alt="image" /> </a>
            <div class="label_icon">Nuovo</div>
            <div class="compare_item">
              <div class="checkbox">
                <input type="checkbox" value="" id="compare23">
                <label for="compare23">Confronta</label>
              </div>
            </div>
          </div>
          <div class="product-listing-content">
            <h5><a href="#">Testo del nome dell'auto</a></h5>
            <p class="list-price">$90,000</p>
            <ul>
              <li><i class="fa fa-road" aria-hidden="true"></i>0,000 km</li>
              <li><i class="fa fa-tachometer" aria-hidden="true"></i>30.000 miles</li>
              <li><i class="fa fa-user" aria-hidden="true"></i>5 seats</li>
              <li><i class="fa fa-calendar" aria-hidden="true"></i>2005 model</li>
              <li><i class="fa fa-car" aria-hidden="true"></i>Diesel</li>
              <li><i class="fa fa-superpowers" aria-hidden="true"></i>143 kW</li>
            </ul>
            <a href="#" class="btn">Visualizza Dettagli <span class="angle_arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
            <div class="car-location"><span><i class="fa fa-map-marker" aria-hidden="true"></i> Colorado, USA</span></div>
          </div>
        </div>
        <div class="product-listing-m gray-bg">
          <div class="product-listing-img"> <a href="#"><img src="assets/images/600x380.jpg" class="img-fluid" alt="image" /> </a>
            <div class="label_icon">Usata</div>
            <div class="compare_item">
              <div class="checkbox">
                <input type="checkbox" value="" id="compare24">
                <label for="compare24">Confronta</label>
              </div>
            </div>
          </div>
          <div class="product-listing-content">
            <h5><a href="#">Testo del nome dell'auto</a></h5>
            <p class="list-price">$90,000</p>
            <ul>
              <li><i class="fa fa-road" aria-hidden="true"></i>0,000 km</li>
              <li><i class="fa fa-tachometer" aria-hidden="true"></i>30.000 miles</li>
              <li><i class="fa fa-user" aria-hidden="true"></i>5 seats</li>
              <li><i class="fa fa-calendar" aria-hidden="true"></i>2005 model</li>
              <li><i class="fa fa-car" aria-hidden="true"></i>Diesel</li>
              <li><i class="fa fa-superpowers" aria-hidden="true"></i>143 kW</li>
            </ul>
            <a href="#" class="btn">Visualizza Dettagli <span class="angle_arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
            <div class="car-location"><span><i class="fa fa-map-marker" aria-hidden="true"></i> Colorado, USA</span></div>
          </div>
        </div>
        <div class="product-listing-m gray-bg">
          <div class="product-listing-img"> <a href="#"><img src="assets/images/600x380.jpg" class="img-fluid" alt="image" /> </a>
            <div class="label_icon">Nuova</div>
            <div class="compare_item">
              <div class="checkbox">
                <input type="checkbox" value="" id="compare25">
                <label for="compare25">Confronta</label>
              </div>
            </div>
          </div>
          <div class="product-listing-content">
            <h5><a href="#">Testo del nome dell'auto</a></h5>
            <p class="list-price">$90,000</p>
            <ul>
              <li><i class="fa fa-road" aria-hidden="true"></i>0,000 km</li>
              <li><i class="fa fa-tachometer" aria-hidden="true"></i>30.000 miles</li>
              <li><i class="fa fa-user" aria-hidden="true"></i>5 seats</li>
              <li><i class="fa fa-calendar" aria-hidden="true"></i>2005 model</li>
              <li><i class="fa fa-car" aria-hidden="true"></i>Diesel</li>
              <li><i class="fa fa-superpowers" aria-hidden="true"></i>143 kW</li>
            </ul>
            <a href="#" class="btn">Visualizza Dettagli <span class="angle_arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
            <div class="car-location"><span><i class="fa fa-map-marker" aria-hidden="true"></i> Colorado, USA</span></div>
          </div>
        </div>
        <div class="product-listing-m gray-bg">
          <div class="product-listing-img"> <a href="#"><img src="assets/images/600x380.jpg" class="img-fluid" alt="image" /> </a>
            <div class="label_icon">Nuova</div>
            <div class="compare_item">
              <div class="checkbox">
                <input type="checkbox" value="" id="compare26">
                <label for="compare26">Confronta</label>
              </div>
            </div>
          </div>
          <div class="product-listing-content">
            <h5><a href="#">Testo del nome dell'auto</a></h5>
            <p class="list-price">$90,000</p>
            <ul>
              <li><i class="fa fa-road" aria-hidden="true"></i>0,000 km</li>
              <li><i class="fa fa-tachometer" aria-hidden="true"></i>30.000 miles</li>
              <li><i class="fa fa-user" aria-hidden="true"></i>5 seats</li>
              <li><i class="fa fa-calendar" aria-hidden="true"></i>2005 model</li>
              <li><i class="fa fa-car" aria-hidden="true"></i>Diesel</li>
              <li><i class="fa fa-superpowers" aria-hidden="true"></i>143 kW</li>
            </ul>
            <a href="#" class="btn">Visualizza Dettagli <span class="angle_arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
            <div class="car-location"><span><i class="fa fa-map-marker" aria-hidden="true"></i> Colorado, USA</span></div>
          </div>
        </div>
        <div class="product-listing-m gray-bg">
          <div class="product-listing-img"> <a href="#"><img src="assets/images/600x380.jpg" class="img-fluid" alt="image" /> </a>
            <div class="label_icon">Nuova</div>
            <div class="compare_item">
              <div class="checkbox">
                <input type="checkbox" value="" id="compare27">
                <label for="compare27">Confronta</label>
              </div>
            </div>
          </div>
          <div class="product-listing-content">
            <h5><a href="#">Testo del nome dell'auto</a></h5>
            <p class="list-price">$90,000</p>
            <ul>
              <li><i class="fa fa-road" aria-hidden="true"></i>0,000 km</li>
              <li><i class="fa fa-tachometer" aria-hidden="true"></i>30.000 miles</li>
              <li><i class="fa fa-user" aria-hidden="true"></i>5 seats</li>
              <li><i class="fa fa-calendar" aria-hidden="true"></i>2005 model</li>
              <li><i class="fa fa-car" aria-hidden="true"></i>Diesel</li>
              <li><i class="fa fa-superpowers" aria-hidden="true"></i>143 kW</li>
            </ul>
            <a href="#" class="btn">Visualizza Dettagli <span class="angle_arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
            <div class="car-location"><span><i class="fa fa-map-marker" aria-hidden="true"></i> Colorado, USA</span></div>
          </div>
        </div> -->
        <div class="pagination">
          <ul>
            <li class="current">1</li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
          </ul>
        </div>
      </div>
      
      <!--Side-Bar-->
      <aside class="col-md-3 col-md-pull-9">
        <div class="sidebar_widget sidebar_search_wrap">
          <div class="widget_heading">
            <h5><i class="fa fa-filter" aria-hidden="true"></i> Trova l'auto dei tuoi sogni </h5>
          </div>
          <div class="sidebar_filter">
            <form action="ricerca-annuncio" method="get">
              <div class="form-group select">
                <select class="form-control" name="prezzo" id="prezzo">
                  <option value="">prezzo fino a</option>
                  <option value="10000">10000</option>
                  <option value="20000">20000</option>
                  <option value="100000">100000</option>
                </select>
              </div>
              <div class="form-group select">
              <div class="select">
                <select class="form-control" name="marca" id="marca">
                   <option value="">Seleziona la marca</option>
                  <option value="mercedes">mercedes</option>
                  <option value="peugeot">peugeot</option>
                  <option value="fiat">fiat</option>
                  <option value="toyota">toyota</option>
                  <option value="ford">ford</option>
                </select>
                </div>
              </div>
              <div class="form-group select">
                <select class="form-control" name="modello" id="modello">
                  <option value="">Seleziona il modello</option>
                  <option value="punto">punto</option>
                  <option value="Fiesta">Fiesta</option>
                  <option value="Hybrid">Hybrid</option>
                  <option value="classe c">classe c</option>
                </select>
              </div>
              <!-- <div class="form-group select">
                <select class="form-control">
                  <option>Anno del Modello </option>
                  <option>2016</option>
                  <option>2015</option>
                  <option>2014</option>
                  <option>2013</option>
                </select>
              </div> -->
              
              <!--<div class="form-group">
                  <label class="form-label">Fascia di prezzo ($)</label>
                  <input id="price_range" type="text" class="span2" value="" data-slider-min="50" data-slider-max="6000" data-slider-step="5" data-slider-value="[1000,5000]"/>
              </div> -->
              <!-- <div class="form-group select">
                <select class="form-control">
                  <option>Tipo di auto </option>
                  <option>Auto Nuova</option>
                  <option>Auto usata</option>
                </select>
              </div>  -->
              <div class="form-group">
                <button type="submit" class="btn btn-block"><i class="fa fa-search" aria-hidden="true"></i> Cerca auto</button>
              </div>
            </form>
          </div>
        </div>
        <div class="sidebar_widget sell_car_quote">
          <div class="white-text div_zindex text-center">
            <h3>Scegli la tua auto</h3>
            <p>Richiedi un preventivo e vendi la tua auto ora!</p>
            <a href="#" class="btn">Richiedi un preventivo <span class="angle_arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a> </div>
          <div class="dark-overlay"></div>
        </div>
        <div class="sidebar_widget">
          <div class="widget_heading">
            <h5><i class="fa fa-car" aria-hidden="true"></i> Auto elencate di recente</h5>
          </div>
          <div class="recent_addedcars">
            <ul>
              <li class="gray-bg">
                <div class="recent_post_img"> <a href="#"><img src="assets/images/200x200.jpg" alt="image"></a> </div>
                <div class="recent_post_title"> <a href="#">Auto elencate di recente</a>
                  <p class="widget_price">$92,000</p>
                </div>
              </li>
              <li class="gray-bg">
                <div class="recent_post_img"> <a href="#"><img src="assets/images/200x200.jpg" alt="image"></a> </div>
                <div class="recent_post_title"> <a href="#">Auto elencate di recente</a>
                  <p class="widget_price">$92,000</p>
                </div>
              </li>
              <li class="gray-bg">
                <div class="recent_post_img"> <a href="#"><img src="assets/images/200x200.jpg" alt="image"></a> </div>
                <div class="recent_post_title"> <a href="#">Auto elencate di recente</a>
                  <p class="widget_price">$92,000</p>
                </div>
              </li>
              <li class="gray-bg">
                <div class="recent_post_img"> <a href="#"><img src="assets/images/200x200.jpg" alt="image"></a> </div>
                <div class="recent_post_title"> <a href="#">Auto elencate di recente </a>
                  <p class="widget_price">$92,000</p>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </aside>
      <!--/Side-Bar--> 
    </div>
  </div>
</section>
<!-- /Listing--> 

<!--Brands-->
<section class="brand-section gray-bg">
  <div class="container">
    <div class="brand-hadding">
      <h5>Popular Brands</h5>
    </div>
    <div class="brand-logo-list">
      <div id="popular_brands">
        <div><a href="#"><img src="assets/images/100x60.png" class="img-fluid" alt="image"></a></div>
        <div><a href="#"><img src="assets/images/100x60.png" class="img-fluid" alt="image"></a></div>
        <div><a href="#"><img src="assets/images/100x60.png" class="img-fluid" alt="image"></a></div>
        <div><a href="#"><img src="assets/images/100x60.png" class="img-fluid" alt="image"></a></div>
        <div><a href="#"><img src="assets/images/100x60.png" class="img-fluid" alt="image"></a></div>
        <div><a href="#"><img src="assets/images/100x60.png" class="img-fluid" alt="image"></a></div>
        <div><a href="#"><img src="assets/images/100x60.png" class="img-fluid" alt="image"></a></div>
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
          <h6>Top Categores</h6>
          <ul>
            <li><a href="#">Marca dell'auto</a></li>
            <li><a href="#">Marca dell'auto</a></li>
            <li><a href="#">Marca dell'auto</a></li>
            <li><a href="#">Marca dell'auto</a></li>
            <li><a href="#">Marca dell'auto</a></li>
          </ul>
        </div>
        <div class="col-md-3 col-sm-6">
          <h6>About Us</h6>
          <ul>
            <li><a href="#">Privacy</a></li>
            <li><a href="#">Auto ibride</a></li>
            <li><a href="#">Cookies</a></li>
            <li><a href="#">Marchi</a></li>
            <li><a href="#">Condizioni d'uso</a></li>
          </ul>
        </div>
        <div class="col-md-3 col-sm-6">
          <h6>Link utili</h6>
          <ul>
            <li><a href="#">I nostri partner</a></li>
            <li><a href="#">Carriera</a></li>
            <li><a href="#">Mappa del sito</a></li>
            <li><a href="#">Investitori</a></li>
            <li><a href="#">Richiedi un preventivo</a></li>
          </ul>
        </div>
        <div class="col-md-3 col-sm-6">
          <h6>Abbonarsi alla newsletter</h6>
          <div class="newsletter-form">
            <form action="#">
              <div class="form-group">
                <input type="email" class="form-control newsletter-input" required placeholder="Inserisci l'indirizzo e-mail" />
              </div>
              <button type="submit" class="btn btn-block">Iscriviti <span class="angle_arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></span></button>
            </form>
            <p class="subscribed-text">Inviamo ogni settimana ai nostri utenti iscritti grandi offerte e le ultime notizie sull'auto.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="footer-bottom">
    <div class="container">
      <div class="row">
        
        <div class="col-md-6 ">
          <p class="copy-right">Copyright &copy; 2021 MacAuto. Tutti i diritti riservati</p>
        </div>
		<div class="col-md-6 text-right">
          <div class="footer_widget">
            <p>Scarica la nostra APP:</p>
            <ul>
              <li><a href="#"><i class="fa fa-android" aria-hidden="true"></i></a></li>
              <li><a href="#"><i class="fa fa-apple" aria-hidden="true"></i></a></li>
            </ul>
          </div>
          <div class="footer_widget">
            <p>Connect with Us:</p>
            <ul>
              <li><a href="#"><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
              <li><a href="#"><i class="fa fa-twitter-square" aria-hidden="true"></i></a></li>
              <li><a href="#"><i class="fa fa-linkedin-square" aria-hidden="true"></i></a></li>
              <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
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
		  <div class="row">
            <div class="col-md-6 col-sm-6">
              <form action="#" method="get">
                <div class="form-group">
                  <input type="text" class="form-control" placeholder="Username or Email address*">
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
            <div class="col-md-6 col-sm-6">
              <h6 class="gray_text">Accedi in modo veloce</h6>
              <a href="#" class="btn btn-block facebook-btn"><i class="fa fa-facebook-square" aria-hidden="true"></i> Accedi con Facebook</a> <a href="#" class="btn btn-block twitter-btn"><i class="fa fa-twitter-square" aria-hidden="true"></i> LAccedi con Twitter</a> <a href="#" class="btn btn-block googleplus-btn"><i class="fa fa-google-plus-square" aria-hidden="true"></i> Accedi con Google+</a> </div>
            <div class="mid_divider"></div>
          </div>
        </div>
      </div>
      <div class="modal-footer text-center">
        <p>Non hai un'account? <a href="#signupform" data-bs-toggle="modal" data-bs-dismiss="modal">Iscriviti qui</a></p></br>
        <p><a href="#forgotpassword" data-bs-toggle="modal" data-bs-dismiss="modal">Hai dimenticato la password?</a></p>
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
            <div class="col-md-6 col-sm-6">
              <form action="#" method="get">
                <div class="form-group">
                  <input type="text" class="form-control" placeholder="Full Name">
                </div>
                <div class="form-group">
                  <input type="email" class="form-control" placeholder="Email Address">
                </div>
                <div class="form-group">
                  <input type="password" class="form-control" placeholder="Password">
                </div>
                <div class="form-group">
                  <input type="password" class="form-control" placeholder="Confirm Password">
                </div>
                <div class="form-group checkbox">
                  <input type="checkbox" id="terms_agree">
                  <label for="terms_agree">Sono d'accordo con <a href="#">Termini e Condizioni</a></label>
                </div>
                <div class="form-group">
                  <input type="submit" value="Sign Up" class="btn btn-block">
                </div>
              </form>
            </div>
            <div class="col-md-6 col-sm-6">
              <h6 class="gray_text">Accedi in modo veloce</h6>
              <a href="#" class="btn btn-block facebook-btn"><i class="fa fa-facebook-square" aria-hidden="true"></i> Accedi con Facebook</a> <a href="#" class="btn btn-block twitter-btn"><i class="fa fa-twitter-square" aria-hidden="true"></i> Accedi con Twitter</a> <a href="#" class="btn btn-block googleplus-btn"><i class="fa fa-google-plus-square" aria-hidden="true"></i> Accedi con Google+</a> </div>
            <div class="mid_divider"></div>
          </div>
        </div>
      </div>
      <div class="modal-footer text-center">
        <p>Hai già un account? <a href="#loginform" data-bs-toggle="modal" data-bs-dismiss="modal">Accedi qui</a></p>
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
        <h3 class="modal-title">Recupera password</h3>
      </div>
      <div class="modal-body">
        <div class="row">
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
              <div class="text-center">
                <p class="gray_text">Per ragioni di sicurezza non conserviamo la tua password. La tua password sarà resettata e te ne sarà inviata una nuova.</p>
                <p><a href="#loginform" data-bs-toggle="modal" data-bs-dismiss="modal"><i class="fa fa-angle-double-left" aria-hidden="true"></i> Ritorna al Login</a></p>
              </div>
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
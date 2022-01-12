<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %> <!-- non ignora l'expression language -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Risultati ricerca auto</title>
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
		<!-- Navigation -->
			<%@ include file="header.jsp"%>
		<!-- /Navigation -->
	<!--/Header-->
<!--Page Header-->
<section class="page-header listing_page">
  <div class="container">
    <div class="page-header_wrap">
      <div class="page-heading">
        <h1>Lista auto</h1>
      </div>
      <ul class="coustom-breadcrumb">
        <li><a href="index.jsp">Home</a></li>
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
            <form action="ricerca-auto" method="get">
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
	          	<input type="hidden" name="id" value="${annuncio.automobile.id}"/>
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
            <form action="ricerca-auto" method="get">
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
              <div class="form-group select">
                <select class="form-control" name="prezzoMin" id="prezzoMin">
                  <option value="">prezzo da</option>
                  <option value="500">500 &euro;</option>
                  <option value="1000">1.000 &euro;</option>
                  <option value="2000">2.000 &euro;</option>
                  <option value="3000">3.000 &euro;</option>
                  <option value="4000">4.000 &euro;</option>
                  <option value="5000">5.000 &euro;</option>
                  <option value="6000">6.000 &euro;</option>
                  <option value="7000">7.000 &euro;</option>
                  <option value="8000">8.000 &euro;</option>
                  <option value="9000">9.000 &euro;</option>
                  <option value="10000">10.000 &euro;</option>
                  <option value="12500">12.500 &euro;</option>
                  <option value="15000">15.000 &euro;</option>
                  <option value="17500">17.500 &euro;</option>
                  <option value="20000">20.000 &euro;</option>
                  <option value="25000">25.000 &euro;</option>
                  <option value="30000">30.000 &euro;</option>
                  <option value="40000">40.000 &euro;</option>
                  <option value="50000">50.000 &euro;</option>
                  <option value="60000">60.000 &euro;</option>
                  <option value="70000">70.000 &euro;</option>
                  <option value="80000">80.000 &euro;</option>
                  <option value="90000">90.000 &euro;</option>
                  <option value="100000">100.000 &euro;</option>
                  <option value="250000">250.000 &euro;</option>
                  <option value="500000">500.000 &euro;</option>
                </select>
              </div>
               <div class="form-group select">
                <select class="form-control" name="prezzoMax" id="prezzoMax">
                  <option value=""> a</option>
                  <option value="500">500 &euro;</option>
                  <option value="1000">1.000 &euro;</option>
                  <option value="2000">2.000 &euro;</option>
                  <option value="3000">3.000 &euro;</option>
                  <option value="4000">4.000 &euro;</option>
                  <option value="5000">5.000 &euro;</option>
                  <option value="6000">6.000 &euro;</option>
                  <option value="7000">7.000 &euro;</option>
                  <option value="8000">8.000 &euro;</option>
                  <option value="9000">9.000 &euro;</option>
                  <option value="10000">10.000 &euro;</option>
                  <option value="12500">12.500 &euro;</option>
                  <option value="15000">15.000 &euro;</option>
                  <option value="17500">17.500 &euro;</option>
                  <option value="20000">20.000 &euro;</option>
                  <option value="25000">25.000 &euro;</option>
                  <option value="30000">30.000 &euro;</option>
                  <option value="40000">40.000 &euro;</option>
                  <option value="50000">50.000 &euro;</option>
                  <option value="60000">60.000 &euro;</option>
                  <option value="70000">70.000 &euro;</option>
                  <option value="80000">80.000 &euro;</option>
                  <option value="90000">90.000 &euro;</option>
                  <option value="100000">100.000 &euro;</option>
                  <option value="250000">250.000 &euro;</option>
                  <option value="500000">500.000 &euro;</option>
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
            <h3>Ti serve una mano?</h3>
            <p>Possiamo aiutarti a trovare l'auto che fa per te!</p>
            <a href="contact-us.jsp" class="btn">Contattaci <span class="angle_arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a> </div>
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
<!--Footer -->
	<!--Brands-->
		<!--Back to top-->
		  	<%@ include file="footer.jsp" %> 
		<!--/Back to top--> 
	<!-- /Brands--> 
<!-- /Footer-->   
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
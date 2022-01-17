<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
   
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
        <div class="result-sorting-wrapper">
          <div class="sorting-count">
            <p>${fn:length(annunci)} annunci trovati</p>
          </div>
          <div class="result-sorting-by">
            <p>Ordina per:</p>
            <form action="ricerca-annunci" method="get">
              <div class="form-group select sorting-select">
                <select name="orderBy" class="form-control" onchange="this.form.submit()">
                <option selected disabled>Scegli tipo ordinamento</option>
                  <option value="prezzo asc">Dal più economico</option>
                  <option value="prezzo desc">Dal più caro</option>
                  <option value="km asc">Chilometraggio crescente</option>
                  <option value="km desc">Chilometraggio decrescente</option>
                  <option value="anno asc">Anno immatricolazione meno recente</option>
                  <option value="anno desc">Anno immatricolazione più recente</option>
                </select>
                <input type="hidden" name="marca" value="${marca}"/>
                <input type="hidden" name="modello" value="${modello}"/>
                <input type="hidden" name="prezzoMin" value="${prezzoMin}"/>
                <input type="hidden" name="prezzoMax" value="${prezzoMax}"/>
                
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
	            <div class="label_icon">Usato</div>
	        </div>
	        </c:if>
	        </c:forEach>
	          <div class="product-listing-content">
	            <h5>${annuncio.titolo}</h5>
	            <ul>
	              <li>
		              <p><i class="fa fa-eur" aria-hidden="true"></i>Prezzo:</p> 
		              <p>${annuncio.automobile.prezzo}</p>
	              </li>
	              <li>
		              <p><i class="fa fa-calendar" aria-hidden="true"></i>Anno:</p> 
		              <p>${annuncio.automobile.anno}</p>
	              </li>
	              <li>
		              <p><i class="fa fa-tachometer" aria-hidden="true"></i>Km:</p> 
		              <p>${annuncio.automobile.km}</p>
	              </li>
	              <li>
		              <p><i class="fa fa-car" aria-hidden="true"></i>Carburante:</p>
		              <p>${annuncio.automobile.carburante.value}</p>
	              </li>
	              <li>
		              <p><i class="fa fa-map-marker" aria-hidden="true"></i>Località:</p>
		              <p>${annuncio.indirizzo.citta} , ${annuncio.indirizzo.provincia}</p>
	              </li>
	            </ul>
	          	<form action="dettaglio-annuncio" method="get">
	          	<input type="hidden" name="id" value="${annuncio.id}">
	            <button type="submit" class="btn">Visualizza Dettagli <span class="angle_arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></span></button>
	          	</form>
	          </div>
	        </div>
	        </c:forEach>
		</c:if>
 
<!--         <div class="pagination"> -->
<!--           <ul> -->
<!--             <li class="current">1</li> -->
<!--             <li><a href="#">2</a></li> -->
<!--             <li><a href="#">3</a></li> -->
<!--             <li><a href="#">4</a></li> -->
<!--             <li><a href="#">5</a></li> -->
<!--           </ul> -->
<!--         </div> -->
      </div>
      
      <!--Side-Bar-->
      <aside class="col-md-3 col-md-pull-9">
        <div class="sidebar_widget sidebar_search_wrap">
          <div class="widget_heading">
            <h5><i class="fa fa-filter" aria-hidden="true"></i> Trova l'auto dei tuoi sogni </h5>
          </div>
          <div class="sidebar_filter">
            <form action="ricerca-annunci" method="get">
              <div class="form-group select">
              <div class="select">
                <select class="form-control" name="marca" id="marca" onchange="populate(this.id,'modello')">
                  <option value="">Seleziona la marca</option>
                  <option value="Alfa Romeo">Alfa Romeo</option>
                  <option value="Audi">Audi</option>
                  <option value="Bmw">Bmw</option>
                  <option value="Ferrari">Ferrari</option>
                  <option value="Fiat">Fiat</option>
                  <option value="Ford">Ford</option>
                  <option value="Mazda">Mazda</option>
                  <option value="Mercedes">Mercedes</option>                 
                  <option value="Mini">Mini</option>
                  <option value="Peugeot">Peugeot</option>
                  <option value="Renault">Renault</option>
                  <option value="Seat">Seat</option>
                  <option value="Volkswagen">Volkswagen</option>
                </select>
                </div>
              </div>
              <div class="form-group select">
                <select class="form-control" name="modello" id="modello">
                  <option value="">Seleziona il modello</option>
                </select>
              </div>
              <div class="form-group select">
                <select class="form-control" name="prezzoMin" id="prezzoMin">
                  <option value="">Prezzo da</option>
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
            <a href="about-us.jsp" class="btn">Per saperne di pi&ugrave; <span class="angle_arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a> </div>
          <div class="dark-overlay"></div>
        </div>
        <div class="sidebar_widget">
          <div class="widget_heading">
            <h5><i class="fa fa-car" aria-hidden="true"></i> Annunci in primo piano</h5>
          </div>
          <div class="recent_addedcars">
            <ul>
	            <c:forEach items="${annunciSide}" var="annuncio2">
					<li class="gray-bg">
					<c:forEach items="${annuncio2.foto}" var="foto2">
						<c:if test="${foto2.principale}">
							<div class="recent_post_img"> <a href="#"><img src="${foto2.url}" alt="image"></a> </div>
						</c:if>
				    </c:forEach>
	                <div class="recent_post_title"> 
	                <a href="<c:url value="/dettaglio-annuncio">
               		<c:param name="id" value="${annuncio2.id}"/>
        			</c:url>">
	                ${annuncio2.titolo}
	                </a>
	                  <p class="widget_price"><i class="fa fa-eur" aria-hidden="true"></i>${annuncio2.automobile.prezzo}</p>
	                </div>
		            </li>
				</c:forEach>
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
<script src="assets/js/dynamic-form.js"></script>

</body>
</html>
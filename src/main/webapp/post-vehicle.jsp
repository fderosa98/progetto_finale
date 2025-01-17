<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="it.generationitaly.model.Utente" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="keywords" content="">
<meta name="description" content="">
<title>MacAuto - Crea un Annuncio</title>
<!--Bootstrap -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css">
<!--Custome Style -->
<link rel="stylesheet" href="assets/css/style.css" type="text/css">
<link rel="stylesheet" href="assets/css/custom.css" type=" 	text/css">
<!--OWL Carousel slider-->
<link rel="stylesheet" href="assets/css/owl.carousel.css" type="text/css">
<link rel="stylesheet" href="assets/css/owl.transitions.css" type="text/css">
<!-- css pop-up -->
<link rel="stylesheet" type="text/css" href="assets/css/popup.css">
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
<body>

<!--Header-->
		<!-- Navigation -->
			<%@ include file="header.jsp"%>
		<!-- /Navigation -->
	<!--/Header-->
<!--Page Header-->
<section class="page-header profile_page">
  <div class="container">
    <div class="page-header_wrap">
      <div class="page-heading">
        <h1>Crea un annuncio</h1>
      </div>        
    </div>
  </div>
  <!-- Dark Overlay-->
  <div class="dark-overlay"></div>
</section>
<c:if test="${param.success != null}">
     <div class="overlay" id="pop">
  	  <div class="popup">
       <div class="text-center">
       <h4>Ci siamo, il tuo annuncio é stato pubblicato con successo!</h4>
       <br>
       <div class="btn btn-xs uppercase" aria-label="Close">
       <button type="button" class="btn btn-xs uppercase" data-bs-dismiss="modal" aria-label="Close" id="close">Ok</button>
       </div>
       </div>
   	</div>
     	</div>
</c:if>    
<!-- /Page Header--> 
<!--Post-vehicle-->
<section class="user_profile inner_pages">
  <div class="container">
   <!-- <div class="user_profile_info gray-bg padding_4x4_40">
      <div class="upload_user_logo"> <img src="assets/images/222x172.jpg" alt="image">
        <div class="upload_newlogo">
          <input name="upload" type="file">
        </div>
      </div>
       <div class="dealer_info">
        <h5>Autospot Used Cars Center </h5>
        <p>P.1225 N Broadway Ave <br>
          Oklahoma City, OK  1234-5678-090</p>
      </div> 
    </div> -->
    <div class="row">
        <div class="col-md-3 col-sm-3">
        <div class="profile_nav">
          <ul>
            <li><a href="	
	            	<c:url value="/dettaglio-utente">
	         		</c:url>">Impostazioni profilo
	         	</a>
	        </li>
            <li>                       
            	<a href="
            		<c:url value="/annunci">
                		<c:param name="myVehicles" value=""/>
         			</c:url>">I miei annunci
         		</a>
            </li>
            <li class="active"><a href="post-vehicle.jsp">Crea un annuncio</a></li>
            <li>	           
	            <a href="
	            	<c:url value="/messaggi">
                		<c:param name="inviati" value=""/>
         			</c:url>">Messaggi inviati
         		</a>
            </li>  
            <li>	        
	            <a href="
	            	<c:url value="/messaggi">
                		<c:param name="ricevuti" value=""/>
         			</c:url>">Messaggi ricevuti
         		</a>
	        </li>  
          <!--  <li><a href="#">Esci</a></li>  --> 
          </ul>
        </div>
      </div>
      
      <div class="col-md-6 col-sm-8">
        <div class="profile_wrap">
        <c:if test="${param.error != null}">
	  	  <div class="overlay" id="pop">
  	  <div class="popup">
       <div class="text-center">
       <h4>Per creare un annuncio devi essere loggato!</h4>
       <br>
       <div class="btn btn-xs uppercase" aria-label="Close">
       <button type="button" class="btn btn-xs uppercase" data-bs-dismiss="modal" aria-label="Close" id="close">Ok</button>
       </div>
       </div>
   	</div>
     	</div>
	 	</c:if>
          <h5 class="uppercase underline">Crea un nuovo annuncio</h5>
          <form action="save-annuncio" method="post">         
            <div class="form-group">
              <label class="control-label">Titolo Annuncio</label>
              <input class="form-control white_bg" id="VehiclesTitle" type="text" name="titolo">
            </div>
            <div class="form-group">
              <label class="control-label">Inserisci marca</label>
              <input class="form-control white_bg" id="VehiclesTitle" type="text" name="marca">
            </div>
            <div class="form-group">
              <label class="control-label">Iserisci il Modello</label>
              <input class="form-control white_bg" id="VehiclesTitle" type="text" name="modello">
            </div>
            <div class="form-group">
              <label class="control-label">Inserisci l'anno di immatricolazione</label>
              <input class="form-control white_bg" id="VehiclesTitle" type="text" name="anno">
            </div>
            <div class="form-group">
              <label class="control-label">Inserisci il prezzo €</label>
              <input class="form-control white_bg" id="VehiclesTitle" type="text" name="prezzo">            
            </div>
            <div class="form-group">
              <label class="control-label">Inserisci i km</label>
              <input class="form-control white_bg" id="VehiclesTitle" type="text" name="km">
            </div>
            <div class="form-group">
              <label class="control-label">Seleziona il tipo di carburante</label>
              <div class="select">
                <select name="carburante" class="form-control white_bg">
                  <option value="">Scegli un'opzione</option>
                  <option value="Benzina">Benzina</option>
                  <option value="Diesel">Diesel</option>
                  <option value="Gpl">GPL</option>
                  <option value="Metano">Metano</option>
                  <option value="Ibrida">Ibrida</option>
                  <option value="Elettrica">Elettrica</option>
                </select>
              </div>
            </div>
            <div class="form-group">
              <label class="control-label">Seleziona il numero di porte</label>
              <div class="select">
                <select name="numeroPorte" class="form-control white_bg">
                  <option value="">Scegli un'opzione</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                </select>
              </div>
            </div>
            <div class="form-group">
              <label class="control-label">Inserisci cittá</label>
              <input class="form-control white_bg" id="VehiclesTitle" type="text" name="citta">
            </div>
            <div class="form-group">
              <label class="control-label">Inserisci provincia</label>
              <input class="form-control white_bg" id="VehiclesTitle" type="text" placeholder="es. MI" name="provincia">
            </div>
            <div class="form-group">
              <label class="control-label">Descrizione Annuncio</label>
              <textarea rows="4" class="form-control white_bg" id="VehiclesDescription" name="descrizione"></textarea>
            </div>
            <div class="form-group">
              <button type="submit" class="btn">Crea Annuncio <span class="angle_arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></span></button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</section>
<!--/Post-vehicle-->
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
<script src="assets/js/pop-up.js"></script>
<!--bootstrap-slider-JS--> 
<script src="assets/js/bootstrap-slider.min.js"></script> 
<!--Slider-JS--> 
<script src="assets/js/slick.min.js"></script> 
<script src="assets/js/owl.carousel.min.js"></script>

</body>
</html>
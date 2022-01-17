<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="it.generationitaly.model.Utente" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="keywords" content="">
<meta name="description" content="">
<title>MacAuto- Impostazioni Profilo</title>
<!--Bootstrap -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css">
<!--Custome Style -->
<link rel="stylesheet" href="assets/css/style.css" type="text/css">
<link rel="stylesheet" href="assets/css/custom.css" type=" 	text/css">
<!--OWL Carousel slider-->
<link rel="stylesheet" href="assets/css/owl.carousel.css" type="text/css">
<link rel="stylesheet" href="assets/css/owl.transitions.css" type="text/css">
<!--slick-slider -->
<link href="assets/css/slick.css" rel="stylesheet">
<!-- css pop-up -->
<link rel="stylesheet" type="text/css" href="assets/css/popup.css">
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
        <h1>Impostazioni profilo</h1>
      </div>
      <ul class="coustom-breadcrumb">
        <li><a href="index.jsp">Home</a></li>
        <li>Impostazioni profilo</li>
      </ul>
    </div>
  </div>
  <!-- Dark Overlay-->
  <div class="dark-overlay"></div>
</section>
<!-- /Page Header--> 
<c:if test="${param.passwordModificata != null}">
     <div class="overlay" id="pop">
  	  <div class="popup">
       <div class="text-center">
       <h4>Complimenti, hai cambiato la tua password con successo!</h4>
       <br>
       <div class="btn btn-xs uppercase" aria-label="Close">
       <button type="button" class="btn btn-xs uppercase" data-bs-dismiss="modal" aria-label="Close" id="close">Ok</button>
       </div>
       </div>
   	</div>
     	</div>
</c:if>  
<c:if test="${param.passwordDiverse != null}">
     <div class="overlay" id="pop">
  	  <div class="popup">
       <div class="text-center">
       <h4>Le due password inserite non corrispondono!</h4>
       <br>
       <div class="btn btn-xs uppercase" aria-label="Close">
       <button type="button" class="btn btn-xs uppercase" data-bs-dismiss="modal" aria-label="Close" id="close">Ok</button>
       </div>
       </div>
   	</div>
     	</div>
</c:if> 
<c:if test="${param.usernameModificato != null}">
     <div class="overlay" id="pop">
  	  <div class="popup">
       <div class="text-center">
       <h4>Complimenti, hai cambiato il tuo username con successo!</h4>
       <br>
       <div class="btn btn-xs uppercase" aria-label="Close">
       <button type="button" class="btn btn-xs uppercase" data-bs-dismiss="modal" aria-label="Close" id="close">Ok</button>
       </div>
       </div>
   	</div>
     	</div>
</c:if>  
<c:if test="${param.usernameDuplicato != null}">
     <div class="overlay" id="pop">
  	  <div class="popup">
       <div class="text-center">
       <h4>Impossibile cambiare il tuo username con quello desiderato perché qualcun altro lo ha scelto prima di te :(</h4>
       <br>
       <div class="btn btn-xs uppercase" aria-label="Close">
       <button type="button" class="btn btn-xs uppercase" data-bs-dismiss="modal" aria-label="Close" id="close">Ok</button>
       </div>
       </div>
   	</div>
     	</div>
</c:if>  
<c:if test="${param.usernameDiversi != null}">
     <div class="overlay" id="pop">
  	  <div class="popup">
       <div class="text-center">
       <h4>I due username inseriti non corrispondono!</h4>
       <br>
       <div class="btn btn-xs uppercase" aria-label="Close">
       <button type="button" class="btn btn-xs uppercase" data-bs-dismiss="modal" aria-label="Close" id="close">Ok</button>
       </div>
       </div>
   	</div>
     	</div>
</c:if>  
   
<!--Profile-setting-->
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
            <li class="active">
	            <a href="	
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
            <li ><a href="post-vehicle.jsp">Crea un annuncio</a></li>
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
          <h5 class="uppercase underline">I tuoi dati personali</h5>
          
            <div class="form-group">
              <label class="control-label">Nome</label>
              <input class="form-control gray_bg" id="fullname" type="text" name="nome" value="${utente.nome}" disabled>
            </div>
            <div class="form-group">
              <label class="control-label">Cognome</label>
              <input class="form-control gray_bg" id="email" type="email" name="cognome" value="${utente.cognome}" disabled>
            </div>
            <div class="form-group">
              <label class="control-label">Indirizzo email</label>
              <input class="form-control gray_bg" id="phone-number" type="text" name="email" placeholder="${utente.email}" disabled>
            </div>
            <div class="form-group">
              <label class="control-label">Telefono</label>
              <input class="form-control gray_bg" id="birth-date" type="text" name="telefono" placeholder="${utente.telefono}" disabled>
            </div>
            
            <div class="gray-bg field-title">
              <h6>Cambia Username</h6>
            </div>
            <form action="update-username" method="post">
            <div class="form-group">
              <label class="control-label">Username</label>
              <input class="form-control gray_bg" id="password" type="text" name="username" value="${utente.username}" disabled>
            </div>
            <div class="form-group">
              <label class="control-label">Inserisci nuovo Username</label>
              <input class="form-control white_bg" id="c-password" type="text" name="newUsername">
            </div>
             <div class="form-group">
              <label class="control-label">Conferma nuovo Username</label>
              <input class="form-control white_bg" id="c-password" type="text" name="confirmUsername">
            </div>
            <div class="form-group">
              <button type="submit" class="btn">Salva nuovo Username <span class="angle_arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></span></button>
            </div>
            
            </form>
            <div class="gray-bg field-title">
              <h6>Cambia password</h6>
            </div>
            <form action="update-password" method="post">
            <div class="form-group">
              <label class="control-label">Password</label>
              <input class="form-control gray_bg" id="password" type="password" value="${utente.password}" name="password" disabled>
            </div>
            <div class="form-group">
              <label class="control-label">Inserisci nuova Password</label>
              <input class="form-control white_bg" id="c-password" type="password" name="newPassword">
            </div>
            <div class="form-group">
              <label class="control-label">Conferma nuova Password</label>
              <input class="form-control white_bg" id="c-password" type="password" name="confirmPassword">
            </div>            
            <div class="form-group">
              <button type="submit" class="btn">Salva nuova Password <span class="angle_arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></span></button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</section>
<!--/Profile-setting--> 
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
<script src="assets/js/pop-up.js"></script>
<!--Slider-JS--> 
<script src="assets/js/slick.min.js"></script> 
<script src="assets/js/owl.carousel.min.js"></script>
	
</body>
</html>
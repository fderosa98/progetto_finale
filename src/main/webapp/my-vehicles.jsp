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
<title>MacAuto - I miei annunci</title>
<!--Bootstrap -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css"
	type="text/css">
<!--Custome Style -->
<link rel="stylesheet" href="assets/css/style.css" type="text/css">
<link rel="stylesheet" href="assets/css/custom.css" type=" 	text/css">
<!--OWL Carousel slider-->
<link rel="stylesheet" href="assets/css/owl.carousel.css"
	type="text/css">
<link rel="stylesheet" href="assets/css/owl.transitions.css"
	type="text/css">
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
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="assets/images/favicon-icon/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="assets/images/favicon-icon/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="assets/images/favicon-icon/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="assets/images/favicon-icon/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="assets/images/favicon-icon/favicon.png">
<!-- Google-Font-->
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900"
	rel="stylesheet">
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
					<h1>I miei annunci</h1>
				</div>
				<ul class="coustom-breadcrumb">
					<li><a href="index.jsp">Home</a></li>
					<li>I miei annunci</li>
				</ul>
			</div>
		</div>
		<!-- Dark Overlay-->
		<div class="dark-overlay"></div>
	</section>
	<!-- /Page Header-->

	<!--my-vehicles-->
	<section class="user_profile inner_pages">
		<div class="container">
			<!-- <div class="user_profile_info gray-bg padding_4x4_40">
				<div class="upload_user_logo">
					<img src="assets/images/222x172.jpg" alt="image">
					<div class="upload_newlogo">
						<input name="upload" type="file">
					</div>
				</div>
				<div class="dealer_info">
					<h5>Autospot Used Cars Center</h5>
					<p>
						P.1225 N Broadway Ave <br> Oklahoma City, OK 1234-5678-090
					</p>
				</div>
			</div> -->
	<div class="row">
	  <div class="col-md-3 col-sm-3">
        <div class="profile_nav">
          <ul>
            <li><a href="profile-settings.jsp">Impostazioni profilo</a></li>
            <li class="active">                       
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
						<h5 class="uppercase underline">
							i miei annunci <span>(20 auto)</span>
						</h5>
						<div class="my_vehicles_list">
						<c:forEach items="${annunci}" var="annuncio">
						  <c:if test="${annuncio.utente.username eq sessionScope.username}">
							<ul class="vehicle_listing">
								<li>
									<div class="vehicle_img">
										<c:forEach items="${annuncio.foto}" var="foto">
										  	<c:if test="${foto.principale}">
												<a href="#"><img src="${foto.url}"
													alt="image"></a>
											</c:if>
										</c:forEach>
									</div>
									<div class="vehicle_title">
										<h6>
											<a href="">${annuncio.titolo}</a>
										</h6>
									</div>
									<div class="vehicle_status">
									
										<div class="clearfix"></div>
										<a href="#">
											<i class="fa fa-pencil-square-o"
											aria-hidden="true"></i></a> <a href="#"><i
											class="fa fa-trash" aria-hidden="true"></i></a>
									</div>
								</li>
							</ul>
						  </c:if>
						</c:forEach>
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
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--/my-vehicles-->
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
  <!--Header-->
  <header>
    <div class="default-header">
      <div class="container">
        <div class="row">
          <div class="col-sm-3 col-md-2">
            <div class="logo"> <a href="index.jsp"><img src="assets/images/logo.png" alt="image"/></a> </div>
          </div>
          <div class="col-sm-9 col-md-10">
            <div class="header_info">
              <div class="header_widgets">
                <div class="circle_icon"> <i class="fa fa-envelope" aria-hidden="true"></i> </div>
                <p class="uppercase_text">Scrivici: </p>
                <a href="macauto@outlook.com" class="disabled">macauto@gmail.com</a> 
              </div>
              <div class="header_widgets">
                <div class="circle_icon"> <i class="fa fa-phone" aria-hidden="true"></i> </div>
                <p class="uppercase_text">Contattaci: </p>
                <a href="tel:39 342 093 9646" class="disabled">+39 342 162 6277</a> </div>
              <div class="social-follow">
                <ul>
                  <li><a href="#" class="disabled"><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
                  <li><a href="#" class="disabled"><i class="fa fa-twitter-square" aria-hidden="true"></i></a></li>
                  <li><a href="#" class="disabled"><i class="fa fa-linkedin-square" aria-hidden="true"></i></a></li>
                  <li><a href="404.jsp"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                </ul>
              </div>
              <!--  
              	<c:choose>
					<c:when test="${sessionScope.username == null}">
						<div class="login_btn"> 
							<a href="#loginform" class="btn btn-xs uppercase" data-bs-toggle="modal" data-bs-dismiss="modal">Login / Registrati</a> 
						</div>
					</c:when>
					<c:otherwise>
						<div class="login_btn"> 
							<form action="logout" method="post">
								<input type="submit" class="btn btn-xs uppercase" value="Logout">
							</form>
						</div>
					</c:otherwise>
				</c:choose>
			-->
					<c:if test="${sessionScope.username == null}">
						<div class="login_btn"> 
							<a href="#loginform" class="btn btn-xs uppercase" data-bs-toggle="modal" data-bs-dismiss="modal">Login / Registrati</a> 
						</div>
					</c:if>
					<c:if test="${sessionScope.username != null}">
						<div class="login_btn"> 
							<form action="logout" method="post">
								<input type="submit" class="btn btn-xs uppercase" value="Logout">
							</form>
						</div>
					</c:if>
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
      	<li>
      		<a href="
      			<c:url value="/">               	
         		</c:url>"> Home
        	</a>
        </li>
      	<li><a href="about-us.jsp">Chi siamo</a></li>     	
      	<li>
      		<a href="
      			<c:url value="/annunci">
         		</c:url>" >Catalogo
         	</a>
      	</li>
        <!--li class="dropdown"><a href="#" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">Home</a>
           <ul class="dropdown-menu">
            <li><a href="index-2 U.html">Index-2</a></li> 
          </ul>
        </li> -->
         <!-- modifica dal dropdown di Home-->
         <!-- modifica dal dropdown di Chi siamo-->
        <!--<li class="dropdown"><a href="#" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">Catalogo</a>
          <ul class="dropdown-menu">
            <li><a href="about-us U.html">About-us-u</a></li>
          </ul>
        </li>-->
        <!-- modifica dal dropdown di Catalogo-->
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
      </ul>
    </div>
    <div class="header_wrap d-flex flex-row-reverse">
      <div class="user_login">
        <ul>
         <c:if test="${sessionScope.username != null}"> 
          <li class="dropdown dropdown-toggle"> <a href="#" class="dropdown-toggle" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false"><i class="fa fa-user-circle" aria-hidden="true"></i>${sessionScope.username}<i class="fa fa-angle-down" aria-hidden="true"></i></a>
            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
              <li>
              	<a class="dropdown-item" href="	
	            	<c:url value="/dettaglio-utente">
	         		</c:url>">impostazioni profilo
	         	</a>
	           </li>
              <li><a class="dropdown-item" href="
            		<c:url value="/annunci">
                		<c:param name="myVehicles" value=""/>
         			</c:url>">I miei annunci
         		  </a>
         	  </li>
              <li><a class="dropdown-item" href="post-vehicle.jsp">Crea un Annuncio</a></li>
              <li>
              	<form action="messaggi" method="get" id="form_messaggi_inviati">
	            	<input type="hidden" name="inviati">
	            </form>
	            <a class="dropdown-item" href="javascript:;" onclick="document.getElementById('form_messaggi_inviati').submit();">Messaggi inviati</a>
              </li>  
              <li>
	            <form action="messaggi" method="get" id="form_messaggi_ricevuti">
	            	<input type="hidden" name="ricevuti">
	            </form>
	            <a class="dropdown-item" href="javascript:;" onclick="document.getElementById('form_messaggi_ricevuti').submit();">Messaggi ricevuti</a>
	          </li>
              <li>
             	<form action="logout" method="post" id="form_logout"></form>
              	<a class="dropdown-item" href="javascript:;" onclick="document.getElementById('form_logout').submit();">Logout</a>
              </li>
              </c:if>
            </ul>
          </li>
        </ul>
      </div>
    </div>
  </div>
	
   <!-- mobile-view -->
 	
<!--<div class="row header-row mobile">
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
	  
	  </div> -->	
	  <!-- mobile-view -->
	
    </div>
  </nav>
  <!-- Navigation end --> 
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
              <form action="login" method="post">
                <div class="form-group">
                  <input type="text" class="form-control" placeholder="Username" name="username" required>
                  <c:if test="${errorUsernameLogin != null}">
					<p class="text-danger">${errorUsernameLogin}</p>
				  </c:if>
                </div>
                <div class="form-group">
                  <input type="password" class="form-control" placeholder="Password" name="password" required>
                  <c:if test="${errorPasswordLogin != null}">
					<p class="text-danger">${errorPasswordLogin}</p>
				  </c:if>
                </div>
                <div class="form-group">
                  <input type="submit" value="Login" class="btn btn-block">
                </div>
                <c:if test="${errorCredenzialiErrate != null}">
					<p class="text-danger">${errorCredenzialiErrate}</p>
				  </c:if>
              </form>
            </div>
          </div>
        </div>
      </div>
      <div class="modal-footer text-center">
        <p>Non hai un'account? <a href="#signupform" data-bs-toggle="modal" data-bs-dismiss="modal">Iscriviti qui</a></p><br>
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
              <form action="registrazione" method="post">
                <div class="form-group">
                  <input type="text" class="form-control" placeholder="Nome" name="nome" required>
                  <c:if test="${errorNome != null}">
					<p class="text-danger">${errorNome}</p>
				  </c:if>
                </div>
                <div class="form-group">
                  <input type="text" class="form-control" placeholder="Cognome" name="cognome" required>
                  <c:if test="${errorCognome != null}">
					<p class="text-danger">${errorCognome}</p>
				  </c:if>
                </div>
                <div class="form-group">
                  <input type="email" class="form-control" placeholder="Indirizzo email" name="email" required>
                  <c:if test="${errorEmail != null}"> 
					<p class="text-danger">${errorEmail}</p>
				  </c:if>
				  <c:if test="${param.emailEsistente != null}"> 
				  	<p class="text-danger">L'indirizzo email inserito è già stato utilizzato.</p>
				  </c:if>
                </div>
                <div class="form-group">
                  <input type="tel" class="form-control" name="telefono" placeholder="3487956789" pattern="[0-9]{10}" required>
                  <c:if test="${errorTelefono != null}">
					<p class="text-danger">${errorTelefono}</p>
				  </c:if>
				  <c:if test="${param.telefonoEsistente != null}"> 
				  	<p class="text-danger">Il numero di telefono inserito è già stato utilizzato.</p>
				  </c:if>
                </div>
                <div class="form-group">
                  <input type="text" class="form-control" placeholder="Username" name="username" required>
                  <c:if test="${errorUsernameRegistrazione != null}">
					<p class="text-danger">${errorUsernameRegistrazione}</p>
				  </c:if>
				  <c:if test="${param.usernameEsistente != null}"> 
				  	<p class="text-danger">Lo username inserito è già stato utilizzato.</p>
				  </c:if>
                </div>
                <div class="form-group">
                  <input type="password" class="form-control" placeholder="Password" name="password" required>
                  <c:if test="${errorPasswordRegistrazione != null}">
					<p class="text-danger">${errorPasswordRegistrazione}</p>
				  </c:if>
                </div>
                <div class="form-group">
                  <input type="submit" value="Registrati" class="btn btn-block">
                </div>
              </form>
            </div>

        </div>
      </div>
      <div class="modal-footer text-center">
        <p>Hai già un account? <a href="#loginform" data-bs-toggle="modal" data-bs-dismiss="modal">Accedi qui</a></p>
      </div>
    </div>
  </div>
</div>
</div>
  
<!--/Register-Form --> 
  
</header>
<!-- /Header --> 

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="it">
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="keywords" content="">
<meta name="description" content="">
<title>MacAuto - Home</title>
<!--Bootstrap -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css">
<!--Custome Style -->
<link rel="stylesheet" href="assets/css/style.css" type="text/css">
<link rel="stylesheet" href="assets/css/custom.css" type="text/css">
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
<body class="index2">



<%@ include file="header.jsp"%>


<!--Banner-->
<section id="banner2">
	<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
	   <!-- Wrapper for slides -->
	   <div class="carousel-inner">
	   
       	  <!--item-1-->
    	  <div class="carousel-item active">
              <img src="assets/images/sls.jpg" class="img-fluid" alt="image">
              <div class="carousel-caption">
                 <div class="banner_text text-center div_zindex white-text">
                       <h1>Compra auto in modo facile da una selezione di oltre 1000 veicoli</h1>
                        <h3>Cosa aspetti? Trova subito l'auto pi&ugrave; adatta a te</h3>
                        <a href="about-us.jsp" class="btn">Per saperne di pi&ugrave;</a> 
                    </div> 
              </div>
          </div>
    		
          <!--item-2-->
    	  <div class="carousel-item">
              <img src="assets/images/bmw.jpg" alt="image" class="img-fluid">
              <div class="carousel-caption">
                  <div class="banner_text text-center div_zindex white-text">
                        <h1>Vendi le tue auto velocemente e senza difficolt&agrave ai migliori prezzi in tutta Europa!</h1>
                        <h3>Pubblica subito il tuo annuncio! </h3>

                         <a href="about-us.jsp" class="btn">Per saperne di pi&ugrave;</a> 
                    </div> 
              </div>
          </div>
          <!-- item-3 -->
          <div class="carousel-item">
              <img src="assets/images/audi.jpg" alt="image" class="img-fluid">
              <div class="carousel-caption">
                  <div class="banner_text text-center div_zindex white-text">
                        <h1>Che tipo di auto cerchi? Nuova o usata?</h1>
                        <h3>Usa i filtri per trovare l'auto pi&ugrave; adatta alle tue esigenze </h3>

                         <a href="about-us.jsp" class="btn">Per saperne di pi&ugrave;</a> 
                    </div> 
              </div>
          </div>
          <!-- item-4 -->
          <div class="carousel-item">
              <img src="assets/images/mustang.jpg" alt="image" class="img-fluid">
              <div class="carousel-caption">
                  <div class="banner_text text-center div_zindex white-text">
                        <h1>Diverse tipologie di finanziamento</h1>
                        <h3>Prestito personale, prestito finalizzato, leasing ... Non ti preoccupare, ti aiutiamo noi!</h3>

                         <a href="about-us.jsp" class="btn">Per saperne di pi&ugrave;</a> 
                    </div> 
              </div>
          </div>
	   </div>
	  
          <!-- Controls -->
          <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
  </div>
</section>
<!--/Banner-->


<!-- Filter-Form -->
<section id="filter_form2">
  <div class="container">
  	<div class="main_bg white-text">
        <h3>Trova l'auto dei tuoi sogni</h3>
       
          <form action="ricerca-annunci" method="get">
		   <div class="row">
             <div class="form-group col-md-3 col-sm-6">
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
            <div class="form-group col-md-3 col-sm-6">
              <div class="select">
                <select class="form-control" name="modello" id="modello">
                  <option value="">Seleziona il modello</option>
                </select>
              </div>
            </div>
            <div class="form-group col-md-3 col-sm-6">
              <div class="select">
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
            </div>
            
            <div class="form-group col-md-3 col-sm-6">
              <div class="select">
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
            </div>
            
<!--              <div class="form-group col-md-3 col-sm-6"> -->
<!--               <div class="select"> -->
<!--                 <select class="form-control"> -->
<!--                   <option>Anno del modello </option> -->
<!--                   <option>2019</option> -->
<!--                   <option>2020</option> -->
<!--                   <option>2015</option> -->
<!--                   <option>2016</option> -->
<!--                 </select> -->
<!--               </div> -->
<!--             </div> -->
            
<!--            <div class="form-group col-md-6 col-sm-6"> -->
<!--               <label class="form-label">Fascia di prezzo (€) </label> -->
<!--               <input id="price_range" type="text" class="span2" value="" data-slider-min="50" data-slider-max="6000" data-slider-step="5" data-slider-value="[1000,5000]"/> -->
<!--             </div>  -->
            
            
<!--              <div class="form-group col-md-3 col-sm-6"> -->
<!--               <div class="select"> -->
<!--                 <select class="form-control"> -->
<!--                   <option>Tipo di auto </option> -->
<!--                   <option>Auto nuova</option> -->
<!--                   <option>Auto usata</option> -->
<!--                 </select> -->
<!--               </div> -->
<!--             </div> -->
            <div class="row">
            <div class="col"> </div>
             <div class="col"> <button type="submit" class="btn btn-block"><i class="fa fa-search" aria-hidden="true"></i> Cerca </button> </div>
              <div class="col"> </div>
            </div> 
			</div> 
          </form> 
        
    </div>
  </div>
</section>
<!-- /Filter-Form --> 


<!--About-us-->
<section id="about_us" class="section-padding">
	<div class="container">
    	<div class="section-header text-center">
        	<h2>Benvenuti su MacAuto</h2>
            <div align=left>Sul nostro sito di auto puoi trovare auto usate o nuove in pochi click, proprio con le caratteristiche che cercavi e sempre con un contatto 
               diretto con i venditori o concessionari. Il nostro motto &egrave;: sei tu a decidere quello che trovi! 
               Il dove e il come cercare, sei sempre tu a stabilirlo, grazie ai criteri di ricerca che andrai a impostare, come la marca preferita, il modello, i chilometri o l'anno.
            </div>

        
        <div class="row">
        	<div class="col-md-3 col-sm-6">
            	<div class="about_info">
                    <div class="icon_box">
                        <i class="fa fa-money" aria-hidden="true"></i>
                    </div>
                    <h5>Miglior prezzo</h5>
                    <p>MacAuto confronta i vari annunci e trova il il prezzo che fa per te</p>
                </div>
            </div>
            
            <div class="col-md-3 col-sm-6">
            	<div class="about_info">
                    <div class="icon_box">
                        <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                    </div>
                    <h5>Compravendita immediata</h5>
                    <p>Puoi contattare il venditore o il concessionario con un click.</p>
                </div>
            </div>
            
            <div class="col-md-3 col-sm-6">
            	<div class="about_info">
                    <div class="icon_box">
                        <i class="fa fa-history" aria-hidden="true"></i>
                    </div>
                    <h5>Supporto gratuito</h5>
                    <p>Siamo disponibili h24 per fornirti qualsiasi informazione o richiesta.</p>
                </div>
            </div>
            
            <div class="col-md-3 col-sm-6">
            	<div class="about_info">
                    <div class="icon_box">
                        <i class="fa fa-users" aria-hidden="true"></i>
                    </div>
                    <h5>Rivenditori professionali</h5>
                    <p>Ci occupiamo di verificare gli annunci per fornirti sicurezza. </p>
                </div>
            </div>
        </div>
    </div>
</section>
<!--/About-us-->

<!--Fan-Fact-->
<section id="fun-facts" class="dark-bg vc_row">
    <div class=" col-md-6 vc_col section-padding">
        <div class="fact_m white-text">
            <h2>Informazioni su MacAuto</h2>
  			<p>Da oltre 10 anni MacAuto verifica le auto usate e nuove, mettendo a tua disposizione la propria conoscenza in fatto di auto. Grazie a noi diventi un ricercatore! Qualsiasi sia il dettaglio o il settore riguardanti il mondo delle auto su cui hai dei dubbi, da noi trovi la risposta: auto moderne o d'epoca, auto sportive o utilitarie, gli accessori pi&ugrave; adatti e molto altro ancora. Ti baster&agrave; dare un'occhiata al nostro Catalogo. </p>
            <ul>
                <li>
                    <i class="fa fa-calendar" aria-hidden="true"></i>
                    <h2>15+</h2>
                    <p>Anni di attività</p>                    
                </li>
                
                <li>
                    <i class="fa fa-car" aria-hidden="true"></i>
                    <h2>1200+</h2>
                    <p>Auto nuove in vendita</p>                    
                </li>
                
                <li>
                    <i class="fa fa-car" aria-hidden="true"></i>
                    <h2>1000+</h2>
                    <p>Auto usate in vendita</p>                    
                </li>
                
                <li>
                    <i class="fa fa-user-circle" aria-hidden="true"></i>
                    <h2>600+</h2>
                    <p>Clienti soddisfatti</p>        
                </li>
            </ul>
        </div>
    </div>
    <div class=" col-md-6 vc_col section-padding paddin-remove" >
     	 <img src="assets/images/auto2.jpg"> 
        <div class="facts_section_bg"></div>
    </div>
</section>
<!--/Fan-fact-->

<!--Featured Car-->
<section class="section-padding">
  <div class="container">
    <div class="section-header text-center">
      <h2>Auto in primo piano</h2>
      <p>Consulta la nostra selezione di auto settimanale, vogliamo aiutarti a scegliere l'auto adatta alle tue esigenze e al miglior prezzo!  </p>
    </div>
    <div class="row">
     <c:forEach items="${annunci}" begin="0" end="2" var="annuncio">
      <div class="col-list-3">
        <div class="featured-car-list">
        <c:forEach items="${annuncio.foto}" var="foto">
         <c:if test="${foto.principale}">
          <div class="featured-car-img"> 
          	<a href="
          		<c:url value="/dettaglio-annuncio">
                	<c:param name="id" value="${annuncio.id}"/>
         		</c:url>">"><img src="${foto.url}" class="img-fluid" alt="Image">
         	</a>
         </c:if>  
            </c:forEach>                    
          </div>
          <div class="featured-car-content">
            <h6>
            	<a href="
            		<c:url value="/dettaglio-annuncio">
                		<c:param name="id" value="${annuncio.id}"/>
         			</c:url>">${annuncio.titolo}
         		</a>
         	</h6>
            <div class="price_info">
              <p class="featured-price">${annuncio.automobile.prezzo}0 €</p>
              <div class="car-location"><span><i class="fa fa-map-marker" aria-hidden="true"></i>${annuncio.indirizzo.citta}, ${annuncio.indirizzo.provincia}</span></div>
            </div>
            <ul>
              <li><i class="fa fa-road" aria-hidden="true"></i>${annuncio.automobile.km} km</li>
              <li><i class="fa fa-calendar" aria-hidden="true"></i>${annuncio.automobile.anno}</li>
              <li><i class="fa fa-car" aria-hidden="true"></i>${annuncio.automobile.carburante.value}</li>
              <li><i class="fa fa-user" aria-hidden="true"></i>${annuncio.automobile.numeroPorte.value}</li>              
            </ul>
          </div>
        </div>
      </div>
     </c:forEach>
           
    </div>
  </div>
</section>
<!-- /Featured Car--> 


<!-- Services -->
<section id="our_services" class="dark-bg vc_row">
	<div class="col-md-6 vc_col section-padding paddin-remove our">
    <img src="assets/images/auto5.jpg">
    	<div class="facts_section_bg service-image"></div>
	</div>
    
    <div class=" col-md-6 vc_col section-padding">
        <div class="our_services white-text">
            <h2>I nostri servizi</h2>
            <p>Siamo nati ufficialmente nel 2010 dalla passione per il settore automotive.
               Crediamo nel progresso della mobilit&agrave; in Italia e nel cambiamento tecnologico.
               Formiamo quotidianamente il nostro staff ed i nostri store sono in continuo aggiornamento, per garantirvi un'esperienza unica che sia sempre orientata al futuro in termini di offerta di prodotto e di servizi.
               Venite a trovarci, la vostra nuova auto vi aspetta! 
            </p>
            <!--Services-info-->
            <div class="services_info">
                <div class="icon_box">
                    <i class="fa fa-car" aria-hidden="true"></i>
                </div>
                <h4><a href="listing-classic.jsp">Vendita Auto Nuove</a></h4>
                <p>Qui puoi trovare oltre 1000 auto nuove, pronte per essere vendute, scegli quella che si adatta alle tue esigenze</p>
            </div>
            
            <!--Services-info-->
            <div class="services_info">
                <div class="icon_box">
                    <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                </div>
                <h4><a href="listing-classic.jsp">Vendita auto usate</a></h4>
                <p>Sul nostro portale puoi registrarti e mettere in vendita la tua autovettura. Ti aiuteremo nella vendita</p>
            </div>
        </div>
    </div>
</section>
<!-- /Services -->


<!--Testimonial -->
<section id="testimonial" class="section-padding">
  <div class="container div_zindex">
    <div class="section-header text-center">
      <h2>Feedback dei nostri acquirenti</h2>
    </div>
    <div class="row">
      <div id="testimonial-slider-2">
           <div class="testimonial_wrap">
          	   <div class="testimonial-img">
               	  <img src="assets/images/profili_feedback/profilo1.jpg" alt="image">
               </div>
               <div class="testimonial-heading">
                  <h5>Mario Rossi</h5>
                  <span class="client-designation">MacAuto</span> 
               </div>
             <p>Consiglio a tutti questa concessionaria per la professionalit&agrave;, competenza e soprattutto gentilezza del titolare Paolo. Consiglierei ai dipendenti di grandi concessionarie di farsi un giretto da MacAuto per imparare come comportarsi.</p>
			</div>
           
           <div class="testimonial_wrap">
          	   <div class="testimonial-img">
               	  <img src="assets/images/profili_feedback/profilo2.jpg" alt="image">
               </div>
               <div class="testimonial-heading">
                  <h5>Enzo Giovanotelli </h5>
                  <span class="client-designation">MacAuto</span> 
               </div>
           <p>Dopo svariate ricerche e delusioni in pi&ugrave; concessionarie, sono approdato in una concessionatria di MacAuto, dove ho comprato un'auto nuova grazie ai consigli e alla professionalit&agrave; dei consulenti.  Alle volte basta poco per soddisfare un cliente, consigliatissimo!</p>
			</div>
           
           <div class="testimonial_wrap">
          	   <div class="testimonial-img">
               	  <img src="assets/images/profili_feedback/profilo3.jpg" alt="image">
               </div>
               <div class="testimonial-heading">
                  <h5>Lucia Bianchi</h5>
                  <span class="client-designation">MacAuto</span> 
               </div>
               <p>Ho acquistato un Audi A4 Avant Sport edition presso una delle concessionarie di MacAuto e devo dire che raramente ho avuto una migliore assistenza pre e post vendita. Pazienza e professionalit&agrave; al massimo grado. Assolutamente consigliato.</p>
			</div>
           
           <div class="testimonial_wrap">
          	   <div class="testimonial-img">
               	  <img src="assets/images/profili_feedback/profilo4.jpg" alt="image">
               </div>
               <div class="testimonial-heading">
                  <h5>Gianfranco Fumagalli </h5>
                  <span class="client-designation">MacAuto</span> 
               </div>
               <p>Da anni io e mia moglie ci affidiamo al Sig. Paolo Maccari, venditore serio e professionale. Per qualsiasi necessit&agrave;, anche nel post vendita, &egrave; sempre a disposizione. Siamo sempre stati soddisfatti e soprattutto ben consigliati. Che dire, esperienza piacevolissima!</p>
           </div>
           
           <div class="testimonial_wrap">
          	   <div class="testimonial-img">
               	  <img src="assets/images/profili_feedback/profilo5.jpg" alt="image">
               </div>
               <div class="testimonial-heading">
                  <h5>Marta Brambilla </h5>
                  <span class="client-designation">MacAuto</span> 
               </div>
               <p>Ho acquistato una Fiat 500 usata molto bella da MacAuto, con pochissimi chilometri, ottimo prezzo ma soprattutto ho trovato una grande disponibilit&agrave; e professionalit&agrave;. Chiedete di Fabio, sapr&agrave; sicuramente consigliarvi al meglio. 5 stelle sarebbero troppo poche!</p>
			</div>
	      </div>
	    </div>
	  </div>

</section>
<!-- /Testimonial--> 


<!-- Help-Number--> 
<section id="help" class="section-padding">
	<div class="container">
    	<div class="div_zindex white-text text-center">
            <h2>Hai qualche domanda?<br>
            +39 345 789 4522</h2>
        </div>
    </div>
    
	<!-- Dark-overlay-->    
    <div class="dark-overlay"></div>
</section>
<!-- /Help-Number--> 

<!-- Pop-up -->

<c:if test="${param.loginSuccess != null}"> 
     <div class="overlay" id="pop">
  	  <div class="popup">
       <div class="text-center">
       	<h4>Benvenuto ${sessionScope.username}! Hai effettuato il login con successo. </h4>
       	<br>
       	 <div class="btn btn-xs uppercase" aria-label="Close">
       		<button type="button" class="btn btn-xs uppercase" data-bs-dismiss="modal" aria-label="Close" id="close">Ok</button>
         </div>
       </div>
   	   </div>
     </div>
</c:if>  

<c:if test="${param.registrazioneSuccess != null}"> 
     <div class="overlay" id="pop">
  	  <div class="popup">
       <div class="text-center">
       	<h4>Benvenuto ${sessionScope.username}! Hai effettuato la registrazione con successo. </h4>
       	<br>
       	 <div class="btn btn-xs uppercase" aria-label="Close">
       		<button type="button" class="btn btn-xs uppercase" data-bs-dismiss="modal" aria-label="Close" id="close">Ok</button>
         </div>
       </div>
   	   </div>
     </div>
</c:if> 

<c:if test="${param.error != null}"> 
     <div class="overlay" id="pop">
  	  <div class="popup">
       <div class="text-center">
       	<h4>Devi essere loggato per accedere alla tua sezione personale!</h4>
       	<br>
       	 <div class="btn btn-xs uppercase" aria-label="Close">
       		<button type="button" class="btn btn-xs uppercase" data-bs-dismiss="modal" aria-label="Close" id="close">Ok</button>
         </div>
       </div>
   	   </div>
     </div>
</c:if>  
<%-- <c:if test="${param.usernameEsistente != null}">  --%>
<!--      <div class="overlay" id="pop"> -->
<!--   	  <div class="popup"> -->
<!--        <div class="text-center"> -->
<!--        	<h4>Username giá esistente </h4> -->
<!--        	<br> -->
<!--        	 <div class="btn btn-xs uppercase" aria-label="Close"> -->
<!--        		<button type="button" class="btn btn-xs uppercase" data-bs-dismiss="modal" aria-label="Close" id="close">Ok</button> -->
<!--          </div> -->
<!--        </div> -->
<!--    	   </div> -->
<!--      </div> -->
<%-- </c:if>  --%>
<%-- <c:if test="${param.emailEsistente != null}">  --%>
<!--      <div class="overlay" id="pop"> -->
<!--   	  <div class="popup"> -->
<!--        <div class="text-center"> -->
<!--        	<h4>Username giá esistente </h4> -->
<!--        	<br> -->
<!--        	 <div class="btn btn-xs uppercase" aria-label="Close"> -->
<!--        		<button type="button" class="btn btn-xs uppercase" data-bs-dismiss="modal" aria-label="Close" id="close">Ok</button> -->
<!--          </div> -->
<!--        </div> -->
<!--    	   </div> -->
<!--      </div> -->
<%-- </c:if>  --%>
<!-- Pop-up -->


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
<script src="assets/js/dynamic-form.js"></script> 
<script src="assets/js/pop-up.js"></script>
<c:if test="${hasErrorsLogin || errorCredenzialiErrate != null}">
<script type="text/javascript">
var myModal = document.getElementById("loginform");
var modal = new bootstrap.Modal(myModal);
modal.show();
</script>
</c:if>

<c:if test="${hasErrorsRegistrazione}">
<script type="text/javascript">
var myModal = document.getElementById("signupform");
var modal = new bootstrap.Modal(myModal);
modal.show();
</script>
</c:if>

<c:if test="${param.emailEsistente != null}"> 
	<script type="text/javascript">
	var myModal = document.getElementById("signupform");
	var modal = new bootstrap.Modal(myModal);
	modal.show();
	</script>
</c:if>

<c:if test="${param.usernameEsistente != null}"> 
	<script type="text/javascript">
	var myModal = document.getElementById("signupform");
	var modal = new bootstrap.Modal(myModal);
	modal.show();
	</script>
</c:if>
<!--bootstrap-slider-JS--> 
<script src="assets/js/bootstrap-slider.min.js"></script> 
<!--Slider-JS--> 
<script src="assets/js/slick.min.js"></script> 
<script src="assets/js/owl.carousel.min.js"></script>

</body>
</html>
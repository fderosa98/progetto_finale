<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="it">
<head>
<meta charset="ISO-8859-1">
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
                        <h1>Compra la tua auto nuova o usata. </h1>
                        <h3>Abbiamo pi&ugrave; di mille auto da scegliere. </h3>
                        <a href="listing-classic.jsp" class="btn">Per saperne di pi&ugrave;</a> 
                    </div> 
              </div>
          </div>
    		
          <!--item-2-->
    	  <div class="carousel-item">
              <img src="assets/images/bmw.jpg" alt="image" class="img-fluid">
              <div class="carousel-caption">
                  <div class="banner_text text-center div_zindex white-text">
                        <h1> Trova l'auto dei tuoi sogni.</h1>
                        <h3>Abbiamo pi&ugrave; di mille auto da scegliere. </h3>
                         <a href="listing-classic.jsp" class="btn">Per saperne di pi&ugrave;</a> 
                    </div> 
              </div>
          </div>
          <!-- item-3 -->
          <div class="carousel-item">
              <img src="assets/images/audi.jpg" alt="image" class="img-fluid">
              <div class="carousel-caption">
                  <div class="banner_text text-center div_zindex white-text">
                        <h1>Utilizza i filtri per trovarla in fretta.</h1>
                        <h3>Abbiamo pi&ugrave; di mille auto da scegliere. </h3>
                         <a href="listing-classic.jsp" class="btn">Per saperne di pi&ugrave;</a> 
                    </div> 
              </div>
          </div>
          <!-- item-4 -->
          <div class="carousel-item">
              <img src="assets/images/mustang.jpg" alt="image" class="img-fluid">
              <div class="carousel-caption">
                  <div class="banner_text text-center div_zindex white-text">
                        <h1>Contatta il venditore e concludi un affare.</h1>
                        <h3>Abbiamo pi&ugrave; di mille auto da scegliere. </h3>
                         <a href="listing-classic.jsp" class="btn">Per saperne di pi&ugrave;</a> 
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
            <p>Nel nostro mercato on-line di autoveicoli puoi trovare auto usate o nuove in pochi click, proprio con le caratteristiche che cercavi e sempre con un contatto diretto con venditori o concessionari. Il nostro motto &egrave;: sei tu a decidere quello che trovi! Il dove e il come cercare, sei sempre tu a stabilirlo, grazie ai criteri di ricerca che andrai a impostare, come la marca preferita, il modello o l'anno.</p>
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
            <p>Da circa 15 anni MacAuto verifica in maniera indipendente le auto usate e nuove e mette a tua disposizione la propria conoscenza in fatto di auto. Grazie a noi diventi un ricercatore! Qualsiasi sia il dettaglio o il settore riguardanti il mondo delle auto su cui hai dei dubbi, da noi trovi la risposta: vetture moderne o d’epoca, auto sportive o di servizio, le migliori officine, la messa a punto ottimale, gli accessori più adatti e molto altro ancora. Ti basterà dare un’occhiata al nostro Catalogo. </p>
    
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
      <h2>Auto in primo piano Offerte speciali</h2>
      <p>Ci sono molte varianti di passaggi di MacAuto disponibili, ma la maggior parte ha subito alterazioni in qualche forma, con umorismo iniettato, o parole casuali che non sembrano nemmeno lontanamente credibili. Se hai intenzione di usare un passaggio di Lorem Ipsum, devi essere sicuro che non ci sia nulla di imbarazzante nascosto in mezzo al testo. </p>
    </div>
    <div class="row">
      <div class="col-list-3">
        <div class="featured-car-list">
          <div class="featured-car-img"> <a href=""><img src="assets/images/600x380.jpg" class="img-fluid" alt="Image"></a>
            <div class="label_icon">Nuovo</div>
            <div class="compare_item">
              <div class="checkbox">
                <input type="checkbox" id="compare">
                <label for="compare">Confronta</label>
              </div>
            </div>
          </div>
          <div class="featured-car-content">
            <h6><a href="#">Nome della nuova auto</a></h6>
            <div class="price_info">
              <p class="featured-price">$90,000</p>
              <div class="car-location"><span><i class="fa fa-map-marker" aria-hidden="true"></i> Colorado, USA</span></div>
            </div>
            <ul>
              <li><i class="fa fa-road" aria-hidden="true"></i>0,000 km</li>
              <li><i class="fa fa-tachometer" aria-hidden="true"></i>30.000 miles</li>
              <li><i class="fa fa-calendar" aria-hidden="true"></i>2005 modello</li>
              <li><i class="fa fa-car" aria-hidden="true"></i>Diesel</li>
              <li><i class="fa fa-user" aria-hidden="true"></i>5 seats</li>
              <li><i class="fa fa-superpowers" aria-hidden="true"></i>143 kW</li>
            </ul>
          </div>
        </div>
      </div>
      <div class="col-list-3">
        <div class="featured-car-list">
          <div class="featured-car-img"> <a href=""><img src="assets/images/600x380.jpg" class="img-fluid" alt="Image"></a>
            <div class="label_icon">Usato</div>
            <div class="compare_item">
              <div class="checkbox">
                <input type="checkbox" id="compare2">
                <label for="compare2">Confronta</label>
              </div>
            </div>
          </div>
          <div class="featured-car-content">
            <h6><a href="#">Nome dell'auto usata</a></h6>
            <div class="price_info">
              <p class="featured-price">$90,000</p>
              <div class="car-location"><span><i class="fa fa-map-marker" aria-hidden="true"></i> Colorado, USA</span></div>
            </div>
            <ul>
              <li><i class="fa fa-road" aria-hidden="true"></i>0,000 km</li>
              <li><i class="fa fa-tachometer" aria-hidden="true"></i>30.000 miles</li>
              <li><i class="fa fa-calendar" aria-hidden="true"></i>2005 model</li>
              <li><i class="fa fa-car" aria-hidden="true"></i>Diesel</li>
              <li><i class="fa fa-user" aria-hidden="true"></i>5 seats</li>
              <li><i class="fa fa-superpowers" aria-hidden="true"></i>143 kW</li>
            </ul>
          </div>
        </div>
      </div>
      <div class="col-list-3">
        <div class="featured-car-list">
          <div class="featured-car-img"> <a href=""><img src="assets/images/600x380.jpg" class="img-fluid" alt="Image"></a>
            <div class="label_icon">Usata</div>
            <div class="compare_item">
              <div class="checkbox">
                <input type="checkbox" id="compare3">
                <label for="compare3">Confronta</label>
              </div>
            </div>
          </div>
          <div class="featured-car-content">
            <h6><a href="#">Nome dell'auto usata</a></h6>
            <div class="price_info">
              <p class="featured-price">$90,000</p>
              <div class="car-location"><span><i class="fa fa-map-marker" aria-hidden="true"></i> Colorado, USA</span></div>
            </div>
            <ul>
              <li><i class="fa fa-road" aria-hidden="true"></i>0,000 km</li>
              <li><i class="fa fa-tachometer" aria-hidden="true"></i>30.000 miles</li>
              <li><i class="fa fa-calendar" aria-hidden="true"></i>2005 model</li>
              <li><i class="fa fa-car" aria-hidden="true"></i>Diesel</li>
              <li><i class="fa fa-user" aria-hidden="true"></i>5 seats</li>
              <li><i class="fa fa-superpowers" aria-hidden="true"></i>143 kW</li>
            </ul>
          </div>
        </div>
      </div>
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
            <p>Siamo nati ufficialmente nel 2007 come declinazione italiana del sito mobile.de, il pi&ugrave; grande marketplace tedesco di autoveicoli. 
			Ogni mese 3 milioni di persone raggiungono 
			il nostro sito e noi le aiutiamo a trovare l'auto perfetta per loro. 
			come puoi notare, forniamo la possbilit&agrave; agli utenti di vendere le proprie auto attraverso il nostro portale</p>
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
               <p>Buongiorno consiglio a tutti questa concessionaria per la professionalit&agrave;, competenza ma soprattutto gentilezza del titolare Paolo. Dopo aver girato diverse concessionarie dove sono stata trattata con superficialit&agrave;, ho trovato Giancarlo che mi ha saputo consigliare e ha trovato lauto che cercavo. Consiglierei ai dipendenti di grandi concessionarie di farsi un giretto da MacAuto per imparare come comportarsi. Alle volte basta poco per soddisfare un cliente.</p>
           </div>
           
           <div class="testimonial_wrap">
          	   <div class="testimonial-img">
               	  <img src="assets/images/profili_feedback/profilo2.jpg" alt="image">
               </div>
               <div class="testimonial-heading">
                  <h5>Enzo Giovanotelli </h5>
                  <span class="client-designation">MacAuto</span> 
               </div>
               <p>Salve, ho comprato una autovettura da Pietro ( MacAuto concessionaria)solo dopo aver letto tutte le recensioni , ho comprato senza vedere la macchina, mi sono solo fidato di lui, tutto vero quello che dice e non solo, molto disponibile, seria, e ti da molti consigli, e io mi sono fatto 3000 km per acquistare la macchina come nelle foto e come spiegata da lui insomma una persona molto seria....</p>
           </div>
           
           <div class="testimonial_wrap">
          	   <div class="testimonial-img">
               	  <img src="assets/images/profili_feedback/profilo3.jpg" alt="image">
               </div>
               <div class="testimonial-heading">
                  <h5>Lucia Bianchi</h5>
                  <span class="client-designation">MacAuto</span> 
               </div>
               <p>&Egrave; TUTTO VERO E RARO. RECENSIONE POSITIVA!! PERSONE QUALIFICATE PRECISE E SOPRATUTTO SPIEGANO AL DETTAGLIO IL CONTRATTO DI VENDITA IN FASE DI ACQUISTO. CONSIGLIO SENZA SORPRESE.</p>
           </div>
           
           <div class="testimonial_wrap">
          	   <div class="testimonial-img">
               	  <img src="assets/images/profili_feedback/profilo4.jpg" alt="image">
               </div>
               <div class="testimonial-heading">
                  <h5>Gianfranco Fumagalli </h5>
                  <span class="client-designation">MacAuto</span> 
               </div>
               <p>Da anni io e mia moglie ci affidiamo al Sig. Paolo Maccari, venditore serio e professionale. Per qualsiasi necessit&agrave;, anche nel post vendita, &egrave; sempre a disposizione. Siamo sempre stati soddisfatti e soprattutto ben consigliati. Che dire, 5 stelle sono troppo poche, ne meriterebbe molte di pi&ugrave;!.</p>
           </div>
           
           <div class="testimonial_wrap">
          	   <div class="testimonial-img">
               	  <img src="assets/images/profili_feedback/profilo5.jpg" alt="image">
               </div>
               <div class="testimonial-heading">
                  <h5>Roberto Serritella </h5>
                  <span class="client-designation">MacAuto</span> 
               </div>
               <p>&Egrave; gi&agrave; la seconda volta che mi affido a loro e come sempre Giancarlo e il suo staff sono stati disponibili dei professionisti seri e competenti organizzati in tutto, sempre pronti a dare qualsiasi spiegazione. &Egrave; stato un piacere acquistare la mia auto da loro mi hanno supportato durante l'iter di vendita del mio precedente mezzo e sono stati precisi, attenti ai dettagli e molto professionali per l'acquisto della mia nuova macchina. Un lavoro svolto con passione e si percepisce non appena entri nell'auto salone. Grazie per tutto!.</p>
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
            +39 342 162 6277</h2>
        </div>
    </div>
    
	<!-- Dark-overlay-->    
    <div class="dark-overlay"></div>
</section>
<!-- /Help-Number--> 


<!--Blog -->
<!-- <section class="section-padding">
  <div class="container">
    <div class="section-header text-center">
      <h2>Ultimi aggiornamenti nell'industria automobilistica</h2>
      <p>Ci sono molte varianti di passaggi di Lorem Ipsum disponibili, ma la maggior parte ha subito alterazioni in qualche forma, con umorismo iniettato, o parole casuali che non sembrano nemmeno lontanamente credibili. Se hai intenzione di usare un passaggio di Lorem Ipsum, devi essere sicuro che non ci sia nulla di imbarazzante nascosto in mezzo al testo. </p>
    </div>
    <div class="row">
      <div class="col-md-4 col-sm-4">
        <article class="blog-list">
          <div class="blog-info-box"> 
            <div class="share_article">
            	<p><i class="fa fa-share-alt" aria-hidden="true"></i></p>
                <ul>
                  <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                  <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                  <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                </ul>
            </div>
            <a href="#"><img src="assets/images/600x380.jpg" class="img-fluid" alt="image"></a>
            <ul>
              <li><a href="#"><i class="fa fa-tags" aria-hidden="true"></i>Latest Cars</a></li>
              <li><i class="fa fa-calendar" aria-hidden="true"></i>15 Nov 2016</li>
              <li><a href="#"><i class="fa fa-comment-o" aria-hidden="true"></i>10 Comments</a></li>
            </ul>
          </div>
          <div class="blog-content">
            <h5><a href="#">Ma devo spiegarvi come tutta questa idea sbagliata.</a></h5>
            <p>esporre gli attuali insegnamenti del grande esploratore della verità, il maestro costruttore della felicità umana. Nessuno rifiuta, non ama o evita il piacere in sé, perché</p>
            <a href="#" class="btn-link">Per Saperne di più <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a> </div>
        </article>
      </div>
      <div class="col-md-4 col-sm-4">
        <article class="blog-list">
          <div class="blog-info-box"> 
            <div class="share_article">
            	<p><i class="fa fa-share-alt" aria-hidden="true"></i></p>
                <ul>
                  <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                  <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                  <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                </ul>
            </div>
            <a href="#"><img src="assets/images/600x380.jpg" class="img-fluid" alt="image"></a>
            <ul>
              <li><a href="#"><i class="fa fa-tags" aria-hidden="true"></i>Ultime auto</a></li>
              <li><i class="fa fa-calendar" aria-hidden="true"></i>10 Nov 2016</li>
              <li><a href="#"><i class="fa fa-comment-o" aria-hidden="true"></i>21 Commenti</a></li>
            </ul>
          </div>
          <div class="blog-content">
            <h5><a href="#">Dall'altra parte, denunciamo con giusta indignazione.</a></h5>
            <p>esporre gli attuali insegnamenti del grande esploratore della verità, il maestro costruttore della felicità umana. Nessuno rifiuta, non ama o evita il piacere in sé, perché</p>
            <a href="#" class="btn-link">Per saperne di più <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a> </div>
        </article>
      </div>
      <div class="col-md-4 col-sm-4">
        <article class="blog-list">
          <div class="blog-info-box"> 
             <div class="share_article">
            	<p><i class="fa fa-share-alt" aria-hidden="true"></i></p>
                <ul>
                  <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                  <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                  <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                </ul>
            </div>
            <a href="#"><img src="assets/images/600x380.jpg" class="img-fluid" alt="image"></a>
            <ul>
              <li><a href="#"><i class="fa fa-tags" aria-hidden="true"></i>Ultime auto</a></li>
              <li><i class="fa fa-calendar" aria-hidden="true"></i>05 Nov 2016</li>
              <li><a href="#"><i class="fa fa-comment-o" aria-hidden="true"></i>18 Commenti</a></li>
            </ul>
          </div>
          <div class="blog-content">
            <h5><a href="#">Dall'altra parte, denunciamo con giusta indignazione.</a></h5>
            <p>esporre gli attuali insegnamenti del grande esploratore della verità, il maestro costruttore della felicità umana. Nessuno rifiuta, non ama o evita il piacere in sé, perché</p>
            <a href="#" class="btn-link">Per saperne di più <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a> </div>
        </article>
      </div>
    </div>
  </div>
</section>
<!-- /Blog--> 



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
<!--bootstrap-slider-JS--> 
<script src="assets/js/bootstrap-slider.min.js"></script> 
<!--Slider-JS--> 
<script src="assets/js/slick.min.js"></script> 
<script src="assets/js/owl.carousel.min.js"></script>

</body>
</html>
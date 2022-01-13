function populate(s1,s2){
  var s1 = document.getElementById('marca');
  var s2 = document.getElementById('modello');

  s2.innerHTML = "";
  if (s1.value == "") {
  	var optionArray = [' '];
  } else if (s1.value == "Alfa Romeo"){
    var optionArray = [' ','Giulietta','Spider','Stelvio'];
  } else if (s1.value == "Audi") {
    var optionArray = [' ','A4','Q3','TT'];
  } else if (s1.value == "Bmw") {
    var optionArray = [' ','i3','Serie 5','X6','Z3'];
  } else if (s1.value == "Ferrari") {
    var optionArray = [' ','California','F8','F348','FF','Mondial','Portofino','Roma','SF90'];
  } else if (s1.value == "Fiat") {
    var optionArray = [' ','500','Panda','Punto'];
  } else if (s1.value == "Ford") {
    var optionArray = [' ','Edge','Focus','Ka','Mustang'];
  } else if (s1.value == "Mazda") {
    var optionArray = [' ','CX-5','CX-30','MX-5'];
  } else if (s1.value == "Mercedes") {
    var optionArray = [' ','Classe A','Classe B','Classe C','SLK'];
  } else if (s1.value == "Mini") {
    var optionArray = [' ','Clubman','Cooper','Paceman','Roadster'];
  } else if (s1.value == "Peugeot") {
    var optionArray = [' ','2008','3008','iOn'];
  } else if (s1.value == "Renault") {
    var optionArray = [' ','Clio','Megane','Twingo','Zoe'];
  } else if (s1.value == "Seat") {
    var optionArray = [' ','Arona','Ibiza','Leon'];
  } else if (s1.value == "Volkswagen") {
    var optionArray = [' ','Golf','New Beetle','Polo','T-Roc'];
  }

  for(var option in optionArray){
    var arrayValue = optionArray[option];
    var newoption = document.createElement("option");

    newoption.value = arrayValue;
	if(newoption.value == ' ')
		newoption.innerHTML = "Seleziona il modello";
	else
    	newoption.innerHTML = arrayValue;
    s2.options.add(newoption);
  }

  };
  
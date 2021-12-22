<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<head>
    
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>pagina di prova</title>
</head>

<body>

<form action="ricerca-auto" method="get">
<label for="marca">Inserisci marca</label>
<input type="text" name="marca" id="marca" value="">
<br>
<label for="modello">Inserisci modello</label>
<input type="text" name="modello" id="modello" value="">
<br>
<label for="prezzo">Inserisci prezzo (fino a)</label>
<input type="number" name="prezzo" id="prezzo" value="">
<br>
<input type="submit" value="Cerca">
</form>  

</body>
</html>
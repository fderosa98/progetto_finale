<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.List" %>
<%@ page import="it.generationitaly.model.Annuncio" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<% List<Annuncio> annunci = (List<Annuncio>)request.getAttribute("annunci"); %>

	<% if (!annunci.isEmpty()) { %>
	<table class="table table-striped" id="myTable">
		<thead>
			<tr class="table-dark">
				<th>Titolo</th>
				<th>Descrizione</th>
				<th>Marca Auto</th>
				<th>Modello Auto</th>
				<th>Prezzo Auto</th>
			</tr>
		</thead>
		<tbody>
		<% for(Annuncio annuncio : annunci) { %>
			<tr>
				<td><%= annuncio.getTitolo() %></td>
				<td><%= annuncio.getDescrizione() %></td>
				<td><%= annuncio.getAutomobile().getMarca() %></td>
				<td><%= annuncio.getAutomobile().getModello() %></td>
				<td><%= annuncio.getAutomobile().getPrezzo() %></td>
			</tr>
		<% } %>
		<% } else { %>
		<p> Nessuna corrispondenza trovata</p>
		<% } %>
		
		</tbody>
	</table>
	
	
</body>
</html>
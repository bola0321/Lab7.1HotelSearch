<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Results</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">

</head>
<body>


<table class= table>
	<thead>
		<tr>
			<th>Hotels in ${city}</th>		
		</tr>
	</thead>
	<tbody>
		<c:forEach var= "aHotel" items="${hotelList}">
			<tr>
				<td>${aHotel.name}<br>
				Price per Night: $${aHotel.pricePerNight}</td>
			
			</tr>
		
		</c:forEach>
	
	</tbody>


</table>

<a href="/" class="button">Start a New Search</a>


</body>
</html>
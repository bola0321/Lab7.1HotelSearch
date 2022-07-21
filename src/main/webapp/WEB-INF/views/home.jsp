<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search for Hotels</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
</head>
<body>

<h1>Hotel Search</h1>

<form class= "form" action ="/results" method= "post">
	
	<label for="city">Choose city:</label>
	<select name="city" id="city">
		<option value="Chicago">Chicago</option>
		<option value="Detroit">Detroit</option>
		<option value="New York">New York</option>
	</select>
	<label for="maxPrice"> Max Price Per Night: </label>
	<input type="text" name="pricePerNight" placeholder="pricePerNight">
	<br>	
	<input class="button" type="submit" value="Go!">
	
</form>


</body>
</html>
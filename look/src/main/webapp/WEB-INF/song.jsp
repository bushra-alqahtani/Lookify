<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>SongPage</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
  </head>
 <body>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
	<div class="container mt-5">
	
	<div class="row gx-5">
		<div class="col m-5">
			<h1>Song Details </h1>
		</div>
		
		<div class="col m-5">
			<a href="/dashboard" class="btn btn-info text-end">go back</a>
		</div>
	</div>
	<br>
	<h3>Title: <c:out value="${look.getName()}"/></h3><br>
	<h3>Artist: <c:out value="${look.getArtist()}"/></h3><br>
	<h3>Rating: <c:out value="${look.getRating()}"/> / 10</h3>
	</div>
</body>
</html>
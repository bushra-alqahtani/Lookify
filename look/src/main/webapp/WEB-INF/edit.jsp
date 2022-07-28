<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>edit</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
  </head>
  <body>
  
  <div class="container m-5">
	<div class="row gx-5">
		<div class="col m-5">
			<h1> Edit Song </h1>
		</div>
		<div class="col m-5">
			<a href="/dashboard" class="btn btn-info">go back</a>
		</div>
	</div>
	
	
	
<form:form action="/song/${look.getId()}/edit" method="post" modelAttribute="lookify" >
 <input type="hidden" name="_method" value="put">
	   <div class="mb-3">
	    <label  class="form-label">Title :</label>
	    <input type="text" class="form-control" name="name" value="<c:out value="${look.getName()}"/>">
	    <form:errors path="name" class="text-danger"/>
	  </div>
   
   
   
   	   <div class="mb-3">
	    <label  class="form-label">Artist :</label>
	    <input type="text" class="form-control" name="artist" value="<c:out value="${look.getArtist()}"/>">
	    <form:errors path="artist" class="text-danger"/>
	  </div>
	  
	  
	  
	  <div class="mb-3">
	    <label  class="form-label">Rating 1-10 :</label>
	    <input type="number" class="form-control" name="rating" value="<c:out value="${look.getRating()}"/>">
	    <form:errors path="rating" class="text-danger"/>
	  </div>
	

    	<input type="submit" value="Submit"/>
</form:form>
 </div>
 </body>
 </html>





    
    
  
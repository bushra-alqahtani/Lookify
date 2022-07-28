<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
  </head>
  <body>
  
  
  <nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" href="/songs/new">Add New</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Top Songs</a>
        </li>
      </ul>
      
      <form class="d-flex" role="search" action="/search" method="get">
        <input class="form-control me-2" type="text" name="artist" placeholder=" <c:out value="${artist}"/>" aria-label="Search" >
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
  <div class="container m-5">
    <h1>All Songs</h1>
    <br>
    
  <table  class="table table-striped table-hover">
  <thead>
    <tr>
      <th scope="col">title</th>
      <th scope="col">rating</th>
      <th scope="col">show</th>
      <th scope="col">edit</th>
      <th scope="col">delete</th>
      
        
    </tr>
  </thead>
  
  <tbody>
  <c:forEach  items="${all}" var="i">
	    <tr>
		      <td><c:out value = "${i.getName()}"/></td>
		      <td><c:out value = "${i.getRating()}"/></td>
		      <td><a href="/songs/${i.id}">show</a></td>
		      <td><a href="/song/${i.id}/edit">edit</a></td>
		      <td><a href="/song/${i.id}/delete" class="btn btn-danger">delete</a></td>
	    </tr>
    </c:forEach>
  
  </tbody>
</table>
</div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
  </body>
</html>
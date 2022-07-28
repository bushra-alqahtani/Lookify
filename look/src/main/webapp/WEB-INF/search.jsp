
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<!DOCTYPE html>
<html xmlns:th="www.thymeleaf.org">
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-eMNCOe7tC1doHpGoWe/6oMVemdAVTMs2xqW4mwXrXsW0L84Iytr2wi5v2QjrP/xp" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js" integrity="sha384-cn7l7gDp0eyniUwwAZgrzD06kc/tftFf19TOAs2zVinnD/C7E91j9yyk5//jjpt/" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>SEARCH</title>
</head>
<body>
<div class="container mt-5">
<h2 align="center"> Result of Search <c:out value="${artist}"/> Artist</h2>
  <table class="table table-bordered table-sm mt-2">
    <thead>
      <tr>
      <th scope="col">title</th>
      <th scope="col">rating</th>
      <th scope="col">show</th>

    </tr>
    </thead>
  <tbody>
  <c:forEach  items="${look}" var="i">
	    <tr>
		      <td><c:out value = "${i.getName()}"/></td>
		      <td><c:out value = "${i.getRating()}"/></td>
		      <td><a href="/songs/${i.id}">show</a></td>
	    </tr>
    </c:forEach>
  
  </tbody>
  </table>
</div>
</body>
</html>
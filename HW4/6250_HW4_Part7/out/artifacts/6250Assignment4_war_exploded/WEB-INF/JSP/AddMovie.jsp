<%--
  Created by IntelliJ IDEA.
  User: liumingyu
  Date: 2/12/19
  Time: 6:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <title>Add New Movie</title>
</head>
<body>
<br/>
<hr/>
<h1></h1>
<div class="row">
    <div class="col-md-4"></div>
    <div class="col-md-4">
    <form action="movie.htm" method="POST">
        <input type="hidden" value="insert" name="option" />
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">Movie Title: </label>
            <input class="form-control" type="text" name="title" placeholder="Movie Title" required><br />
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">actor :</label>
            <input class="form-control" type="text" name="actor" required placeholder="Actor"><br />
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">actress :</label>
            <input class="form-control" type="text" name="actress" required placeholder="Actress"><br />
        </div>
        <div class="form-group">
            <label class="col-form-label col-form-label-lg">genre :</label>
            <input class="form-control" type="text" name="genre" required placeholder="Genre"><br />
        </div>

        <div class="form-group">
            <label class="col-form-label col-form-label-lg">year :</label>
    <input class="form-control" type="number" name="year" placeholder="ex. 2019" required ><br />
        </div>

        <button class="btn btn-small btn-info" type="submit" value="Add Movie">Add Movie</button>
</form>
    </div>
    <div class="col-md-4">

    </div>
</div>
<br>
<div class="row">
    <div class="col-md-4">
<c:if test="${requestScope.status != null}">
    <c:out value="${requestScope.status}"/>

</c:if>
</div>
</div>

</body>
</html>
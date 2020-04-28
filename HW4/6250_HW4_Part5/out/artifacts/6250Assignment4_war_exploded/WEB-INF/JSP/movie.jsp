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
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <title>Movie</title>
</head>

<body>
<br/>
<hr/>
<div class="container" style=" padding-top: 30px">
    <h1></h1>
    <div class="row">
        <h2></h2>
        <div class="form-group">

<h1>Welcome to Our Movie Store</h1>
            <div class="form-group">
                <label for="exampleSelect1">Please make your selection below</label><br/>
            </div>
            <div class="col-sm-4">
                <%--<form action="part.htm" method="POST">--%>
                    <%--<input type="hidden" value="" name="option" />--%>
                    <%--<input type="submit" value="Home"/>--%>
                <%--</form>--%>
<form action="movie.htm" method="POST">
    <select class="form-control" id="exampleSelect1" name="option">
        <option></option>
        <option value="browse">Browse Movies</option>
        <option value="add">Add New Movie to Database</option>
    </select>
    <h3></h3>
    <button class="btn btn-small btn-info" type="submit" value="Send">Send</button>
</form>
</div>
<br><br>
        </div>
    </div>
</div>


</body>
</html>
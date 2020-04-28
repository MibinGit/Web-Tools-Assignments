<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add New Movie</title>
    </head>

    <body>
        <div class = "container">
            <div class = "jumbotron">
                <h1>Part 5. Programming Assignment</h1>
                <br>
                <p>Please enter the details below!</p>
                <p>All details should be included!</p>
            </div>

            <form class = "form-horizontal" action = "movie.htm" method = "post">
                <input type = "hidden" value = "insert" name = "option" />
                <fieldset>
                    <div class = "form-group">
                        <label><strong>Movie Title : </strong></label>
                        <input class = "form-control" type = "text" placeholder = "Movie Title" name = "title" required = "true">
                    </div>

                    <div class = "form-group">
                        <label><strong>Lead Actor : </strong></label>
                        <input class = "form-control" type = "text" placeholder = "Lead Actor" name = "actor" required = "true">
                    </div>

                    <div class = "form-group">
                        <label><strong>Lead Actress : </strong></label>
                        <input class = "form-control" type = "text" placeholder = "Lead Actress" name = "actress" required = "true">
                    </div>

                    <div class = "form-group">
                        <label><strong>Genre : </strong></label>
                        <input class = "form-control" type = "text" placeholder = "Genre" name = "genre" required = "true">
                    </div>

                    <div class = "form-group">
                        <label><strong>Year : </strong></label>
                        <input class = "form-control" type = "number" min = "1500" max = "2050" step = "1" placeholder = "Year" name = "year" required = "true">
                    </div>

                    <br>
                    <div class = "text-center" id = "replaceSection">
                        <button type = "submit" class = "btn btn-primary btn-lg">Add Movie</button>
                    </div>
                </fieldset>
            </form>
        </div>

        <div class = "container">
            <c:if test = "${requestScope.status != null}">
                <h4><c:out value = "${requestScope.status}"/>!</h4>
            </c:if>
        </div>
    </body>
</html>
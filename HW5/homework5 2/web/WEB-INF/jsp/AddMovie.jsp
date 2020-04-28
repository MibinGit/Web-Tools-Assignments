<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
    <head>
        <title>Add New Movie</title>
        <link rel="stylesheet" href = "https://bootswatch.com/4/litera/bootstrap.css">
        <script src = "https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
        <script src = "https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
        <script src = "https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>
    </head>

    <body>
        <div class = "container">
            <div class = "jumbotron">
                <h1>Part 6. Programming Assignment</h1>
                <br>
                <p>Please enter the details below!</p>
                <p>All details should be included!</p>
            </div>

            <form:form action = "/movie/add" method = "post">
                <input type = "hidden" value = "insert" name = "option" />
                <fieldset>
                    <div class = "form-group">
                        <label><strong>Movie Title : </strong></label>
                        <input class = "form-control" type = "text" placeholder = "Movie Title" name = "title" required = "true">
                        <form:errors path = "title"/>
                    </div>

                    <div class = "form-group">
                        <label><strong>Lead Actor : </strong></label>
                        <input class = "form-control" type = "text" placeholder = "Lead Actor" name = "actor" required = "true">
                        <form:errors path = "actor"/>
                    </div>

                    <div class = "form-group">
                        <label><strong>Lead Actress : </strong></label>
                        <input class = "form-control" type = "text" placeholder = "Lead Actress" name = "actress" required = "true">
                        <form:errors path = "actress"/>
                    </div>

                    <div class = "form-group">
                        <label><strong>Genre : </strong></label>
                        <input class = "form-control" type = "text" placeholder = "Genre" name = "genre" required = "true">
                        <form:errors path = "genre"/>
                    </div>

                    <div class = "form-group">
                        <label><strong>Year : </strong></label>
                        <input class = "form-control" type = "number" min = "1500" max = "2050" step = "1" placeholder = "Year" name = "year" required = "true">
                        <form:errors path = "year"/>
                    </div>

                    <br>
                    <div class = "text-center" id = "replaceSection">
                        <button type = "submit" class = "btn btn-primary btn-lg" value = "Add Movie">Add Movie</button>
                    </div>
                </fieldset>
            </form:form>
        </div>
    </body>
</html>
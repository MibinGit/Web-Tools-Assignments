<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
    <head>
        <title>Part 6. Programming Assignment</title>
        <meta charset = "utf-8">
        <meta name = "viewport" content = "width=device-width, initial-scale=1">
        <link rel = "stylesheet" href = "https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
        <script src = "https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
        <script src = "https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>

    <body>
        <div class = "row">
            <div class = "container">
                <div class = "jumbotron">
                    <h1>Part 6. Programming Assignment</h1>
                    <br>
                    <p>Welcome to our Movie Store!</p>
                    <p>Please make your selection below!</p>
                </div>

                <div class = "text-center" id = "replaceSection">
                    <div class = "form-horizontal" >
                        <form>
                            <select class = "form-control" id = "exampleSelect1" name = "option" onchange = "window.location=this.value;">
                                <option></option>
                                <option value = "/movie/search">Browse Movies</option>
                                <option value = "/movie/add">Add New Movie to Database</option>
                            </select><br>
                            <%--<div class = "text-center" id = "replaceSection2">--%>
                            <%--<button class = "btn btn-primary btn-lg" type = "submit" value = "Send">Submit</button>--%>
                            <%--</div>--%>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
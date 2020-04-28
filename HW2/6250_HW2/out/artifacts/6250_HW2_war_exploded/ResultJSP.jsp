<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
    <head>
        <title>Part 7/8. Programming Assignment</title>
        <meta charset = "utf-8">
        <meta name = "viewport" content = "width=device-width, initial-scale=1">
        <link rel = "stylesheet" href = "https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
        <script src = "https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
        <script src = "https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>

    <body>
        <div class = "container">
            <div class = "jumbotron">
                <h1>Part 7/8. Programming Assignment</h1>
                <br>
                <p>The confirm page!</p>
                <p>You have added the data into database successfully!</p>
            </div>

            <h2><%= request.getAttribute("result")%></h2>
            <button type = "button" class = "btn btn-link"><a href=<%= request.getAttribute("formerpage")%>>Click Here to Go Back to The Homepage</a></button>
        </div>
    </body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
    <head>
        <title>Part 7. Programming Assignment</title>
        <meta charset = "utf-8">
        <meta name = "viewport" content = "width=device-width, initial-scale=1">
        <link rel = "stylesheet" href = "https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
        <script src = "https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
        <script src = "https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>

    <body>
        <div class = "container">
            <div class = "jumbotron">
                <h1>Part 7. Programming Assignment</h1>
                <br>
                <p>Please enter the details below!</p>
                <p>All details should be included!</p>
            </div>

            <form class = "form-horizontal" action = "/addmovie" method = "post">
                <fieldset>
                    <div class = "form-group">
                        <label><strong>Movie Title : </strong></label>
                        <input class = "form-control" type = "text" placeholder = "Movie Title" name = "title">
                    </div>

                    <div class = "form-group">
                        <label><strong>Lead Actor : </strong></label>
                        <input class = "form-control" type = "text" placeholder = "Lead Actor" name = "actor">
                    </div>

                    <div class = "form-group">
                        <label><strong>Lead Actress : </strong></label>
                        <input class = "form-control" type = "text" placeholder = "Lead Actress" name = "actress">
                    </div>

                    <div class = "form-group">
                        <label><strong>Genre : </strong></label>
                        <input class = "form-control" type = "text" placeholder = "Genre" name = "genre">
                    </div>

                    <div class = "form-group">
                        <label><strong>Year : </strong></label>
                        <input class = "form-control" type = "number" min = "1500" max = "2050" step = "1" placeholder = "Year" name = "year">
                    </div>

                    <br>
                    <div class = "text-center" id = "replaceSection">
                        <button type = "submit" class = "btn btn-primary btn-lg">Add Movie</button>
                    </div>
                </fieldset>
            </form>
        </div>
    </body>
</html>
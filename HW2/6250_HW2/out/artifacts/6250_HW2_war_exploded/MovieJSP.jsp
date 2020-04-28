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
        <div class = "row">
            <div class = "container">
                <div class = "jumbotron">
                    <h1>Part 7. Programming Assignment</h1>
                    <br>
                    <p>Welcome to our Movie Store!</p>
                    <p>Please make your selection below!</p>
                </div>

                <div class = "text-center" id = "replaceSection">
                    <div class = "form-horizontal" >
                        <form action = "/csv" method = "post">
                            <div class = "form-group">
                                <label class = "col-form-label"><strong>Please select one action you want to perform: </strong></label>
                                <select class = "form-control" id = "exampleSelect1" onchange = "window.location=this.value;">
                                    <option></option>
                                    <option value = "/searchmovie">Browse Movies</option>
                                    <option value = "/addmovie">Add New Movie to Database</option>
                                </select>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>


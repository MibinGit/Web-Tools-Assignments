<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
    <head>
        <title>Part 4. Programming Assignment</title>
        <meta charset = "utf-8">
        <meta name = "viewport" content = "width=device-width, initial-scale=1">
        <link rel = "stylesheet" href = "https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
        <script src = "https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
        <script src = "https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>

    <body>
        <div class = "container">
            <div class = "jumbotron">
                <h1>Part 4. Programming Assignment</h1>
                <br>
                <p>Read the attached CSV file using CsvJdbc Driver!</p>
                <p>Take the file SalesOrder.csv for example!</p>
            </div>
            <div class = "text-center" id = "replaceSection">
                <div class = "form-horizontal" >
                    <form action = "csv.htm" method = "post">
                        <div class = "form-group">
                            <label class = "col-form-label"><strong>Please input any csv file name in the following textfield: </strong></label>
                            <input type = "text" class = "form-control" placeholder = "CSV Name" name = "inputName" required = "true">
                            <input type = "hidden" value = "csvlist" name = "option" />
                        </div>

                        <button type = "submit" class = "btn btn-primary btn-lg btn-block">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>

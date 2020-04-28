<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql" %>
<%@ page isELIgnored="false" %>

<html>
    <head>
        <title>Part 5. Programming Assignment</title>
        <meta charset = "utf-8">
        <meta name = "viewport" content = "width=device-width, initial-scale=1">
        <link rel = "stylesheet" href = "https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
        <script src = "https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
        <script src = "https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>

    <body>
        <div class = "container">
            <div class = "jumbotron">
                <h1>Part 5. Programming Assignment</h1>
                <br>
                <p>Answer the following questions!</p>
                <p>You can answer it sequentially or reverse it!</p>
            </div>

            <div class = "row">
                <div class = "col-md-3">
                    <div class = "col-md-8">
                        <form action = "/quiz2.htm" method = "post">
                            <h1></h1>
                            <button type = "input" class = "btn btn-primary" name = "_target1" style = "width: 100px;">Last</button>
                            <h1></h1>
                            <button type = "input" class = "btn btn-primary" name = "_target3" style = "width: 100px;">Next</button>
                            <h1></h1>
                            <button type = "input" class = "btn btn-primary" name = "_cancel" style = "width: 100px;">Cancel</button>
                        </form>
                    </div>
                </div>

                <form action = "/quiz2.htm" method = "post">
                    <h2>Which statement is not true about ServletContext?</h2>

                    <div class = "form-check">
                        <label class = "form-check-label">
                            <input type = "radio" class = "form-check-input" name = "answer2" value = "There is one ServletContext per one application">
                            There is one ServletContext per one application
                        </label>
                    </div>

                    <div class = "form-check">
                        <label class = "form-check-label">
                            <input type = "radio" class = "form-check-input" name = "answer2" value = "Generally it is used to get web app parameters">
                            Generally it is used to get web app parameters
                        </label>
                    </div>

                    <div class = "form-check">
                        <label class = "form-check-label">
                            <input type = "radio" class = "form-check-input" name = "answer2" value = "We can get Server Information though it">
                            We can get Server Information though it
                        </label>
                    </div>

                    <div class = "form-check">
                        <label class = "form-check-label">
                            <input type = "radio" class = "form-check-input" name = "answer2" value = "There is one ServletContext per one servlet">
                            There is one ServletContext per one servlet
                        </label>
                    </div>

                    <button type = "input" class = "btn btn-primary btn-lg" name = "_target3">Submit</button>
                </form>
            </div>
        </div>
    </body>
</html>
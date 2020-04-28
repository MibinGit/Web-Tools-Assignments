<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
    <head>
        <title>Part 6. Programming Assignment</title>
        <meta charset = "utf-8">
        <meta name = "viewport" content = "width=device-width, initial-scale=1">
        <link rel = "stylesheet" href = "https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
        <script src = "https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
        <script src = "https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>

    <body>
        <div class = "container">
            <div class = "jumbotron">
                <h1>Part 6. Programming Assignment</h1>
                <br>
                <p>Read the attached CSV file using CsvJdbc Driver!</p>
                <p>Take the file SalesOrder.csv for example!</p>
            </div>
        </div>

        <div class = "row" >
            <div class = "col-md-8" >
                <table class = "table">
                    <tbody>
                        <tr>
                            <c:forEach items="${csvcontents.getTitle()}" var="title">
                                <th>${title}</th>
                            </c:forEach>
                        </tr>

                        <c:forEach items="${csvcontents.getContents()}" var="nowcontents">
                            <tr>
                                <c:forEach items="${nowcontents}" var="values">
                                    <td>${values}</td>
                                </c:forEach>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>

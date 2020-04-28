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
                <p>The result is as following!</p>
            </div>

            <div>
                <strong>Which life cycle method is called once in servlet life?</strong><br>
                ${requestScope.get("answer").getAnswer1()}<br>

                <strong>Which statement is not true about ServletContext?</strong><br>
                ${requestScope.get("answer").getAnswer2()}<br>

                <strong>Which interface contain servlet life-cycle methods?</strong><br>
                ${requestScope.get("answer").getAnswer3()}<br>

                <strong>Which life-cycle method make the servlet for garbage?</strong><br>
                ${requestScope.get("answer").getAnswer4()}<br>
            </div>
        </div>
    </body>
</html>

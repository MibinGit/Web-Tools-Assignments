<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="ex"  uri="/WEB-INF/TLDS/customTag.tld" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                <h1>Part 6. Programming Assignment</h1>
                <br>
                <p>Read the attached CSV file using CsvJdbc Driver!</p>
                <p>Take the file SalesOrder.csv for example!</p>
            </div>
        </div>
        <hr>

        <c:choose>
            <c:when test="${pageContext.request.isUserInRole('admin')}">
                <table>
                    <tbody>
                    <ex:csv filename = "${requestScope.get('filename')}"></ex:csv>
                    </tbody>
                </table>
            </c:when>
            <c:otherwise>
                <strong>Access Denied, You do not have permissions</strong>
            </c:otherwise>
        </c:choose>
    </body>
</html>
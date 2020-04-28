<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                <p>Welcome to our Movie Store!</p>
                <p>Here are the search result!</p>
            </div>
        </div>

        <div class = "container">
            <div class = "jumbotron">
                <table class = "table">
                    <tbody>
                    <c:if test = "${requestScope.list != null}">
                        <c:set var = "list" value = "${requestScope.list}" scope = "request"/>

                        <table border = "1">
                            <thead>
                            <th>Title</th>
                            <th>Actor</th>
                            <th>Actress</th>
                            <th>Genre</th>
                            <th>Year</th>
                            </thead>
                            <tbody>
                            <c:forEach var = "m" items = "${list}">
                                <tr>
                                    <td>${m.getTitle()}</td>
                                    <td>${m.getActor()}</td>
                                    <td>${m.getActress()}</td>
                                    <td>${m.getGenre()}</td>
                                    <td>${m.getYear()}</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </c:if>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
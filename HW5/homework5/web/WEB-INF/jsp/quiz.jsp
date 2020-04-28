<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql" %>
<%@ page isELIgnored="false" %>

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
                <p>Answer the following questions!</p>
                <p>You can only answer it sequentially!</p>
            </div>

            <c:choose>
                <c:when test = "${requestScope.get('type') == 'result'}">
                    <c:forEach items = "${sessionScope.keySet()}" var = "s">
                        <div class = "form-check">
                            <label class = "form-check-label">
                                <strong><c:out value = "${s}"/></strong><br>
                                <c:out value = "${sessionScope.get(s)}"/><br>
                            </label>
                        </div>
                    </c:forEach>
                </c:when>

                <c:otherwise>
                    <form action = "${requestScope.get('nextUrl')}" method = "post">
                        <legend><c:out value = "${requestScope.get('quiz').getQuestion()}"/></legend>
                        <input type = "hidden" name = "question" value = "${requestScope.get('quiz').getQuestion()}"/>

                        <c:forEach items = "${requestScope.get('quiz').getAnswers()}" var = "s">
                            <div class = "form-check">
                                <label class = "form-check-label">
                                    <input type = "radio" class = "form-check-input" name = "answer" value = "${s}">
                                        ${s}
                                </label>
                            </div>
                        </c:forEach>

                        <button type = "submit" class = "btn btn-primary btn-lg">Submit</button>
                    </form>
                </c:otherwise>
            </c:choose>
        </div>
    </body>
</html>
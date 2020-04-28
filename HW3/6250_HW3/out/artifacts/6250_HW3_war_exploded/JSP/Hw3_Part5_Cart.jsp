<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                <p>The Following items has been added to your shopping cart successfully!</p>
            </div>
        </div>

        <div class = "container">
            <div class = "jumbotron">
                <table class = "table">
                    <tbody>
                    <tr>
                        <th>Item</th>
                        <th>Operation</th>
                    </tr>

                    <c:forEach var = "book" items = "${sessionScope.get('book')}" >
                        <tr>
                            <th>${book}</th>
                            <th>
                                <form action = "delete" method = "post">
                                    <input type = "hidden" name = "Delete" value = "${book}"/>
                                    <input type = "hidden" name = "kind" value = "book"/>

                                    <button onclick = "this.form.submit()" type = "button" class = "btn btn-primary btn-sm" name = "delete" value = "${book}">Delete</button>
                                </form>
                            </th>
                        </tr>
                    </c:forEach>

                    <c:forEach items = "${sessionScope.get('cd')}" var = "cd">
                        <tr>
                            <th>${cd}</th>
                            <th>
                                <form action = "delete" method = "post">
                                    <input type = "hidden" name = "Delete" value = "${cd}"/>
                                    <input type = "hidden" name = "kind" value = "cd"/>

                                    <button onclick = "this.form.submit()" type = "button" class = "btn btn-primary btn-sm" name = "delete" value = "${cd}">Delete</button>
                                </form>
                            </th>
                        </tr>
                    </c:forEach>
                    </tbody>

                    <c:forEach items = "${sessionScope.get('laptop')}" var = "laptop">
                        <tr>
                            <th>${laptop}</th>
                            <th>
                                <form action = "delete" method = "post">
                                    <input type = "hidden" name = "Delete" value = "${laptop}"/>
                                    <input type = "hidden" name = "kind" value = "laptop"/>
                                    <button onclick = "this.form.submit()" type = "button" class = "btn btn-primary btn-sm" name = "delete" value = "${laptop}">Delete</button>
                                </form>
                            </th>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <a class = "nav-link" href = "http://localhost:8080/JSP/Hw3_Part5.jsp"> [ Back ] </a>
            </div>
        </div>
    </body>
</html>

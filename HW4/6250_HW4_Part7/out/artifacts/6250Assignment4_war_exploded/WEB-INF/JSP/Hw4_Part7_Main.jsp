<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <title>Main Programming Assignment</title>
        <meta charset = "utf-8">
        <meta name = "viewport" content = "width=device-width, initial-scale=1">
        <link rel = "stylesheet" href = "https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
        <script src = "https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
        <script src = "https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
        <script src = "https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>
    </head>

    <body>
        <nav class = "navbar navbar-expand-md bg-dark navbar-dark">
            <a class = "navbar-brand" href = "#">Assignemnt</a>

            <button class = "navbar-toggler" type = "button" data-toggle = "collapse" data-target = "#collapsibleNavbar">
                <span class = "navbar-toggler-icon"></span>
            </button>

            <div class = "collapse navbar-collapse" id = "collapsibleNavbar">
                <ul class = "navbar-nav">
                    <li class = "nav-item">
                        <form action = "Hw4.htm" method = "POST">
                            <input type = "hidden" value = "csv" name = "option" />
                            <input class = "btn btn-link" type = "submit" value = "PART4 LINK    "/>
                        </form>
                    </li>

                    <li class = "nav-item">
                        <form action = "Hw4.htm" method = "POST">
                            <input type = "hidden" value = "movie" name = "option" />
                            <input class = "btn btn-link" type = "submit" value = "PART7 LINK"/>
                        </form>
                    </li>
                </ul>
            </div>
        </nav>
        <br>

        <div class = "jumbotron">
            <h3><b>Part 1 - Reading Assignment (More Servlets and JSP)</b></h3><br>
            <p>Chapter 04. Programmatic Security</p>
            <p>https://www.safaribooksonline.com/library/view/core-servlets-and/0131482602/ch04.html</p>
        </div>

        <div class = "jumbotron">
            <h3><b>Part 2 - Reading Assignment (More Servlets and JSP)</b></h3><br>
            <p>Chapter 7. Tag Libraries: The Basics</p>
            <p>https://www.safaribooksonline.com/library/view/core-servlets-and/0131482602/ch07.html</p>
            <p>Chapter 8. Tag Libraries: Advanced Features</p>
            <p>https://www.safaribooksonline.com/library/view/core-servlets-and/0131482602/ch08.html</p>
        </div>

        <div class = "jumbotron">
            <h3><b>Part 3 - Reading Assignment (Spgring MVC Reference Documentation)</b></h3><br>
            <p>Chapter07 - The IoC container (7.1, 7.2, 7.3, 7.4, 7.5)</p>
            <p>https://docs.spring.io/spring/docs/4.3.14.RELEASE/spring-framework-reference/htmlsingle/#beans</p>
        </div>

        <div class = "jumbotron">
            <h3><b>Part 4 - Programming Assignment</b></h3><br>
            <p>Redo HW2–Part5 by utilizing a CustomTag in the JSP page to display the data retrieved from CSV.</p>
            <p>The name of the CSV file is to be passed to CustomTagHandler class either as an attribute or body content (you decide which one to use).</p>
            <p>In the doTag method, you simply read the name of the CSV file using CsvJdbc, and retrieve all the data and display on the JSP page.</p>
            <p>You may create the tabular format in the doTag method.</p>
            <p>Add a Programming Security [Programming Security is a reading assignment in Part 1]</p>
        </div>

        <div class = "jumbotron">
            <h3><b>Part 5 - Programming Assignment</b></h3><br>
            <p>Convert HW2–Part 7 to Spring MVC Application.</p>
            <p>Map all the controllers using SimpleUrlHandlerMapping.</p>
        </div>

        <div class = "jumbotron">
            <h3><b>Part 6 - Programming Assignment</b></h3><br>
            <p>Redo Part 5 of this assignment – Map all the controllers using ControllerClassNameHandlerMapping.</p>
        </div>

        <div class = "jumbotron">
            <h3><b>Part 7 - Programming Assignment</b></h3><br>
            <p>Redo Part 5 of this assignment – Map all the controllers using BeanNameUrlHandlerMapping.</p>
        </div>
    </body>
</html>
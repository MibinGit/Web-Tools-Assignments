<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                        <a class = "nav-link" href = "/quiz/1.htm">PART4 LINK</a>
                    </li>

                    <li class = "nav-item">
                        <a class = "nav-link" href = "/quiz2.htm">PART5 LINK</a>
                    </li>

                    <li class = "nav-item">
                        <a class = "nav-link" href = "/movie/.htm">PART6 LINK</a>
                    </li>

                    <li class = "nav-item">
                        <a class = "nav-link" href = "/movie/.htm">PART7 LINK</a>
                    </li>
                </ul>
            </div>
        </nav>
        <br>

        <div class = "jumbotron">
            <h3><b>PART 1. Reading Assignment [Ignore Annotations (@ sign indicates annotation)]</b></h3><br>
            <p>https://www.safaribooksonline.com/library/view/spring-in-action/9781617291203/kindle_split_009.html</p>
            <p>https://www.safaribooksonline.com/library/view/spring-in-action/9781617291203/kindle_split_010.html</p>
        </div>

        <div class = "jumbotron">
            <h3><b>PART 2. Reading Assignment (ignore the annotation part, and anything we did not discuss in the class).</b></h3><br>
            <p>http://docs.jboss.org/hibernate/orm/5.4/quickstart/html_single/#tutorial-native</p>
        </div>

        <div class = "jumbotron">
            <h3><b>PART 3. Reading Assignment (ignore Maven Installation)</b></h3><br>
            <p>https://www.safaribooksonline.com/library/view/beginning-hibernate-for/9781484223192/A321250_4_En_1_Chapter.html</p>
            <p>https://www.safaribooksonline.com/library/view/beginning-hibernate-for/9781484223192/A321250_4_En_2_Chapter.html</p>
        </div>

        <div class = "jumbotron">
            <h3><b>PART 4. Programming Assignment</b></h3><br>
            <p>Using more than one Controller is probably the last thing you want to do for a simple application, considering the maintenance involved for each Controller.</p>
            <p>In this assignment, you are to develop a simple application using only one Controller. The application developed is an online quiz similar to the one in the following URL:</p>
            <p>http://www.javatpoint.com/directload.jsp?val=200</p>
            <p>The UI does not need to be the same. Whichever UI you like, that is fine as soon as the functionality is the same.</p>
            <p>The problem with using one Controller is that each form will submit to the same servlet and the same service method will be invoked.</p>
            <p>How do you know which form to display next? One solution is simply done by incorporating a hidden field or a query string parameter,</p>
            <p>call it page, with a value of the form number. In the first form, the page field will have the value 1, and in the second form this field will have the value of 2.</p>
            <p>When the Controller is called, the service method is invoked to get the page number. Questions to be passed to the View page as an ArrayList with the ModelAndView.</p>
            <p>You will use JSTL/EL to display the questions in the View Page. The entire application needs to be developed with only 1 Controller,</p>
            <p>and 1 View page. Use a URL pattern in the following format /quiz/*.htm</p>
            <p>This request will be handled by the same Controller. When the URL is /quiz/1.htm, question 1 is to be displayed, and when it is /quiz/2.htm, question 2 is to be displayed,</p>
            <p>and so on. Keep the answers in a HttpSession object. When the last question is submitted, you should retrieve the answers from the Session object, display on the View page.</p>
        </div>

        <div class = "jumbotron">
            <h3><b>PART 5. Programming Assignment</b></h3><br>
            <p>Redo Part 4 of this assignment using AbstractWizardFormController. Add Previous, Next and Cancel Buttons to display the next or previous page.</p>
            <p>Just like the AbstractFormController, this was deprecated with Spring 3.2.5, and removed from the later versions. There is a better way of doing it (we will discuss later),</p>
            <p>but this class will help you understand how the request goes from one page to another.</p>
            <p>Also, the class does not exist as a SuperClass, but the behavior could be implemented in a plain class using Annotations.</p>
            <p>Question1--> Question2 --> Question3 --> . . . --> ResultsPage</p>
            <p>You need to include Spring 3.2 when creating the web application, the same way we did with AbstractFormController.</p>
            <p>In order to use AbstractWizardFormController, just create a plain Java class, and extend to AbstractWizardFormController.</p>
            <p>Once you create the Controller class, you need to override validatePage(), processFinish() and processCancel() methods.</p>
            <p>Please look at the Spring JavaDoc page to see the methods:</p>
            <p>https://docs.spring.io/autorepo/docs/spring/3.2.5.RELEASE/javadoc-api/org/springframework/web/servlet/mvc/AbstractWizardFormController.html</p>
        </div>

        <div class = "jumbotron">
            <h3><b>PART 6. Programming Assignment</b></h3><br>
            <p>Redo HW2 Part7 using SimpleFormController and Hibernate. Searching Movies to be done by MovieId as the Hibernate Session objects’s get method requires Serializable ID</p>
            <p>(which is basically the PK in the DB, but SerializableID in Java).</p>
            <p>Use a Spring Validator to validate the fields. You could have 2 different FormControllers for saving and searching.</p>
            <p>UI may be different from the previous implementation in HW2. The first page will be the form-view, and the results page will be the success-view.</p>
            <p>Create the SessionFactory the old way from the Configuration instance.</p>
        </div>

        <div class = "jumbotron">
            <h3><b>PART 7. Programming Assignment</b></h3><br>
            <p>Redo Part 6 of this assignment, but create the SessionFactory the new way.</p>
        </div>
    </body>
</html>
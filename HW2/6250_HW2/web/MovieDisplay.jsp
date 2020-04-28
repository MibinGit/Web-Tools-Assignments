<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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

            <div class = "row" >
                <div class = "col-md-8" >
                    <table class = "table">
                        <tbody>
                        <%
                            ArrayList<List<String>> display = (ArrayList<List<String>>) request.getAttribute("list");
                            System.out.println(display.size());
                            try
                            {
                                for(int m = 0; m < display.size(); m ++)
                                {
                                    ArrayList<String> sublist = (ArrayList<String>) display.get(m);

                                    if(m == 0)
                                    {
                                        out.println("<tr>");
                                        for (String csv : sublist)
                                        {
                                            out.println("<th>" + csv + "</th>");
                                        }
                                        out.println("</tr>");
                                    }

                                    else
                                    {
                                        out.println("<tr>");
                                        for (String csv : sublist)
                                        {
                                            out.println("<td>" + csv + "</td>");
                                        }
                                        out.println("</tr>");
                                    }
                                }
                            }

                            catch (Exception e)
                            {

                            }
                        %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>


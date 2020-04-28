<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Part 5. Programming Assignment</title>
        <meta charset = "utf-8">
        <meta name = "viewport" content = "width=device-width, initial-scale=1">
        <link rel = "stylesheet" href = "https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
        <script src = "https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
        <script src = "https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script type = "text/javascript">
            function showBooks()
            {
                document.getElementById("books").style.display = "";
                document.getElementById("cds").style.display = "none";
                document.getElementById("laptops").style.display = "none";
            }

            function showCds()
            {
                document.getElementById("books").style.display = "none";
                document.getElementById("cds").style.display = "";
                document.getElementById("laptops").style.display = "none";
            }

            function showLaptops()
            {
                document.getElementById("books").style.display = "none";
                document.getElementById("cds").style.display = "none";
                document.getElementById("laptops").style.display = "";
            }
        </script>
    </head>

    <body>
        <div class = "container">
            <div class = "jumbotron">
                <h1>Part 5. Programming Assignment</h1>
                <br>
                <p>Please select what you want to buy!</p>
            </div>

            <form class = "form-horizontal" method = "GET" id = "userinput">
                <div class = "form-group">
                    <p class = "text-center">
                        <button type = "button" class = "btn btn-link" onclick = "showBooks()"> Books </button>
                        <button type = "button" class = "btn btn-link" onclick = "showCds()"> Music </button>
                        <button type = "button" class = "btn btn-link" onclick = "showLaptops()"> Computers </button>
                    </p>
                </div>
            </form>

            <form class = "mainform" action = "/cart" method = "POST">
                <input type = "hidden" name = "kind" id = "kind" value = "cart"><br/>
                <div class = "text-right" id = "viewcart">
                    <button type = "submit" class = "btn btn-link"> [ View Cart ] </button>
                </div>
            </form>

            <form class = "mainform" action = "/cart" method = "POST">
                <input type = "hidden" name = "kind" id = "kind1" value = "book" required = "true"><br/>
                <div class = "jumbotron" id = "books">
                    <div class = "selectbooks">
                        <div>
                            <h3>Shop for Books</h3>
                            <br>
                        </div>
                        <label>
                            <input type = "checkbox" name = "book1" value = "Java Servlet Programming [$29.95]"> Java Servlet Programming [$29.95]
                        </label><br>

                        <label>
                            <input type = "checkbox" name = "book2" value = "Oracle Database Programming [$48.95]"> Oracle Database Programming [$48.95]
                        </label><br>

                        <label>
                            <input type = "checkbox" name = "book3" value = "System Analysis and Design With UML [$14.95]"> System Analysis and Design With UML [$14.95]
                        </label><br>

                        <label>
                            <input type = "checkbox" name = "book4" value = "Object Oriented Software Engineering [$35.99]"> Object Oriented Software Engineering [$35.99]
                        </label><br>

                        <label>
                            <input type = "checkbox" name = "book5" value = "Java Web Services [$27.95]"> Java Web Services [$27.95]
                        </label><br><br>
                        <button type = "submit" class = "btn btn-primary btn-sm"> Add to Cart </button>
                    </div>
                </div>
            </form>

            <form class = "mainform" action = "/cart" method = "POST">
                <input type = "hidden" name = "kind" id = "kind2" value = "cd" required = "true"><br/>
                <div class = "jumbotron" id = "cds" style = "display: none">
                    <div class = "selectcds">
                        <div>
                            <h3>Shop for CDs</h3>
                            <br>
                        </div>
                        <label>
                            <input type = "checkbox" name = "cd1" value = "I'm Going to Tell You a Secret by Madonna [$26.99]"> I'm Going to Tell You a Secret by Madonna [$26.99]
                        </label><br>

                        <label>
                            <input type = "checkbox" name = "cd2" value = "Baby One More Time by Britney Spears [$10.95]"> Baby One More Time by Britney Spears [$10.95]
                        </label><br>

                        <label>
                            <input type = "checkbox" name = "cd3" value = "Justified by Justin Timberlake [$9.97]"> Justified by Justin Timberlake [$9.97]
                        </label><br>

                        <label>
                            <input type = "checkbox" name = "cd4" value = "Loose by Nelly Furtado [$13.98]"> Loose by Nelly Furtado [$13.98]
                        </label><br>

                        <label>
                            <input type = "checkbox" name = "cd5" value = "Gold Digger by Kanye West [$27.99]"> Gold Digger by Kanye West [$27.99]
                        </label><br><br>
                        <button type = "submit" class = "btn btn-primary btn-sm"> Add to Cart </button>
                    </div>
                </div>
            </form>

            <form class = "mainform" action = "/cart" method = "POST">
                <input type = "hidden" name = "kind" id = "kind3" value = "laptop" required = "true"><br/>
                <div class = "jumbotron" id = "laptops" style = "display: none">
                    <div class = "selectlaptops">
                        <div>
                            <h3>Shop for Laptops</h3>
                            <br>
                        </div>
                        <label>
                            <input type = "checkbox" name = "laptop1" value = "Apple MacBook Pro with 13.3'' Display [$1299.99]"> Apple MacBook Pro with 13.3'' Display [$1299.99]
                        </label><br>

                        <label>
                            <input type = "checkbox" name = "laptop2" value = "Asus Laptop with Centrino 2 Black [$949.95]"> Asus Laptop with Centrino 2 Black [$949.95]
                        </label><br>

                        <label>
                            <input type = "checkbox" name = "laptop3" value = "HP Pavihon Laptop with Centrino 2 DV7 [$1199.95]"> HP Pavihon Laptop with Centrino 2 DV7 [$1199.95]
                        </label><br>

                        <label>
                            <input type = "checkbox" name = "laptop4" value = "Toshiba Sateite Laptop with Centrino 2 - Copper [$899.99]"> Toshiba Sateite Laptop with Centrino 2 - Copper [$899.99]
                        </label><br>

                        <label>
                            <input type = "checkbox" name = "laptop5" value = "Sony VAIO Laptop with Core 2 Duo Composition Pink [$779.99]"> Sony VAIO Laptop with Core 2 Duo Composition Pink [$779.99]
                        </label><br><br>
                        <button type = "submit" class = "btn btn-primary btn-sm"> Add to Cart </button>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
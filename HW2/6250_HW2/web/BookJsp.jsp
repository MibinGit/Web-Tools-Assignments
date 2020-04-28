<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
    <head>
        <title>Part 8. Programming Assignment</title>
        <meta charset = "utf-8">
        <meta name = "viewport" content = "width=device-width, initial-scale=1">
        <link rel = "stylesheet" href = "https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
        <script src = "https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
        <script src = "https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>

    <body>
        <div class = "container">
            <div class = "jumbotron">
                <h1>Part 8. Programming Assignment</h1>
                <br>
                <p>Please enter the number of books that you want!</p>
                <p>Then you will input more details in the next page!</p>
            </div>

            <div class = "row" id = "replaceSection">
                <form>
                    <fieldset>
                        <div class = "form-group">
                            <label class = "col-form-label" for = "inputNumber"><strong>How many books are you want to add? </strong></label>
                            <input type = "number" class = "form-control" placeholder = "Numbers" id = "inputNumber">
                        </div>
                    </fieldset>

                    <br>
                    <div class = "text-center">
                        <button type = "submit" class = "btn btn-primary btn-lg" onclick = "replace()" >Submit</button>
                    </div>
                </form>
            </div>
        </div>
    </body>

    <script>
        function replace()
        {
            var counts = document.getElementById("inputNumber").value;
            if(counts <= 0)
            {
                alert('Should Be Positive Number!')
                return;
            }

            var left = "<div class = 'col-md-2'></div><div class = 'col-md-8'><h2></h2><form action = '/book' method = 'post'><fieldset><table class = 'table table-bordered'><tr><th>ISBN</th><th>Book Title</th><th>Authors</th> <th>Price</th></tr>";

            for(var m = 1; m <= counts; m++)
            {
                addItem = "<tr>";
                addItem = addItem + "<td><input type = 'text' class = 'form-control' placeholder = 'ISBN' name = '"+ m + "_ISBN"+"'></td>";
                addItem = addItem + "<td><input type = 'text' class = 'form-control' placeholder = 'Title' name = '"+ m + "_Title"+"'></td>";
                addItem = addItem + "<td><input type = 'text' class = 'form-control' placeholder = 'Authors' name = '"+ m + "_Authors"+"'></td>";
                addItem = addItem + "<td><input type = 'number' step = '0.01' class = 'form-control' placeholder='Price' name='"+ m + "_Price"+"'></td>";
                addItem = addItem + "</td>";
                left = left + addItem;
            }
            var right = "</table><div class = \"text-center\"><button type = 'submit' class = 'btn btn-primary btn-lg'>Submit</button></div> </fieldset> </form> </div> <div class = 'col-md-2'></div>";
            left = left + right;
            document.getElementById("replaceSection").innerHTML = left;
        }
    </script>
</html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <title>MOVIE PAGE</title>
</head>
<body>
<br/>
<hr/>
<h1></h1>
<div class="row">
    <div class="col-md-4"></div>
    <div class="col-md-4">
        <form action="browser.htm" method="post">
            <fieldset>
                <legend>Search Movie</legend>
                <div class="form-group">
                    <input class="form-control " type="text" placeholder="keyword" id="inputLarge" name="keyword">
                </div>

                <fieldset class="form-group">
                    <div class="form-check">
                        <label class="form-check-label">
                            <input type="radio" class="form-check-input" id="title" value="title" name="type" checked="">
                            Search By Title
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label">
                            <input type="radio" class="form-check-input" id="actor" value="actor" name="type">
                            Search By Actor
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label">
                            <input type="radio" class="form-check-input" id="actress" value="actress" name="type">
                            Search By Actress
                        </label>
                    </div>
                </fieldset>
                <button type="submit" class="btn btn-small btn-info">Submit</button>
            </fieldset>
        </form>
    </div>
    <div class="col-md-4"></div>
</div>
</body>
</html>

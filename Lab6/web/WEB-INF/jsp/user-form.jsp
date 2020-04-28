<%-- 
    Document   : user-form
    Created on : 2019-2-23, 10:43:50
    Author     : kirito
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login page</title>
    </head>
    <body>
        <form:form commandName = "user" method = "post">
            <label>Username : </label><form:input path = "username" type = "text" />
            <label>Password : </label><form:input path = "password" type = "text" />
            <input type = "hidden" value = "login" name = "option" />
            <inout tyoe = "submit" value = "Login" />
        </form:form>
    </body>
</html>

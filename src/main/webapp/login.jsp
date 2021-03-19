<%-- 
    Document   : login
    Created on : 19-mar-2021, 21:13:52
    Author     : DAW-A
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>Restaurante Bosco</h1>
        <p>${mensaje}</p>
        <form action="ServletLogin" method="post">
            Usuario: <input type="text" name="usuario"><br>
            Password: <input type="passsword" name="password"><br>
            <input type="submit" value="Entrar">
        </form>
    </body>
</html>

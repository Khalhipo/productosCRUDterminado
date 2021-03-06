<%-- 
    Document   : insert
    Created on : 05-mar-2021, 20:35:56
    Author     : DAW-A
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <nav class="navbar navbar-expand-md bg-dark navbar-dark">
            <!-- Brand -->
            <a class="navbar-brand" href="#">Gestión productos</a>

            <!-- Toggler/collapsibe Button -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Navbar links -->
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item ">
                        <a class="nav-link" href="ServletProductos?op=listar">Listar</a><br>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="ServletProductos?op=insert1">Insertar</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">TPV</a>
                    </li>
                </ul>
            </div>
        </nav>
        <h1>Nuevo producto</h1>
        <form action="ServletProductos?op=insert2" method="get">
            <p><label>Nombre: <input class="form-control" type="text" name="nombre" required > </label></p>
            <p><label>Imagen: <input class="form-control" type="text" name="imagen" required > </label></p>
            <p><label>Categoría: <input class="form-control" type="text" name="categoria" required > </label></p>
            <p><label>Precio: <input class="form-control" type="text" name="precio" required > </label></p>
            <input type="hidden" name="op" required value="insert2"> 
            <input class="btn btn-primary" type="submit" value="Insertar" >       
        </form>

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</body>
</html>

<%-- 
    Document   : insert
    Created on : 05-mar-2021, 20:35:56
    Author     : DAW-A
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.Productos"%>
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
                    <li class="nav-item active">
                        <a class="nav-link" href="ServletProductos?op=listar">Listar</a><br>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ServletProductos?op=insert1">Insertar</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">TPV</a>
                    </li>
                </ul>
            </div>
        </nav>
        <h1>Actualiza producto</h1>

        <%
            Productos miProducto = (Productos) request.getAttribute("miProducto");
            String mensaje = (String) request.getAttribute("mensaje");
            String cadena = "";
            if(mensaje != null) {
                cadena = "<h2 id='mensaje' class='alert-success'>Producto actualizado</h2>";
            }
        %>
        <%= cadena %>
        <form action="ServletProductos" method="get">
            <p><label>Nombre: <input oninput="borrarMensaje()" class="form-control" type="text" name="nombre" value="<%= miProducto.getNombre()%>" required > </label></p>
            <p><label>Imagen: <input oninput="borrarMensaje()" class="form-control" type="text" name="imagen" value="<%= miProducto.getImagen()%>" required > </label></p>
            <p><label>Categoría: <input oninput="borrarMensaje()" class="form-control" type="text" name="categoria" value="<%= miProducto.getCategoria()%>" required > </label></p>
            <p><label>Precio: <input oninput="borrarMensaje()" class="form-control" type="text" name="precio" value="<%= miProducto.getPrecio()%>" required > </label></p>
            <input type="hidden" name="op" required value="update2"> 
            <input class="btn btn-primary" type="submit" value="Actualizar" >   
        </form>
            <script>
                function borrarMensaje() {
                    document.getElementById("mensaje").style.visibility = 'hidden';
                }
            </script>
            <script>
        window.onbeforeunload = confirmExit;
        function confirmExit() {
            return "Seguro que quiere salir?";
        }
            </script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>

<%-- 
    Document   : index
    Created on : 10-mar-2019, 21:09:05
    Author     : caleb
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="css/index.css" />
        <title>Lab1</title>
    </head>
    <body>
            <div class="wrapper fadeInDown">
                <div id="formContent">
                    <!--Titulo-->
                    <div class="fadeIn first">
                        <h1>Sistema De Gestión Académica</h1>
                    </div>

                    <!--Estructura del login-->
                    <form>
                        <input type="text" id="user" class="fadeIn second" name="usuario" placeholder="Usuario">
                        <input type="text" id="password" class="fadeIn third" name="contrasenna" placeholder="Contraseña">
                        <input id="iniciaSesion" type="submit" class="fadeIn fourth" value="Iniciar Sesión">
                    </form>
                </div>
            </div>
    </body>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="js/index.js"></script>
</html>

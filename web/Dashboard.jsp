<%-- 
    Document   : Dashboard
    Created on : 14-mar-2019, 22:34:14
    Author     : caleb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="css/dashboard.css" />
        <title>Dashboard</title>
    </head>
    <body>
        <div class="container">
            <!-- Encabezado -->
            <nav id="encabezado" class="navbar fixed-top navbar-expand-lg navbar-dark bg-primary">
                <span id="saludo" class="nav-link">Hola, Caleb</span>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                    <ul class="navbar-nav">
                        <li class="nav-item active">
                            <a class="nav-link" href="Dashboard.jsp">Dashboard<span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="Dashboard.jsp" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Gestiones
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <a id="gestionCarrera" class="dropdown-item gotoContenedor" url="pages/gestionCarreras.jsp">Carreras</a>
                                <a id="gestionCiclo" class="dropdown-item gotoContenedor" url="pages/gestionCiclos.jsp">Ciclos</a>
                                <a id="gestionCurso" class="dropdown-item gotoContenedor" url="pages/gestionCursos.jsp">Cursos</a>
                                <a id="ofertaAcademica" class="dropdown-item gotoContenedor" url="pages/ofertaAcademica.jsp">Oferta académica</a>
                                <a id="gestionProfesor" class="dropdown-item gotoContenedor" url="pages/gestionProfesores.jsp">Profesores</a>
                                <a id="gestionSeguridad" class="dropdown-item gotoContenedor" url="pages/gestionSeguridad.jsp">Seguridad</a>
                            </div>
                        </li>
                        <li id="opciones"class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle mr-sm-2" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Opciones
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <a id="acercaDe" class="dropdown-item" href="#aboutModal" data-toggle="modal" data-target="#aboutModal">Acerca de...</a>
                                <a id="salir" class="dropdown-item" href="#">Salir</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
            <!-- Mantenimientos -->
            <div id="contenedor">
                <div class="row">
                    <!-- Gestion de carreras -->
                    <div class="col-sm-6 dashboardWidget" url="pages/gestionCarreras.jsp">
                        <div class="card mb-2">
                            <div class="row no-gutters">
                                <div class="col-md-4 align-self-center">
                                    <img src="img/carrera.png" class="card-img img-fluid" alt="Gestión de carreras">
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body">
                                        <h5 class="card-title">Carreras</h5>
                                        <p class="card-text">Puede gestionar las carreras</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Gestion de ciclos -->
                    <div class="col-sm-6 dashboardWidget" url="pages/gestionCiclos.jsp">
                        <div class="card mb-2">
                            <div class="row no-gutters">
                                <div class="col-md-4 align-self-center">
                                    <img src="img/ciclo.png" class="card-img img-fluid" alt="Gestión de ciclos">
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body">
                                        <h5 class="card-title">Ciclos</h5>
                                        <p class="card-text">Puede gestionar los ciclos</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Gestion de cursos -->
                    <div class="col-sm-6 dashboardWidget" url="pages/gestionCursos.jsp">
                        <div class="card mb-2">
                            <div class="row no-gutters">
                                <div class="col-md-4 align-self-center">
                                    <img src="img/curso.png" class="card-img img-fluid" alt="Gestión de cursos">
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body">
                                        <h5 class="card-title">Cursos</h5>
                                        <p class="card-text">Puede gestionar los cursos</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Oferta academica -->
                    <div class="col-sm-6 dashboardWidget" url="pages/ofertaAcademica.jsp">
                        <div class="card mb-2">
                            <div class="row no-gutters">
                                <div class="col-md-4 align-self-center">
                                    <img src="img/oferta-academica.png" class="card-img img-fluid" alt="Oferta Académica">
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body">
                                        <h5 class="card-title">Oferta académica</h5>
                                        <p class="card-text">Puede visualizar la oferta académica actual, incluso modificar o agregar grupos</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Gestion de profesores -->
                    <div class="col-sm-6 dashboardWidget" url="pages/gestionProfesores.jsp">
                        <div class="card mb-2">
                            <div class="row no-gutters">
                                <div class="col-md-4 align-self-center">
                                    <img src="img/profesor.png" class="card-img img-fluid" alt="Gestión de profesores">
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body">
                                        <h5 class="card-title">Profesores</h5>
                                        <p class="card-text">Puede gestionar a los profesores</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Gestion de Seguridad -->
                    <div class="col-sm-6 dashboardWidget" url="pages/gestionSeguridad.jsp">
                        <div class="card mb-2">
                            <div class="row no-gutters">
                                <div class="col-md-4 align-self-center">
                                    <img src="img/seguridad.png" class="card-img img-fluid" alt="Gestión de seguridad">
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body">
                                        <h5 class="card-title">Seguridad</h5>
                                        <p class="card-text">Puede gestionar los roles de seguridad</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        <div id="aboutModal" class="modal fade aboutModal" tabindex="-1" role="dialog" aria-labelledby="Acerca de..." aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalCenterTitle">Acerca de...</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <strong>Universidad Nacional - SIUA</strong><br>
                        <strong>Laboratorio 1</strong><br>
                        Caleb Perez Granados<br>
                        Gabriel Castro Artavia<br>
                        Luis Castaing Vargas<br>
                        <strong>Prof:</strong> Dr. Juan de Dios Murillo Morera
                    </div>
                </div>
            </div>
        </div>
        <script src="https:////code.jquery.com/jquery-3.3.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="js/dashboard.js"></script>
    </body>
</html>

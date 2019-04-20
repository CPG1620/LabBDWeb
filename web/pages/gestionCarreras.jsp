<%@ page import="LogicaDeNegocio.Carrera"%>
<%@ page import="Controlador.Control"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Collection"%>
<% Control control = Control.getControl();
   ArrayList list = (ArrayList)control.listarCarrera();
%>
<div>
    <h3>Gestión de carreras</h3>
    <div class="table-responsive">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th scope="col">Código</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Título</th>
                    <th scope="col">Cursos</th>
                    <th scope="col">Modificar</th>
                    <th scope="col">Eliminar</th>
                </tr>
            </thead>
            <tbody>
            <%
                    for (int i = 0; i < list.size(); i++){
                    Carrera carrera = (Carrera)list.get(i);
            %>
                  <tr>
                      <td><%=carrera.getCodigo()%></td>
                      <td><%=carrera.getNombre()%></td>
                      <td><%=carrera.getTitulo()%></td>
                      <td></td>
                      <td><button type="button" class="btn btn-primary btnModificar" data-toggle="modal" data-target="#modificarCarreraModal">Modificar</button></td>
                      <td><button type="button" class="btn btn-danger btnEliminar">Eliminar</button></td>
                  </tr>
            <%}%>
            </tbody>
        </table>

        <div>
            <button type="button" class="btn btn-outline-success" data-toggle="modal" data-target="#annadirCarreraModal">Añadir</button>
        </div>

        <!-- Modals -->
        <div id="annadirCarreraModal" class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Añadir carrera</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="container-fluid">
                            <form>
                                <div class="row">
                                    <div class="col-sm">
                                        <div class="form-group">
                                            <label for="codigoCarrera">Código</label>
                                            <input type="text" class="form-control" id="codigoCarrera">
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="form-group">
                                            <label for="nombreCarrera">Nombre</label>
                                            <input type="text" class="form-control" id="nombreCarrera">
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="form-group">
                                            <label for="tituloCarrera">Título</label>
                                            <input type="text" class="form-control" id="tituloCarrera">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="cursoCarrera">Cursos</label>
                                    <!-- MANTENIMIENTO DE CURSOS -->
                                </div>

                                <div class="modal-footer">
                                    <button type="button" class="btn btn-outline-danger" data-dismiss="modal">Cerrar</button>
                                    <button type="submit" class="btn btn-outline-success">Agregar</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div id="modificarCarreraModal" class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Modificar carrera</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="container-fluid">
                            <form>
                                <div class="row">
                                    <div class="col-sm">
                                        <div class="form-group">
                                            <label for="codigoCarreraMod">Código</label>
                                            <input type="text" class="form-control" id="codigoCarreraMod">
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="form-group">
                                            <label for="nombreCarreraMod">Nombre</label>
                                            <input type="text" class="form-control" id="nombreCarreraMod">
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="form-group">
                                            <label for="tituloCarreraMod">Título</label>
                                            <input type="text" class="form-control" id="tituloCarreraMod">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="cursoCarrera">Cursos</label>
                                    <!-- MANTENIMIENTO DE CURSOS -->
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-outline-danger" data-dismiss="modal">Cerrar</button>
                                    <button type="submit" class="btn btn-outline-success">Agregar</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
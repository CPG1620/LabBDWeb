<%@ page import="LogicaDeNegocio.Curso"%>
<%@ page import="Controlador.Control"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Collection"%>
<% Control control = Control.getControl();
    ArrayList list = (ArrayList) control.listarCurso();
%>
<div>
    <h3>Gestión de cursos</h3>
    <div class="table-responsive">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th scope="col">Código</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Créditos</th>
                    <th scope="col">Horas semanales</th>
                    <th scope="col">Año</th>
                    <th scope="col">Ciclo</th>
                    <th scope="col">Modificar</th>
                    <th scope="col">Eliminar</th>
                </tr>
            </thead>
            <tbody>
                <%
                     for (int i = 0; i < list.size(); i++) {
                         Curso curso = (Curso) list.get(i);%>
                <tr>
                    <td><%=curso.getCodigo()%></td>
                    <td><%=curso.getNombre()%></td>
                    <td><%=curso.getCreditos()%></td>
                    <td><%=curso.getHoras()%></td>
                    <td><%=curso.getAnno()%></td>
                    <td><%=curso.getCiclo()%></td>
                    <td><button type="button" class="btn btn-primary btnModificar" data-toggle="modal" data-target="#modificarCursoModal">Modificar</button></td>
                    <td><button type="button" class="btn btn-danger btnEliminar">Eliminar</button></td>
                </tr>
                <%}%>
            </tbody>
        </table>
        <div>
            <button type="button" class="btn btn-outline-success" data-toggle="modal" data-target="#annadirCursoModal">Añadir</button>
        </div>

        <!-- Modals -->
        <div id="annadirCursoModal" class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Añadir curso</h5>
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
                                            <label for="codigoCurso">Codigo</label>
                                            <input type="text" class="form-control" id="codigoCurso">
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="form-group">
                                            <label for="nombreCurso">Nombre</label>
                                            <input type="text" class="form-control" id="nombreCurso">
                                        </div>
                                    </div>
                                    <div class="col-sm">
                                        <div class="form-group">
                                            <label for="creditosCurso">Créditos</label>
                                            <input type="text" class="form-control" id="creditosCurso">
                                        </div>
                                    </div>
                                    <div class="col-sm">
                                        <div class="form-group">
                                            <label for="horaSemanalCurso">Horas semanales</label>
                                            <input type="text" class="form-control" id="horaSemanalCurso">
                                        </div>
                                    </div>
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

        <div id="modificarCursoModal" class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Modificar curso</h5>
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
                                            <label for="codigoCursoMod">Codigo</label>
                                            <input type="text" class="form-control" id="codigoCursoMod">
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="form-group">
                                            <label for="nombreCursoMod">Nombre</label>
                                            <input type="text" class="form-control" id="nombreCursoMod">
                                        </div>
                                    </div>
                                    <div class="col-sm">
                                        <div class="form-group">
                                            <label for="creditosCursoMod">Créditos</label>
                                            <input type="text" class="form-control" id="creditosCursoMod">
                                        </div>
                                    </div>
                                    <div class="col-sm">
                                        <div class="form-group">
                                            <label for="horaSemanalCursoMod">Horas semanales</label>
                                            <input type="text" class="form-control" id="horaSemanalCursoMod">
                                        </div>
                                    </div>
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
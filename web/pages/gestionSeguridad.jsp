<%@ page import="LogicaDeNegocio.Rol"%>
<%@ page import="Controlador.Control"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Collection"%>
<% Control control = Control.getControl();
    ArrayList list = (ArrayList) control.listarRol();
%>
<div>
    <h3>Gestión de seguridad</h3>
    <div class="table-responsive">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th scope="col">Rol</th>
                    <th scope="col">Modificar</th>
                    <th scope="col">Eliminar</th>
                </tr>
            </thead>
            <tbody>
                <%
                     for (int i = 0; i < list.size(); i++) {
                         Rol rol = (Rol) list.get(i);%>
                <tr>
                    <td><%=rol.getRol()%></td>
                    <td><button type="button" class="btn btn-primary btnModificar" data-toggle="modal" data-target="#modificarRolModal">Modificar</button></td>
                    <td><button type="button" class="btn btn-danger btnEliminar">Eliminar</button></td>
                </tr>
                <%}%>
            </tbody>
        </table>
        <div>
            <button type="button" class="btn btn-outline-success" data-toggle="modal" data-target="#annadirRolModal">Añadir</button>
        </div>
        
        <!-- Modals -->
        <div id="annadirRolModal" class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Añadir rol</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="container-fluid">
                            <form>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="rolSeguridad">Rol</label>
                                            <input type="text" class="form-control" id="rolSeguridad">
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
        
        <div id="modificarRolModal" class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Modificar rol</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="container-fluid">
                            <form>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="rolSeguridadMod">Rol</label>
                                            <input type="text" class="form-control" id="rolSeguridadMod">
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
</div>
<%-- 
    Document   : gestionCursos
    Created on : 21-mar-2019, 22:59:01
    Author     : caleb
--%>

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
                    <th scope="col">Modificar</th>
                    <th scope="col">Eliminar</th>
                </tr>
            </thead>
            <tbody>
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
</div>
<%-- 
    Document   : gestionProfesores
    Created on : 21-mar-2019, 22:59:56
    Author     : caleb
--%>
<div>
    <h3>Gestión de profesores</h3>
    <div class="table-responsive">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th scope="col">Cédula</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Teléfono</th>
                    <th scope="col">Email</th>
                    <th scope="col">Modificar</th>
                    <th scope="col">Eliminar</th>
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
        <div>
            <button type="button" class="btn btn-outline-success" data-toggle="modal" data-target="#annadirProfesorModal">Añadir</button>
        </div>

        <!-- Modals -->
        <div id="annadirProfesorModal" class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Añadir profesor</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="container-fluid">
                            <form>
                                <div class="row">
                                    <div class="col-sm-2">
                                        <div class="form-group">
                                            <label for="cedulaProfesor">Cédula</label>
                                            <input type="text" class="form-control" id="cedulaProfesor">
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="form-group">
                                            <label for="nombreProfesor">Nombre</label>
                                            <input type="text" class="form-control" id="nombreProfesor">
                                        </div>
                                    </div>
                                    <div class="col-sm-2">
                                        <div class="form-group">
                                            <label for="numeroProfesor">Número</label>
                                            <input type="text" class="form-control" id="numeroProfesor">
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="form-group">
                                            <label for="correoProfesor">Email</label>
                                            <input type="text" class="form-control" id="correoProfesor">
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
        
        <div id="modificarProfesorModal" class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Modificar profesor</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="container-fluid">
                            <form>
                                <div class="row">
                                    <div class="col-sm-2">
                                        <div class="form-group">
                                            <label for="cedulaProfesorMod">Cédula</label>
                                            <input type="text" class="form-control" id="cedulaProfesorMod">
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="form-group">
                                            <label for="nombreProfesorMod">Nombre</label>
                                            <input type="text" class="form-control" id="nombreProfesorMod">
                                        </div>
                                    </div>
                                    <div class="col-sm-2">
                                        <div class="form-group">
                                            <label for="numeroProfesorMod">Número</label>
                                            <input type="text" class="form-control" id="numeroProfesorMod">
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="form-group">
                                            <label for="correoProfesorMod">Email</label>
                                            <input type="text" class="form-control" id="correoProfesorMod">
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
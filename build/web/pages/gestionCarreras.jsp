<%-- 
    Document   : gestionCarreras
    Created on : 21-mar-2019, 22:56:04
    Author     : caleb
--%>
<div>
    <h3>Gesti�n de carreras</h3>
    <div class="table-responsive">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th scope="col">C�digo</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">T�tulo</th>
                    <th scope="col">Cursos</th>
                    <th scope="col">A�o</th>
                    <th scope="col">Ciclo</th>
                    <th scope="col">Modificar</th>
                    <th scope="col">Eliminar</th>
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>

        <div>
            <button type="button" class="btn btn-outline-success" data-toggle="modal" data-target="#annadirCarreraModal">A�adir</button>
        </div>

        <!-- Modals -->
        <div id="annadirCarreraModal" class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">A�adir carrera</h5>
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
                                            <label for="codigoCarrera">C�digo</label>
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
                                            <label for="tituloCarrera">T�tulo</label>
                                            <input type="text" class="form-control" id="tituloCarrera">
                                        </div>
                                    </div>
                                    <div class="col-sm-2">
                                        <div class="form-group">
                                            <label for="annoCarrera">A�o</label>
                                            <input type="text" class="form-control" id="annoCarrera">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="cursoCarrera">Cursos</label>
                                    <!-- MANTENIMIENTO DE CURSOS -->
                                </div>
                                <!-- Traerse el a�o de todos los ciclos registrados en el sistema -->
                                <div class="form-group">
                                    <label for="cicloCarrera">Ciclo</label>
                                    <select id="cicloCarrera"></select>
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
                                            <label for="codigoCarreraMod">C�digo</label>
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
                                            <label for="tituloCarreraMod">T�tulo</label>
                                            <input type="text" class="form-control" id="tituloCarreraMod">
                                        </div>
                                    </div>
                                    <div class="col-sm-2">
                                        <div class="form-group">
                                            <label for="annoCarreraMod">A�o</label>
                                            <input type="text" class="form-control" id="annoCarreraMod">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="cursoCarrera">Cursos</label>
                                    <!-- MANTENIMIENTO DE CURSOS -->
                                </div>
                                <!-- Traerse el a�o de todos los ciclos registrados en el sistema -->
                                <div class="form-group">
                                    <label for="cicloCarrera">Ciclo</label>
                                    <select id="cicloCarrera"></select>
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
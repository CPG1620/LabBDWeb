<%-- 
    Document   : gestionCiclos
    Created on : 21-mar-2019, 22:58:46
    Author     : caleb
--%>
<div>
    <h3>Gestión de ciclos</h3>
    <div class="table-responsive">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th scope="col">Año</th>
                    <th scope="col">Número</th>
                    <th scope="col">Fecha de inicio</th>
                    <th scope="col">Fecha de final</th>
                    <th scope="col">Modificar</th>
                    <th scope="col">Eliminar</th>
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
        <div>
            <button type="button" class="btn btn-outline-success" data-toggle="modal" data-target="#annadirCicloModal">Añadir</button>
        </div>
        
        <!-- Modals -->
        <div id="annadirCicloModal" class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Añadir ciclo</h5>
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
                                            <label for="annoCiclo">Año</label>
                                            <input type="text" class="form-control" id="annoCiclo">
                                        </div>
                                    </div>
                                    <div class="col-sm">
                                        <div class="form-group">
                                            <label for="numeroCiclo">Número</label>
                                            <input type="text" class="form-control" id="numeroCiclo">
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="form-group">
                                            <label for="fechaInicioCiclo">Fecha de inicio</label>
                                            <input type="text" class="form-control" id="fechaInicioCiclo">
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="form-group">
                                            <label for="fechaFinalCiclo">Fecha de finalización</label>
                                            <input type="text" class="form-control" id="fechaFinalCiclo">
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
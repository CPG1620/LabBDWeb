<%@ page import="LogicaDeNegocio.Ciclo"%>
<%@ page import="Controlador.Control"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Collection"%>
<% Control control = Control.getControl();
   ArrayList list = (ArrayList)control.listarCiclo();
%>

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
                <%
                    for (int i = 0; i < list.size(); i++){
                    Ciclo ciclo = (Ciclo)list.get(i);%>
                  <tr>
                      <td><%=ciclo.getAnno()%></td>
                      <td><%=ciclo.getNum_ciclo()%></td>
                      <td><%=ciclo.getFecha_inicio()%></td>
                      <td><%=ciclo.getFecha_final()%></td>
                      <td><button type="button" class="btn btn-primary btnModificar" data-toggle="modal" data-target="#modificarCicloModal">Modificar</button></td>
                      <td><button type="button" class="btn btn-danger btnEliminar">Eliminar</button></td>
                  </tr>
            <%}%>
            </tbody>
        </table>
        <div>
            <button type="button" class="btn btn-outline-success" data-toggle="modal" data-target="#annadirCicloModal">Añadir</button>
        </div>

        <!-- Modals -->
        <div id="annadirCicloModal" class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog" aria-hidden="true">
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
                                            <input type="text" class="form-control datepicker-here" id="fechaInicioCiclo">
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="form-group">
                                            <label for="fechaFinalCiclo">Fecha de finalización</label>
                                            <input type="text" class="form-control datepicker-here" id="fechaFinalCiclo">
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


        <div id="modificarCicloModal" class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Modificar ciclo</h5>
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
                                            <label for="annoCicloMod">Año</label>
                                            <input type="text" class="form-control" id="annoCicloMod">
                                        </div>
                                    </div>
                                    <div class="col-sm">
                                        <div class="form-group">
                                            <label for="numeroCicloMod">Número</label>
                                            <input type="text" class="form-control" id="numeroCicloMod">
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="form-group">
                                            <label for="fechaInicioCicloMod">Fecha de inicio</label>
                                            <input type="text" class="form-control datepicker-here" id="fechaInicioCicloMod">
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="form-group">
                                            <label for="fechaFinalCicloMod">Fecha de finalización</label>
                                            <input type="text" class="form-control datepicker-here" id="fechaFinalCicloMod">
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

<script>
     $.fn.datepicker.language['es'] = {
        days: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sabado'],
        daysShort: ['Dom', 'Lun', 'Mar', 'Mie', 'Jue', 'Vie', 'Sab'],
        daysMin: ['D', 'L', 'M', 'X', 'J', 'V', 'S'],
        months: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
        monthsShort: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dec'],
        today: 'Hoy',
        clear: 'Limpiar',
        dateFormat: 'dd/mm/yyyy',
        firstDay: 0
    };

    $('#fechaInicioCiclo').datepicker({
        language: 'es'
    });

    $('#fechaFinalCiclo').datepicker({
        language: 'es'
    });

    $('#fechaInicioCicloMod').datepicker({
        language: 'es'
    });

    $('#fechaFinalCicloMod').datepicker({
        language: 'es'
    });
</script>
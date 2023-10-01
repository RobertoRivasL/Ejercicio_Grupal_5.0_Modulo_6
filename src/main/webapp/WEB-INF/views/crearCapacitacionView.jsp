<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@include file="navbar.jsp" %>
<%@include file="footer.jsp" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/style.css">
    <title>Capacitación</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h1 class="text-center">Capacitación</h1>
    <div class="b-example-divider mt-5"></div>

    <!-- Button to trigger modal -->
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#formularioModal">
        Crear Capacitación
    </button>

    <!-- Modal -->
    <div class="modal fade" id="formularioModal" tabindex="-1" aria-labelledby="formularioModalLabel"
         aria-hidden="true">
        <div class="modal-dialog modal-dialog-scrollable">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="formularioModalLabel">Crear Capacitación</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="formulario" action="formularioCapacitacion" method="POST">
                        <!-- Rut Cliente input -->
                        <div class="form-outline mb-4">
                            <label class="form-label" for="rut_cliente">Rut Cliente</label>
                            <input name="rutCliente" type="text" id="rut_cliente" class="form-control"
                                   pattern="[0-9]{7,8}" required/>
                            <div class="text-danger" id="alertaRut_cliente">Falta agregar el rut del cliente</div>
                        </div>

                        <!-- Día select -->
                        <div class="form-group mb-4">
                            <label for="Dia">Día</label>
                            <select name="dia" class="form-control" id="Dia" required>
                                <%
                                    List<String> listaDias = new ArrayList<>(List.of("Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado", "Domingo"));
                                    for (String dia : listaDias) {
                                %>
                                <option><%=dia%>
                                </option>
                                <%}%>
                            </select>
                        </div>

                        <!-- Hora select -->
                        <div class="form-group mb-4">
                            <label for="Hora">Hora</label>
                            <select name="hora" class="form-control" id="Hora" required>
                                <%
                                    for (int j = 10; j < 24; j++) {
                                %>
                                <option><%=j%>:00</option>
                                <%}%>
                            </select>
                        </div>

                        <!-- Lugar input -->
                        <div class="form-outline mb-4">
                            <label class="form-label" for="lugar">Lugar</label>
                            <input name="lugar" type="text" id="lugar" class="form-control" minlength="10"
                                   maxlength="50" required/>
                            <div class="text-danger" id="alertaLugar">Falta agregar el lugar</div>
                        </div>

                        <!-- Duración input -->
                        <div class="form-outline mb-4">
                            <label class="form-label" for="duracion">Duración</label>
                            <input name="duracion" type="text" id="duracion" class="form-control" maxlength="70"
                                   required/>
                            <div class="text-danger" id="alertaDuracion">Falta agregar la Duración</div>
                        </div>

                        <!-- Cantidad de Asistentes input -->
                        <div class="form-outline mb-4">
                            <label class="form-label" for="cantidadAsistentes">Cantidad de Asistentes</label>
                            <input name="cantidadAsistentes" type="number" id="cantidadAsistentes" class="form-control"
                                   max="1000" required/>
                            <div class="text-danger" id="alertaCantidadAsistentes">Falta agregar la cantidad de
                                Asistentes
                            </div>
                        </div>

                        <!-- Submit button -->
                        <button id="botonCrear" type="submit" class="btn btn-dark btn-block mb-4">Crear</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Include Bootstrap JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.min.js"></script>
</body>
</html>

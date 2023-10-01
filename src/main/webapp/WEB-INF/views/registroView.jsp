<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@include file="navbar.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
    <title>Registro</title>
</head>
<body>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-lg-4 col-md-6 col-sm-8">
            <form class="register-form" action="formularioRegistro" method="POST">
                <h2 class="text-center mb-4">Registro</h2>
                <div class="form-group">
                    <label class="mb-3" for="nombreUsuario">Nombre de Usuario</label>
                    <input name="nombreUsuario" type="text" id="nombreUsuario" class="form-control"
                           placeholder="Ingresa Usuario" required>
                </div>
                <br>
                <div class="form-group">
                    <label class="mb-3" for="contrasena">Contraseña</label>
                    <input name="contrasena" type="password" id="contrasena" class="form-control"
                           placeholder="Ingresa tu contraseña" required>
                </div>
                <br>
                <div style="display: flex; justify-content: space-between;">
                    <button type="submit" class="btn btn-primary btn-dark mb-3">Registrar</button>
                </div>
            </form>

        </div>
    </div>
</div>

</body>
</html>

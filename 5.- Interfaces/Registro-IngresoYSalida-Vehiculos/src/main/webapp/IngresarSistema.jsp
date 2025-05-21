<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- http://localhost:8080/Registro-IngresoYSalida-Vehiculos/ServletRegistroDeEntradaYSalida -->
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Inicio de Sesión</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
     integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<style>
body {
    margin: 0;
    font-family: Arial, sans-serif;
    background-color: #9b9b9b  ;
    background-size: cover;
}

.login-container {
    width: 300px;
    margin: 100px auto;
    padding: 20px;
    background: rgba(255, 255, 255, 0.8);
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2 {
    text-align: center;
    margin-bottom: 20px;
}

.form-group {
    margin-bottom: 15px;
}

.form-group label {
    display: block;
    margin-bottom: 5px;
}

.form-group input {
    width: 100%;
    padding: 10px;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 5px;
}

button {
    width: 98%;
    padding: 10px;
    background-color: #007BFF;
    border: none;
    border-radius: 5px;
    color: white;
    font-size: 16px;
    cursor: pointer;
    margin: 2%;
}

button:hover {
    background-color: #0056b3;
}
</style>
<body>
	<div class="login-container">
        <h2>Iniciar Sesión</h2>
        <form id="login-form" action="LoginController" method="post">
            <div class="form-group">
                <label for="username">Usuario</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">Contraseña</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit">Iniciar Sesión</button>
        </form>
        <button onclick="window.location.href = 'https://www.google.com.pe/?gfe_rd=cr&dcr=0&ei=TzvEWfbuCZCz-wWGtbZQ';">Cancelar</button>
    </div>
    <script src="login.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    
    <script>
    document.getElementById('login-form').addEventListener('submit', function(event) {
        event.preventDefault();
        const username = document.getElementById('username').value;
        const password = document.getElementById('password').value;

        // Validar que el usuario tenga una letra al inicio y 9 dígitos, en total 10 caracteres
        const usernamePattern = /^[a-zA-Z]\d{9}$/;

        // Validar que la contraseña tenga al menos 8 caracteres, incluya al menos una letra mayúscula, una letra minúscula y un número
        const passwordPattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[A-Za-z\d]{8,}$/;

        if (!usernamePattern.test(username)) {
            alert('El usuario debe comenzar con una letra seguida de 9 dígitos, en total 10 caracteres.');
            return;
        }

        if (!passwordPattern.test(password)) {
            alert('La contraseña debe tener al menos 8 caracteres, incluir al menos una letra mayúscula, una letra minúscula y un número.');
            return;
        }

        // Aquí puedes añadir la lógica de autenticación
        alert('Inicio de sesión exitoso');
        window.location.href = 'Registro.html'; // Reemplaza 'Registro.html' con la URL de la página de destino
    </script>
    <script>
        // Mostrar un alert si hay un error
        <% if ("true".equals(request.getParameter("error"))) { %>
            alert('Código o contraseña incorrectos.');
        <% } %>
    </script>
</body>
</html>
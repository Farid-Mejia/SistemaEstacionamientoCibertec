<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registro Salida de Vehículos</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<link rel="stylesheet" href="styles.css">
</head>

<style>

    .header {
        width: 100%;
    }
    .header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 10px 20px;
	background-color: #f8f9fa;
	border-bottom: 1px solid #dee2e6;
	}

	.header h1 {
		margin: 0;
	}

	.header button {
		background-color: #dc3545;
		color: white;
		border: none;
		padding: 10px 20px;
		cursor: pointer;
		border-radius: 5px;
	}

	.header button:hover {
		background-color: #c82333;
	}

    .container {
        background: linear-gradient(#EBB180, #A77F5E);
        padding: 3%;
        max-width: 1200px;
    	margin: auto;
    }
    #menuPrincipal{
    	background:  linear-gradient(#B09077, #B28665);
    }

    .navbar-brand {
        padding-top: 0%;
        padding-left: 0%;
    }
    .custom-navbar{
    
    }
    p{
    	border-radius: 4px;
        background: linear-gradient(to right, #FBF4B9, #D4CE9D);
        box-shadow: 0 0 25px #D4CE9D;
    }

    #dniControl {
        width: 70%;
        display: flex;
        flex-wrap: wrap;
    }

    #dniControl input {
        width: 90%;
        height: 45%;
        margin: 10px 20px 0 20px;
    }

    .button-group {
        width: 40%;
        display: flex;
        flex-wrap: wrap;
        flex-direction: column;
        margin-left: 10%;
        margin-right: 10%;
    }

	.help-block {
	  color: red;
	  margin: 0px 20px 0px 20px;
	}
    .form-group.has-error .form-control-label {
	  color: red;
	}
	.form-group.has-error .form-control {
	  border: 1px solid red;
	  box-shadow: 0 0 0 0.2rem rgba(250, 16, 0, 0.18);
	}
	a{
	  color: white;
	}
	
	
</style>

<body>

	<div class="container">
		<div class="header">
			<h1 style="text-align: center;">Registro Salida de Vehiculos</h1>
			<button onclick="window.location.href = 'IngresarSistema.jsp';">Cerrar Sesión</button>
		</div>
		<div class="container" id="menuPrincipal">
			<nav class="navbar custom-navbar" id="tituloDNI">
				<p style="padding: 1%; font-size: x-large">
					Placa del vehículo:
					<%=request.getAttribute("placa")%></p>
				<form action="ServletRegistroDeEntradaYSalida" method="post">
					<!-- Aquí van los campos y botones adicionales -->
					<input type="hidden" name="accion" value="registrarSalida">
					<input type="hidden" name="dni"
						value="<%=request.getAttribute("dni")%>">
					<button type="submit" class="btn btn-primary">Confirmar
						Salida</button>
					<button class="btn btn-secondary">
						<a href="MenuPrincipal.jsp">Volver al Menú Principal</a>
					</button>
				</form>
			</nav>
		</div>

		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
			crossorigin="anonymous"></script>

	</div>
	

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.5.3/js/bootstrapValidator.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>
		
	<script>
        $(document).ready(function() {
            // Iniciar el validador de formulario
            $('#dniControl').bootstrapValidator({
                // Configurar los campos a validar
                fields: {
                    dni: {
                        validators: {
                            notEmpty: {
                                message: 'El DNI es obligatorio'
                            },
                            regexp: {
                                regexp: /^[0-9]{8}$/,
                                message: 'Los DNI tienen 8 dígitos'
                            }
                        }
                    }
                },
                live: 'enabled', // Esto activa la validación en vivo
                feedbackIcons: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                }
            }).on('success.field.bv', function(e, data) {
                // Cuando el campo se valida correctamente, ocultar el mensaje de error
                data.element.closest('.form-group').find('.help-block').hide();
            }).on('error.field.bv', function(e, data) {
                // Cuando el campo tiene un error, mostrar el mensaje de error
                const messages = {
                    dni: {
                        notEmpty: 'El DNI es obligatorio',
                        regexp: 'Los DNI tienen 8 NUMEROS'
                    }
                };
                const field = data.field;
                const errorType = data.bv.getErrors(field)[0];
                const message = messages[field][errorType];
                data.element.closest('.form-group').find('.help-block').text(message).show();
            });

            // Validar el campo en cada cambio de entrada
            $('input[name="dni"]').on('input', function() {
                $('#dniControl').bootstrapValidator('revalidateField', 'dni');
            });
        });
        
        function setDniToModal() {
            // Copiar el valor del DNI al modal
            var dni = document.querySelector('input[name="dni"]').value;
            document.getElementById('dniModal').value = dni;
        }
    </script>

</body>
</html>
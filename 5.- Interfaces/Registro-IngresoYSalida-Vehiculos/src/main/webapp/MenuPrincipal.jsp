<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu principal</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
</head>

<style>
.header {
	width: 100%;
	text-align: center;
    margin-bottom: 20px;
}

.container {
	background: linear-gradient(#EBB180, #A77F5E);
	max-width: 1200px;
    margin: auto;
    padding: 20px;
}

.custom-navbar {
	background: linear-gradient(to right, #FBF4B9, #D4CE9D);
	border-radius: 8px;
	box-shadow: 0 0 25px #D4CE9D;
}

.navbar-brand {
	padding-top: 0%;
	padding-left: 0%;
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

.modal-footer button {
	
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

body {/*cambios*/
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
}

.header {/*cambios*/
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

.parking-container {/*cambios*/
	width: 90%;
	margin: 20px auto;
	padding: 20px;
	border: 1px solid #ccc;
	border-radius: 10px;
	box-shadow: 2px 2px 12px rgba(0, 0, 0, 0.1);
	text-align: center;
}

.parking-header {/*cambios*/
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin-bottom: 20px;
	position: relative;
	/* Para que la línea vertical se ajuste a la altura del contenedor */
}

.header-section {
	flex: 1;
	text-align: center;
}

.vertical-line {
	position: absolute;
	left: 50%;
	width: 2px;
	background-color: #ccc;
	height: 100%;
	transform: translateX(-50%);
}

hr {
	margin: 20px 0;
}

.parking-lots {
	display: flex;
	justify-content: space-around;
	align-items: flex-start;
	margin-bottom: 20px;
	position: relative;
	/* Para que la línea vertical se ajuste a la altura del contenedor */
}

.parking-lot {/*cambios*/
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	flex: 1;
}

.vertical-line-lots {
	position: absolute;
	left: 50%;
	width: 2px;
	background-color: #ccc;
	height: 100%;
	transform: translateX(-50%);
}

.parking-slot { /*cambios*/
	width: 50px;
	height: 50px;
	border: 1px solid #000;
	background-color: #CCCCCC;
	margin: 5px;
	text-align: center;
	line-height: 50px;
	cursor: pointer;
	position: relative;
}

.parking-slot.free {
	background-color: #CCCCCC;
}

.parking-slot.occupied {
	background-color: #FF6347;
	box-shadow: 0 0 10px #FF6347; /* Agrega una sombra naranja al estar ocupado */
}

.parking-slot.selected {
	background-color: darkred; /* Color oscuro para plazas seleccionadas */
	box-shadow: 0 0 10px darkred;  /* Agrega una sombra roja al seleccionar */
}

#slot1-1, #slot1-4 {
	color: black;
	width: 50px;
    height: 50px;
    border: 1px solid #000;
    background-color: #CCCCCC;
    margin: 5px;
    text-align: center;
    line-height: 50px;
    cursor: pointer;
	background-image: url('https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/Handicapped_Accessible_sign.svg/220px-Handicapped_Accessible_sign.svg.png');
	background-size: cover;
	background-position: center;
	transition: border-width 0.3s ease; /* Transición suave para el grosor del borde */
	text-shadow: 1px 1px 2px #fff; /* Sombra clara para el texto */
}

.actions {
	display: flex;
	justify-content: center;
	flex-wrap: wrap;
}

.actions button {
	background-color: #007bff;
	color: white;
	border: none;
	padding: 10px 20px;
	margin: 5px;
	cursor: pointer;
	border-radius: 5px;
}

.actions button:hover {
	background-color: #0056b3;
}
.alert {
    margin-top: 10px;
}

/* Media Queries para Responsividad */
@media ( max-width : 768px) {
	.parking-lots {
		align-items: center;
	}
	.header-section {
		width: 100%;
		margin-bottom: 20px;
	}
	#parkingLot1::before {
		display: block;
		text-align: center;
		margin-bottom: 10px;
		font-size: 1.5em;
	}
	#parkingLot2::before {
		display: block;
		text-align: center;
		margin-top: 20px;
		margin-bottom: 10px;
		font-size: 1.5em;
	}
}

@media ( max-width : 480px) {
	.header {
		flex-direction: column;
		align-items: center;
	}
	.header h1 {
		margin-bottom: 10px;
	}
	.header button {
		width: 100%;
		text-align: center;
	}
	.parking-slot {
		width: 60px;
		height: 60px;
		margin: 5px;
	}
	.actions button {
		width: 100%;
		text-align: center;
	}
}
</style>

<body>

	<div class="container">
		<div class="header">
			<h1 style="text-align: center;">Registro de Vehiculos</h1>
			<button onclick="window.location.href = 'IngresarSistema.jsp';">Cerrar Sesión</button>
		</div>

		<nav class="navbar custom-navbar" id="tituloDNI">
			<div class="container-fluid">
				<a class="navbar-brand">DNI de Usuario de Cibertec: </a>
				<form class="formDNI" id="dniControl" method="post" action="ServletRegistroDeEntradaYSalida">
					<div class="form-group">
						<input class="form-control" type="text" placeholder="Escribir DNI" name="dni" maxlength="8"  value="<%= request.getAttribute("dni") != null ? request.getAttribute("dni") : "" %>">
						<small class="help-block"><%= request.getAttribute("error") != null ? request.getAttribute("error") : "" %></small>
					</div>
					
					<div class="button-group">
						<button class="btn btn-outline-success m-2" type="submit" name="accion" value="ingreso">
							Ingreso</button>
						<button class="btn btn-outline-success m-2" type="submit" name="accion" value="salida">
                            Salida</button>
					</div>
				</form>
			</div>
		</nav>
		<% String mensaje = (String) request.getAttribute("mensaje"); %>
        <% if (mensaje != null) { %>
            <div class="alert alert-info"><%= mensaje %></div>
        <% } %>

		<input type="hidden" id="selectedSlotInput" value="">
    <div class="parking-container">
        <div class="parking-header">
            <div class="header-section">
                <h2>SS(Estacionamiento piso 1)</h2>
            </div>
            <div class="vertical-line"></div>
            <div class="header-section">
                <h2>S1(Estacionamiento Sótano)</h2>
            </div>
        </div>
        <hr>
        
        <div class="parking-lots">
            <div id="parkingLot1" class="parking-lot">
                <div class="parking-slot free" id="slot1-1" onclick="selectSlot(this)" value="1">1</div>
                <div class="parking-slot free" id="slot1-2" onclick="selectSlot(this)" value="2">2</div>
                <div class="parking-slot free" id="slot1-3" onclick="selectSlot(this)" value="3">3</div>
                <div class="parking-slot free" id="slot1-4" onclick="selectSlot(this)" value="4">4</div>
                <div class="parking-slot free" id="slot1-11" onclick="selectSlot(this)" value="11">11</div>
                <div class="parking-slot free" id="slot1-12" onclick="selectSlot(this)" value="12">12</div>
                <div class="parking-slot free" id="slot1-13" onclick="selectSlot(this)" value="13">13</div>
                <div class="parking-slot free" id="slot1-14" onclick="selectSlot(this)" value="14">14</div>
            </div>
            <div class="vertical-line-lots"></div>
            <div id="parkingLot2" class="parking-lot">
                <div class="parking-slot free" id="slot2-15" onclick="selectSlot(this)" value="15">15</div>
                <div class="parking-slot free" id="slot2-16" onclick="selectSlot(this)" value="16">16</div>
                <div class="parking-slot free" id="slot2-17" onclick="selectSlot(this)" value="17">17</div>
                <div class="parking-slot free" id="slot2-18" onclick="selectSlot(this)" value="18">18</div>
                <div class="parking-slot free" id="slot2-19" onclick="selectSlot(this)" value="19">19</div>
                <div class="parking-slot free" id="slot2-20" onclick="selectSlot(this)" value="20">20</div>
                <div class="parking-slot free" id="slot2-21" onclick="selectSlot(this)" value="21">21</div>
                <div class="parking-slot free" id="slot2-22" onclick="selectSlot(this)" value="22">22</div>
                <div class="parking-slot free" id="slot2-23" onclick="selectSlot(this)" value="23">23</div>
                <div class="parking-slot free" id="slot2-24" onclick="selectSlot(this)" value="24">24</div>
                <div class="parking-slot free" id="slot2-25" onclick="selectSlot(this)" value="25">25</div>
                <div class="parking-slot free" id="slot2-26" onclick="selectSlot(this)" value="26">26</div>
                <div class="parking-slot free" id="slot2-27" onclick="selectSlot(this)" value="27">27</div>
                <div class="parking-slot free" id="slot2-28" onclick="selectSlot(this)" value="28">28</div>
                <div class="parking-slot free" id="slot2-29" onclick="selectSlot(this)" value="29">29</div>
                <div class="parking-slot free" id="slot2-30" onclick="selectSlot(this)" value="30">30</div>
                <div class="parking-slot free" id="slot2-31" onclick="selectSlot(this)" value="31">31</div>
                <div class="parking-slot free" id="slot2-32" onclick="selectSlot(this)" value="32">32</div>
                <div class="parking-slot free" id="slot2-33" onclick="selectSlot(this)" value="33">33</div>
                <div class="parking-slot free" id="slot2-34" onclick="selectSlot(this)" value="34">34</div>
                <div class="parking-slot free" id="slot2-35" onclick="selectSlot(this)" value="35">35</div>
                <div class="parking-slot free" id="slot2-36" onclick="selectSlot(this)" value="36">36</div>
                <div class="parking-slot free" id="slot2-37" onclick="selectSlot(this)" value="37">37</div>
                <div class="parking-slot free" id="slot2-38" onclick="selectSlot(this)" value="38">38</div>
                <div class="parking-slot free" id="slot2-39" onclick="selectSlot(this)" value="39">39</div>
                <div class="parking-slot free" id="slot2-40" onclick="selectSlot(this)" value="40">40</div>
            </div>
        </div>
		
		<script src="script.js"></script>
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
	<!-- del los estacionamientos -->
	<script>
    window.onload = function() {
        // Obtener los elementos de estacionamiento
        var parkingSlots = document.querySelectorAll('.parking-slot');

        // Array de estacionamientos ocupados
        
        var estaOcupados = [<%= request.getAttribute("estacionamientosOcupados") %>];

        // Iterar sobre cada elemento y actualizar la clase según su estado
        parkingSlots.forEach(function(slot) {
            var slotId = parseInt(slot.innerHTML.trim()); // Obtener el número del estacionamiento

            if (estaOcupados.includes(slotId)) {
                slot.classList.add('occupied'); // Agregar clase 'occupied'
            } else {
                slot.classList.add('free'); // Agregar clase 'free'
            }
        });
    };
	</script>
	<script>
    // Verificar si estacionamientosOcupados se está pasando correctamente
    var estacionamientos = <%= request.getAttribute("estacionamientosOcupados") %>;
    console.log("Estacionamientos ocupados recibidos:", estacionamientos);
</script>
	<script>
            $(document).ready(function() {
                // Obtener la lista de estacionamientos ocupados del servidor
                let estacionamientosOcupados = [<%= request.getAttribute("estacionamientosOcupados") %>];

                // Iterar sobre los elementos de estacionamiento ocupados y marcarlos como ocupados
                estacionamientosOcupados.forEach(numeroEstacionamiento => {
                    let slotId = `slot${Math.ceil(numeroEstacionamiento / 14) + 1}-${numeroEstacionamiento}`;
                    let parkingSlot = document.getElementById(slotId);
                    if (parkingSlot) {
                        parkingSlot.classList.remove('free');
                        parkingSlot.classList.add('occupied');
                        parkingSlot.style.backgroundColor = '#FF6347';
                    }
                });
            });

            function selectSlot(slot) {
                if (slot.classList.contains('occupied')) {
                    alert('Esta plaza ya está ocupada');
                    return;
                }

                const currentSelectedSlot = document.querySelector('.parking-slot.selected');
                if (currentSelectedSlot && currentSelectedSlot !== slot) {
                    currentSelectedSlot.classList.remove('selected');
                    currentSelectedSlot.style.backgroundColor = '#CCCCCC';
                }

                if (slot.classList.contains('selected')) {
                    slot.classList.remove('selected');
                    slot.style.backgroundColor = '#CCCCCC';
                    document.getElementById('selectedSlotInput').value = '';
                } else {
                    slot.classList.add('selected');
                    slot.style.backgroundColor = 'darkred';
                    document.getElementById('selectedSlotInput').value = slot.getAttribute('value');
                }
            }
        </script>
	</body>
</html>
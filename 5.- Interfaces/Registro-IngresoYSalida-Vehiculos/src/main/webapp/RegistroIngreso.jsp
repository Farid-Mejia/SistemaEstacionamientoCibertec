<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registro Ingreso de Vehículos</title>
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
    crossorigin="anonymous">
</head>

<style>
body{
	background-color: silver;
	padding: 5%;
}
input{
	max-width: 250px;
}

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
	margin: 5px 10px 5px 10px;
}

.button-group {
	width: 150px;
	display: flex;
	flex-wrap: wrap;
	flex-direction: column;
	margin-left: 6%;
	margin-right: 6%;
}

.modal-footer button {
	
}

#txtplaca {
	padding: 0%;
	margin: 0%;
}

.help-block {
	color: red;
	margin: 0px 20px 0px 20px;
}

.form-group.has-error .form-control-label {
	color: red;
}

.form-group.has-error .form-control {
	color: red;
	border: 1px solid red;
	box-shadow: 0 0 0 0.2rem rgba(250, 16, 0, 0.18);
}

body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
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

.parking-container {
	width: 90%;
	margin: 20px auto;
	padding: 20px;
	border: 1px solid #ccc;
	border-radius: 10px;
	box-shadow: 2px 2px 12px rgba(0, 0, 0, 0.1);
	text-align: center;
}

.parking-header {
	display: flex;
	justify-content: space-around;
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

.parking-lot {
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

.parking-slot {
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
            <h1 style="text-align: center;">Registro Ingreso de Vehículos</h1>
            <button onclick="window.location.href = 'IngresarSistema.jsp';">Cerrar Sesión</button>
        </div>

        <nav class="navbar custom-navbar" id="tituloDNI">
            <div class="container-fluid">
                <a class="navbar-brand">DNI de Usuario de Cibertec: </a>
                <form class="formDNI" id="dniControl" method="post" action="ServletRegistroDeEntradaYSalida"  onsubmit="return validateForm()">
                <input type="hidden" name="accion" value="registroIngreso">
                    <div class="form-group">
                        <input class="form-control" type="text" placeholder="Escribir DNI" name="dni" maxlength="8" id="dni" value="<%= request.getAttribute("dni") %>" readonly>
                        
                    </div>
                    <div class="form-group" style="background-color: #D4CE9D; margin: 2%; padding:1% 1% 2% 1%; border-radius: 5%">
                        <p id="txtplaca">Núm. Placa</p>
                        <input class="form-control" type="text" placeholder="???-???" id="placa" name="placa" maxlength="7" value="<%= request.getAttribute("placa") %>">
                        
                        <input type="hidden" name="placaSinGuion" id="placaSinGuion">
                    </div>
                    <div class="form-group">
                        <input type="hidden" class="form-control" name="numEstacionamiento" id="numEstacionamiento" value="<%= request.getAttribute("numEstacionamiento") %>">
                    </div>
                    
                    <div class="button-group">
                        <button class="btn btn-outline-success m-2" type="submit" style="width: 70%">Enviar</button>
                    </div>
                    <input type="hidden" id="selectedSlotInput" name="selectedSlotInput" value="">
                </form>
            </div>
        </nav>

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

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.5.3/js/bootstrapValidator.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
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
                    },
                    placa: {
                        validators: {
                            notEmpty: {
                                message: 'Apuntar la placa es obligatorio'
                            },
                            regexp: {
                                regexp: /^[A-Za-z0-9]{3}-[A-Za-z0-9]{3}$/,
                                message: 'La placa debe tener el formato XXX-XXX'
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
                // Ocultar los mensajes de error cuando el campo se valida correctamente
                if (data.field === 'dni') {
                    $('.dni-required').hide();
                    $('.dni-invalid').hide();
                } else if (data.field === 'placa') {
                    $('.placa-required').hide();
                    $('.placa-invalid').hide();
                }
            }).on('error.field.bv', function(e, data) {
                // Mostrar los mensajes de error cuando el campo tiene un error
                if (data.field === 'dni') {
                    if (data.validator === 'notEmpty') {
                        $('.dni-required').show();
                        $('.dni-invalid').hide();
                    } else if (data.validator === 'regexp') {
                        $('.dni-required').hide();
                        $('.dni-invalid').show();
                    }
                } else if (data.field === 'placa') {
                    if (data.validator === 'notEmpty') {
                        $('.placa-required').show();
                        $('.placa-invalid').hide();
                    } else if (data.validator === 'regexp') {
                        $('.placa-required').hide();
                        $('.placa-invalid').show();
                    }
                }
            });

            // Validar el campo en cada cambio de entrada
            $('input[name="dni"]').on('input', function() {
                $('#dniControl').bootstrapValidator('revalidateField', 'dni');
            });

            $('input[name="placa"]').on('input', function() {
                $('#dniControl').bootstrapValidator('revalidateField', 'placa');
            });

            $('input[name="placa"]').on('input', function(e) {
                const value = e.target.value.toUpperCase().replace(/[^A-Z0-9]/g, '');
                let formatted = '';
                for (let i = 0; i < value.length && i < 6; i++) {
                    if (i === 3) {
                        formatted += '-';
                    }
                    formatted += value[i];
                }
                e.target.value = formatted;
                document.getElementById('placaSinGuion').value = value; // Nuevo código para enviar la placa sin guion
            });

        });
    </script>
    <!-- del los estacionamientos -->
    <script>
	document.addEventListener('DOMContentLoaded', function() {
	    // Setear el valor del input con el número de plaza seleccionado
	    const selectedSlotInput = document.getElementById('selectedSlotInput');
	    const parkingSlots = document.querySelectorAll('.parking-slot');

	    parkingSlots.forEach(slot => {
	        slot.addEventListener('click', function() {
	            const slotNumber = this.textContent.trim();
	            selectedSlotInput.value = slotNumber;
	        });
	    });
	});

	let selectedSlot = null;

	// Función para seleccionar una plaza de estacionamiento
	 function selectSlot(slotElement) {
            if (!slotElement.classList.contains('free')) {
                alert("Este estacionamiento está ocupado.");
                return;
            }

            var slots = document.querySelectorAll('.parking-slot');
            slots.forEach(function (slot) {
                slot.classList.remove('selected');
            });
            slotElement.classList.add('selected');
            
            // Extraer solo el número de estacionamiento
            var slotId = slotElement.id.split('-')[1];
            
            document.getElementById('selectedSlotInput').value = slotId;
            document.getElementById('numEstacionamiento').value = slotId;
        }
	
	 function validateForm() {
         var selectedSlot = document.getElementById('selectedSlotInput').value;
         if (selectedSlot === "") {
             alert("Debe escoger primero un estacionamiento");
             return false; // Evita que el formulario se envíe
         }
         return true;
     }

	// Función para cambiar el estado de una plaza de estacionamiento
	function toggleSlotStatus(slot) {
	    if (slot.classList.contains('occupied')) {
	        slot.classList.remove('occupied');
	        slot.classList.add('free');
	    } else {
	        slot.classList.remove('free');
	        slot.classList.add('occupied');
	    }
	}

	// Función para refrescar el estado del estacionamiento
	function refreshParkingStatus() {
	    // Aquí puedes agregar la lógica para actualizar el estado del estacionamiento desde la base de datos
	    alert('Estado del estacionamiento actualizado');
	}

	// Función para registrar el ingreso de un vehículo
	function registerEntry() {
	    if (!selectedSlot) {
	        alert('Por favor selecciona una plaza para registrar el ingreso');
	        return;
	    }
	    selectedSlot.classList.remove('selected');
	    selectedSlot.classList.add('occupied');
	    selectedSlot.style.backgroundColor = '#dc3545';
	    selectedSlot = null;
	    document.getElementById('selectedSlotInput').value = '';
	    alert('Ingreso registrado');
	    // Aquí puedes agregar la lógica para registrar el ingreso de un vehículo en la base de datos
	}

	// Función para registrar la salida de un vehículo
	function registerExit() {
	    if (!selectedSlot) {
	        alert('Por favor selecciona una plaza para registrar la salida');
	        return;
	    }
	    selectedSlot.classList.remove('selected');
	    selectedSlot.classList.add('free');
	    selectedSlot.style.backgroundColor = '#28a745';
	    selectedSlot = null;
	    document.getElementById('selectedSlotInput').value = '';
	    alert('Salida registrada');
	    // Aquí puedes agregar la lógica para registrar la salida de un vehículo en la base de datos
	}

	
	function selectSlot(slotElement) {
        var slots = document.querySelectorAll('.parking-slot');
        slots.forEach(function (slot) {
            slot.classList.remove('selected');
        });
        slotElement.classList.add('selected');
        
        // Extraer solo el número de estacionamiento
        var slotId = slotElement.id.split('-')[1];
        
        document.getElementById('selectedSlotInput').value = slotId;
        document.getElementById('numEstacionamiento').value = slotId;
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
    
</body>
</html>
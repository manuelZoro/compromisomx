<div class="row">
	<div class="col-md-6">
    	<div class="row">
        	<div class="col-md-3"><strong>Nombre (s)</strong></div>
            <div class="col-md-9">${direcciones_v.cuenta.nombres[diractual_v]}</div>
        </div>
        <div class="row">
        	<div class="col-md-3"><strong>Primer apellido</strong></div>
            <div class="col-md-9">${direcciones_v.cuenta.primer_apellido[diractual_v]}</div>
        </div>
        <div class="row">
        	<div class="col-md-3"><strong>Segundo apellido</strong></div>
            <div class="col-md-9">${direcciones_v.cuenta.segundo_apellido[diractual_v]}</div>
        </div>
        <div class="row">
        	<div class="col-md-3"><strong>País</strong></div>
            <div class="col-md-9">${direcciones_v.pais[diractual_v]}</div>
        </div>
        <div class="row">
        	<div class="col-md-3"><strong>Estado</strong></div>
            <div class="col-md-9">${direcciones_v.estado[diractual_v]}</div>
        </div>
        <div class="row">
        	<div class="col-md-3"><strong>Ciudad</strong></div>
            <div class="col-md-9">${direcciones_v.ciudad[diractual_v]}</div>
        </div>
        <div class="row">
        	<div class="col-md-3"><strong>C.P.</strong></div>
            <div class="col-md-9">${direcciones_v.cp[diractual_v]}</div>
        </div>
	</div>
    <div class="col-md-6">
    	<div class="row">
        	<div class="col-md-3"><strong>Colonia</strong></div>
            <div class="col-md-9">${direcciones_v.colonia[diractual_v]}</div>
        </div>
        <div class="row">
        	<div class="col-md-3"><strong>Calle</strong></div>
            <div class="col-md-9">${direcciones_v.calle[diractual_v]}</div>
        </div>
        <div class="row">
        	<div class="col-md-3"><strong>Manzana</strong></div>
            <div class="col-md-9">${direcciones_v.manzana[diractual_v]}</div>
        </div>
        <div class="row">
        	<div class="col-md-3"><strong>Número Int.</strong></div>
            <div class="col-md-9">${direcciones_v.numero_int[diractual_v]}</div>
        </div>
        <div class="row">
        	<div class="col-md-3"><strong>Número Ext.</strong></div>
            <div class="col-md-9">${direcciones_v.numero[diractual_v]}</div>
        </div>
        <div class="row">
        	<div class="col-md-3"><strong>Cruzamientos</strong></div>
            <div class="col-md-9">${direcciones_v.cruzamientos[diractual_v]}</div>
        </div>
        <div class="row">
        	<div class="col-md-3"><strong>Referencias</strong></div>
            <div class="col-md-9">${direcciones_v.referencias[diractual_v]}</div>
        </div>
        <div class="row">
        	<div class="col-md-3"><strong>Teléfono</strong></div>
            <div class="col-md-9">${direcciones_v.telefono[diractual_v]}</div>
        </div>
        <div class="row">
        	<div class="col-md-8"></div>
            <div class="col-md-4"><button type="button" class="btn btn-gris btn_accion_encabezado" onclick="window.location.href='/compromisomx/Envios/act_dir?env=${detalles_v.num_envio}&id_=${direcciones_v.id[diractual_v]}'">Guardar cambios</button></div>
        </div>
    </div>
</div>
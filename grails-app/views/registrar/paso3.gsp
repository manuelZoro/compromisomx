<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="layout" content="registro_lay" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<title>Insert title here</title>
</head>
<body>
	<g:form name="formulario" controller="registrar" action="savePaso3">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="row">
					<div class="col-md-12">
						<div class="row altura_fila">
							<div class="col-md-1"></div>
							<div class="col-md-10">
								<div class="texto_acuerdo sombrapanel">
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
										Vestibulum ultricies metus ut bibendum gravida. Aliquam nisl
										elit, hendrerit a hendrerit sit amet, ultricies at dui. Etiam
										lectus mauris, mollis non lacus id, semper porttitor ligula.
										Maecenas consectetur odio at est cursus tincidunt. Vestibulum
										mattis ipsum non augue iaculis, eu auctor felis finibus.
										Pellentesque consequat diam lorem, ac accumsan nunc egestas a.
										Vivamus sapien quam, mollis ut erat in, tristique ultrices
										quam. Interdum et malesuada fames ac ante ipsum primis in
										faucibus. Nullam a rutrum urna, vel dictum ex. Phasellus et
										mauris dolor. Vestibulum venenatis laoreet feugiat. In
										lobortis tempor felis, ut commodo enim tincidunt eu. Fusce sed
										diam et neque volutpat maximus. Praesent orci neque, auctor
										nec maximus id, interdum et lorem. Nam at dui vitae ligula
										euismod lacinia nec at nunc. Quisque quam dolor, luctus vitae
										tincidunt et, porttitor non nibh.</p>
									<p>Vivamus scelerisque lorem non felis facilisis, vel
										cursus nulla vulputate. Quisque justo risus, scelerisque eu
										lacinia nec, blandit maximus ligula. Pellentesque porttitor,
										sapien sit amet auctor porta, sapien ante rhoncus neque, nec
										scelerisque massa tellus eget velit. Fusce pharetra mauris
										purus, sit amet pharetra est vulputate et. Praesent lectus
										quam, sagittis tincidunt condimentum sed, pulvinar in massa.
										Vestibulum cursus ante ante, ut feugiat elit ultrices euismod.
										Donec eu mi leo. Suspendisse efficitur bibendum vehicula.
										Mauris condimentum lobortis velit sit amet pulvinar. Curabitur
										aliquet convallis massa. Cras in accumsan ligula. Praesent
										eleifend metus felis, eget sollicitudin magna ullamcorper vel.
										Donec risus massa, feugiat eu nibh quis, facilisis cursus
										quam.</p>
									<p>Suspendisse potenti. Sed in magna sed lectus ultricies
										porta sed a magna. Mauris molestie lorem massa, vel
										condimentum tellus lacinia quis. Maecenas tincidunt vehicula
										laoreet. Duis placerat justo non ligula dapibus pretium.
										Curabitur justo elit, dictum quis dictum mollis, consectetur
										nec augue. Proin sed enim laoreet, bibendum dolor id,
										convallis diam. Integer vel pellentesque ipsum. In hac
										habitasse platea dictumst. Etiam gravida dictum lectus, ac
										laoreet elit vehicula a. Suspendisse potenti. Donec sodales
										imperdiet diam nec mollis. Donec sollicitudin ultricies velit
										vel malesuada. Sed varius ligula vitae lorem vulputate
										blandit.</p>
									<p>Cras lacinia non libero vel mollis. In congue laoreet mi
										non feugiat. Donec sit amet ipsum tempor, fringilla urna id,
										consectetur quam. Sed ipsum tortor, blandit sed ornare ac,
										efficitur vitae mauris. Fusce tincidunt felis eu lobortis
										accumsan. Suspendisse consectetur lorem eget turpis semper
										pretium non fermentum quam. Ut vel elit sem. Nulla id enim
										eget libero lacinia commodo malesuada sed diam. Praesent
										ultricies neque quis leo dictum, ac semper enim porttitor.
										Duis ut felis mauris. Sed rutrum elit vel nunc pretium,
										blandit condimentum leo finibus.</p>
									<p>Aenean ut leo varius, imperdiet ipsum vel, tincidunt
										felis. Proin finibus quis est et aliquam. Maecenas sed elit
										mi. Fusce elementum mauris quis nunc finibus, ut imperdiet
										lectus aliquam. Sed congue, tortor ac posuere pellentesque,
										lacus nunc convallis ante, vel convallis magna mauris at nisl.
										Mauris lobortis lorem eu scelerisque euismod. Mauris finibus
										aliquam egestas. Aenean dui nibh, iaculis eu ligula et,
										porttitor consectetur sapien.</p>
								</div>
							</div>
							<div class="col-md-1"></div>
						</div>
						<div class="row altura_fila">
							<div class="col-md-1"></div>
							<div class="col-md-10">
								<div class="checkbox pull-left">
									<label><input type="checkbox" name="checkacepto"
										id="checkacepto"></label><strong>Acepto el acuerdo
										exhibido arriba.</strong>
								</div>
							</div>
							<div class="col-md-1"></div>
						</div>
						<div class="row altura_fila">
							<div class="col-md-1"></div>
							<div class="col-md-2">
								<p class="txt_izq texto_normal">
									<strong>Firma Digital:</strong>
								</p>
							</div>
							<div class="col-md-3">
								<input type="text" class="form-control texto_campo_principal"
									name="firmadigital" id="firmadigital"
									placeholder="Ejemplo: ${iniciales}">
							</div>
							<div class="col-md-6"></div>
						</div>
						<div class="row altura_fila">
							<div class="col-md-1"></div>
							<div class="col-md-5">
								<p class="txt_izq texto_normal">
									<small><small>Ingrese sus iniciales, valdrán
											como Firma Digital.</small></small>
								</p>
							</div>
							<g:if test="${!session.aviso}">
								<font color="#e8425d">Debe aceptar antes los términos y
									condiciones</font>
							</g:if>
							<div class="col-md-6"></div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>
		<input type="hidden" value="" name="accion" id="accion" />
	</g:form>



	<script type="text/javascript">
		var paso = 3;
		var pantallas = 1;
	</script>
	<g:if test="${session.registro_cuenta.aceptaAcuerdo}">
		<script type="text/javascript">
		document.getElementById("checkacepto").checked = true;
		document.getElementById("firmadigital").value = "${session.registro_cuenta.firmaDigital}";
	    </script>
	</g:if>
</body>
</html>
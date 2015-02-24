<div class="row">
	<table class="ajax" border="3">
		<thead>
			<tr>
				<g:sortableColumn property="nombres"
					title="${message(code: 'mentor.nombres.label', default: 'Nombre')}"
					params="${filters}" />
				<g:sortableColumn property="primer_apellido"
					title="${message(code: 'mentor.primer_apellido.label', default: 'Primer Apellido')}"
					params="${filters}" />
				<g:sortableColumn property="segundo_apellido"
					title="${message(code: 'mentor.segundo_apellido.label', default: 'Segundo Apellido')}"
					params="${filters}" />
			</tr>
		</thead>
		<tbody>
			<g:each in="${cuentaList}" status="i" var="cuenta">
				<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
					<td>
						${fieldValue(bean: cuenta, field: "nombres")}
					</td>
					<td>
						${fieldValue(bean: cuenta, field: "primer_apellido")}
					</td>
					<td>
						${fieldValue(bean: cuenta, field: "segundo_apellido")}
					</td>
				</tr>
			</g:each>
		</tbody>
	</table>

	<div class="pagination">
		<g:paginate total="${cuentaTotal}" />
	</div>
</div>

<script type="text/javascript">
	$(document).ready(function() {
		setupGridAjax();
	});

	// Turn all sorting and paging links into ajax requests for the grid
	function setupGridAjax() {

		$("#grid").find("a").on('click', function(event) {
			//alert("yay");
			event.preventDefault();
			var url = $(this).attr('href');
			//var grid = $(this).parents();
			grid = document.getElementById("grid");
			//grid = $(this).parents('table.ajax');
			//$(grid).html($("#spinner").html());
			$.ajax({
				type : 'POST',
				url : url,
				success : function(data) {
					$(grid).fadeOut('slow', function() {
						$(this).html(data).fadeIn('slow');
						//alert('Hey hey hey');
					});
				}
			});
			//alert("whoo?");
		});
	}
</script>
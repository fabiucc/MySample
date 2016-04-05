<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>
<body>
	<div class="row-fluid">
		<div class="box span12">
			<div class="box-header well" data-original-title>
				
					<h2 style="color:white;">${title}</h2>
					<h2 style="color:white;">${message}</h2>				    
			</div>			 
		</div>
	</div>
	<c:url value="/j_spring_security_logout" var="logoutUrl" />
	<!-- csrt for log out-->
	<form action="${logoutUrl}" method="post" id="logoutForm">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>
	<script>
		function formSubmit() {
			document.getElementById("logoutForm").submit();
		}
	</script>
	<div class="box-content">
		<div class="control-group table-responsive">
			<table class="table">
						<tr>
							<td>
								<h4>Benvenuto nella console di openshiftconsole</h4>
								<ul>
									<li>Implementa le tue classi per ottenere le funzionalita'
										richieste</li>
									<li>Configurazione dinamica delle pagine </li>
									<li>Configuarazione di spring security per
										l'Authentication and Authorization</li>
								</ul>
							</td>
							<td><a href="javascript:formSubmit()" class="visible-phone visible-tablet btn btn-round" style="color: black;">Logout</a></td>
							<td width="60%"><img src="resources/image/martellHome.png" align="right" width="50%"></td>
					</table>
			
		</div>
	</div>
</body>
</html>

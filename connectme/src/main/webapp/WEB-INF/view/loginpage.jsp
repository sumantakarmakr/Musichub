<%@ include file="/WEB-INF/view/headerfooter/header.jsp"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="container-wrapper">
	<div class="container">
		<div id="login-box">
			<h2>Login with Username and Password</h2>
			<form:form action="perform_login" method="post">



				<div class="form-group">
					<label for="username">User: </label> <input class="form-control"
						name="username" required="true" />
				</div>
				<div class="form-group"></div>
				<div class="form-group">
					<label for="password">Passwrod:</label> <input type="password"
						class="form-control" name="password"
						required="true" />
				</div>
				<div class="form-group"></div>
				<input type="submit" value="submit" class="btn btn-default">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</form:form>
		</div>
	</div>
</div>
<%@ include file="/WEB-INF/view/headerfooter/footer.jsp"%>
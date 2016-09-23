<%@ include file="/WEB-INF/view/headerfooter/header.jsp"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<div align="center" class="container">
<form:form action="edituserdata" method="post" commandName="user"
		enctype="multipart/form-data">
		<form:hidden path="userId" value="${user.userId}" />
		<form:hidden path="username" value="${user.username}" />
		
		
<table class="table table-bordered table-striped" align="center">

<tr><td><h4>Email </h4></td><td><div class="form-group">
						<form:input path="email"  /></td></tr>
<tr><td><h4>Locatin </h4></td><td><div class="form-group">
						<form:input path="location"  /></td></tr>
<tr><td><h4>Phone No </h4></td><td><div class="form-group">
						<form:input path="phone" /></td></tr>
<tr><td><h4>Name </h4></td><td><div class="form-group">
						<form:input path="name" /></td></tr>
<tr><td><h4>Password </h4></td><td><div class="form-group">
						<form:input type="password" path="password" /></td></tr>

<tr><td >change profile pic</td><td ><div class="form-group">
						<input name="Profilepic" type="file" />
					</div></td></tr>
					<tr>
				<td colspan="2" align="center"><input type="submit"
					value="update" /></td>
			</tr>


</table></form:form>

</div>

<%@ include file="/WEB-INF/view/headerfooter/footer.jsp"%>
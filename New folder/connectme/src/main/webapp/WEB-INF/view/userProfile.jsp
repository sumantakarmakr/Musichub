<%@ include file="/WEB-INF/view/headerfooter/header.jsp"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<div align="center" class="container">

	<span  width="500px"><img height="100px" width="100px"
							src="${pageContext.request.contextPath}/resources/images/${user.userId}.jpg" /></span>
							<span><h2>welcome.......${user.name} </h2></span>
</div>

<div align="center" class="container">

<input type="hidden" name="userId" value="<c:out value="${user.userId}"/>" />
<table class="table table-bordered table-striped" align="center">

<tr><td><h4>UserID </h4></td><td><h4>${user.userId} </h4></td></tr>
<tr><td><h4>Email </h4></td><td><h4>${user.email} </h4></td></tr>
<tr><td><h4>Locatin </h4></td><td><h4>${user.location} </h4></td></tr>
<tr><td><h4>Phone No </h4></td><td><h4>${user.phone} </h4></td></tr>
<%-- <sec:authorize access="hasRole('ROLE_USER')"> --%>
<tr><td colspan="2" ><a  href="edituser?userId=${user.userId}">Click here to edit</a></td></tr>
<%--
<tr><td colspan="2" ><a  href="myblog?username=${user.username}">Click here to MY Blog</a></td></tr>
<tr><td colspan="2" ><a  href="myforum?username=${user.username}">Click here to My Forum</a></td></tr>-->
<%-- </sec:authorize> --%>
</table>

</div>

<div align="center" class="container">

	
							<span><h2>....Friends...</h2></span>
							
							<table class="table table-bordered table-striped" align="center">
<tr><th colspan="2"><h4>Friend List</h4></th><th colspan="2"><h4>Add more Friends</h4></th></tr>
<tr>

<td></td>
<td></td>


<td></td>
<td></td>
</tr>

</table>
</div>
<%@ include file="/WEB-INF/view/headerfooter/footer.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ include file="/WEB-INF/view/headerfooter/header.jsp"%>

	<c:if test="${pageContext.request.userPrincipal.name != null}">
<div class="container">
<form:form action="${pageContext.request.contextPath}/addblog" method="post" >
<table class="table table-bordered table-striped" align="center">




</table></form:form></div></c:if>
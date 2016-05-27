<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/headerfooter/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Register</h1>

            <p class="lead">Please fill in your information below:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/register"
                   method="post" commandName="user">

        <h3>Basic Info:</h3>

        <div class="form-group">
            <label for="name">Name</label>
            <form:errors path="username" cssStyle="color: #ff0000" />
            <form:input path="username" id="name" class="form-Control" />
        </div>

            <div class="form-group">
            <label for="password">Password</label>
            <form:errors path="password" cssStyle="color: #ff0000" />
            <form:password path="password" id="password" class="form-Control" />
        </div>


        <br/>
        <br/><br/>

        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/" />" class="btn btn-default">Cancel</a>

        </form:form>

<%@ include file="/WEB-INF/views/headerfooter/footer.jsp" %>l>
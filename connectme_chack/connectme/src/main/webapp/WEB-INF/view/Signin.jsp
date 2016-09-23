<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="/WEB-INF/view/headerfooter/header.jsp"%>


<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Register</h1>

			<p class="lead">Please fill in your information below:</p>
		</div>

		<form:form action="${pageContext.request.contextPath}/register"
			method="post" commandName="userProfile" enctype="multipart/form-data">

			<h3>Basic Info:</h3>
<div class="form-group">
				<label for="name">Name</label>
				<form:errors path="name" cssStyle="color: #ff0000" />
				<form:input path="name" id="name" class="form-Control" />
			</div>
			<div class="form-group">
				<label for="username">Username</label>
				<form:errors path="username" cssStyle="color: #ff0000" />
				<form:input path="username" id="username" class="form-Control" />
			</div>

			<div class="form-group">
				<label for="password">Password</label>
				<form:errors path="password" cssStyle="color: #ff0000" />
				<form:password path="password" id="password" class="form-Control" />
			</div>
			<div class="form-group">
				<label for="email">Email</label>
				<form:errors path="email" cssStyle="color: #ff0000" />
				<form:input path="email" id="email" class="form-Control" />
			</div>
			<div class="form-group">
				<label for="location">Location</label>
				<form:errors path="location" cssStyle="color: #ff0000" />
				<form:input path="location" id="location" class="form-Control" />
			</div>
			<div class="form-group">
				<label for="phone">Mobile</label>
				<form:errors path="phone" cssStyle="color: #ff0000" />
				<form:input path="phone" id="phone" class="form-Control" />
			</div>
            <div class="form-group">
				<label for="name">Image</label> <input name="Profilepic" type="file"
					class="form-Control" /></div>

			<br />
			<br />
			<br />

			<input type="submit" value="submit" class="btn btn-default"/>
			
			<a href="<c:url value="/" />" class="btn btn-default">Cancel</a>

		</form:form>
		</div>
		</div>
	<%@ include file="/WEB-INF/view/headerfooter/footer.jsp"%>
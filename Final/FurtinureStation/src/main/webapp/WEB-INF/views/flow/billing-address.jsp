<%@ include file="/WEB-INF/views/headerfooter/header.jsp" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 

<body>

<div class="container">
<div class="row panel-heading">
		<div class="panel-title text-center">
	    	<div  class="title h2 col-sm-6 col-md-6 col-lg-9">Billing Details</div>
	    	 
	        
        </div>
    </div> 
<div class="row">

<form:form commandName="cart" method="post" >

<%-- <input type="text" name="${_csrf.parameterName}" value="${_csrf.token}" />  --%>
	 	<div class="row row-height">
			<div class="col-xs-10 col-sm-6 col-md-6 col-lg-6 col-height"> 
				<div class="form-group ">
					<label for="Address" class="cols-sm-12 control-label">Address</label>
					 <div class="input-group ">
							
							<form:input path="Address" type="text"  placeholder="Address"/>
					</div>
					<form:errors cssClass="error" path="Address"  ></form:errors>
				</div>
			</div>
	 	</div>
	 	
	 	<div class="row row-height">
			<div class="col-xs-10 col-sm-6 col-md-6 col-lg-6 col-height"> 
				<div class="form-group ">
					 
					 <div class="input-group ">
<%-- 								<input type="text" name="${_csrf.parameterName}" value="${_csrf.token}" />  --%>
							<input type="submit" name="_eventId_submit" class="btn btn-primary btn-lg btn-block login-button" />
						
					</div>
				</div>
			</div>
	 	</div>
	</form:form>

</div>
</div>
</body>
 
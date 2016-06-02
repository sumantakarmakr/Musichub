<%@ include file="/WEB-INF/views/headerfooter/header.jsp" %>
    
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
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
					<label for="Address" class="cols-sm-12 control-label">Street No</label>
					 <div class="input-group ">
							<span class="input-group-addon cols-sm-12"><i class="fa fa-user fa" aria-hidden="true"></i></span>
							<form:input path="Address" type="text" class="form-control cols-sm-12 cols-lg-3"  placeholder="Address"/>
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
 
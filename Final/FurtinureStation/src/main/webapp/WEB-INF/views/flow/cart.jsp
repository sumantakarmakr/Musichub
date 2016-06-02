<%@ include file="/WEB-INF/views/headerfooter/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
<script src="<c:url value="/resources/js/jquery-2.2.4.min.js"/>"></script>
<script src="<c:url value="/resources/js/angular.js"/>"></script>

<script> 
		var myApp = angular.module('myApp',[]);
	 
		myApp.controller('getData', function($scope)
		 { 
			 
			$scope.cart = ${cartList};
			$scope.cartId=${cartId};
		 
		 });
		
		 
	
  </script> 
 
<script type="text/javascript">
	$(window).scroll(function() {
	  if ($(document).scrollTop() > 50) {
	    $('nav').addClass('shrink');
	  } else {
	    $('nav').removeClass('shrink');
	  }
	});
</script>
</head>
<body  ng-app="myApp" ng-controller="getData">


<div class="container">


 
	<div class="panel-heading">
		<div class="panel-title text-center">
	    	<div  class="title h2 col-sm-6 col-md-6 col-lg-9">My Cart</div>
	    	 
	        
        </div>
    </div> 
	<div class="row text-center"><!-- cart grid -->
		 <!--<form:form   action="collectbillinginfo?cartId=${cartId}" >-->
			<div class="container col-lg-9" align="center" >
  				<table style="width : auto !important" class="h5 table table-responsive table-bordered table-striped">
   					<tr>
        		<!-- 		<th>Group Name</th> -->
        				<th>Cart ID</th>
        				<th>Product Name</th>
        				<th>Product Price (Rs.)</th>
<!-- 				        <th>Product ID</th> -->
				        <th>Quantity</th>
				        <th>Product Preview</th>
				        <th></th>
    				</tr>
    				 <c:forEach items="${cartList}" var="cart">
    				<tr ng-repeat="group in cart | filter:searchKeyword	">
    					
         		<!-- 	<td>{{group.groupName}}--> 
      					<td><c:out value="${cart.cartId}"/></td>
      					<td><c:out value="${cart.pname}"/></td> 
				  		<td><c:out value="${cart.price}"/></td> 
<!-- 				      	<td>{{group.productId}}</td>  -->
				      	<td><c:out value="${cart.qty}"/></td>
				      	<td><a href="collectbillinginfo?cartId=${cart.cartId}"/>Checkout</a></td>
				      	<!-- 
				      	<td><img style="width:30px;height:30px" src="<c:url value='"${pageContext.request.contextPath}/resources/images/${cart.ID}.jpg' />"  alt="Img Not Found" /> </td>
				     -->
				    </tr>
				    </c:forEach>
				</table>
			</div>
		<!-- </form:form> --> 
	</div>
	<hr />
	<div class="container">
	<div class="row">
	<div class="col-lg-3">


	
	 
	 
<!-- 		<input type="hidden" id="cart" name="cart" value=${cart} /> -->
	
	<input type="submit" value="Check Out" />
	
	
	</div>
	</div>
	</div>
</div>
</div>
</body>

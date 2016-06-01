<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/headerfooter/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Product Detail</h1>


            <p class="lead">Here is the detail information of the product:</p>
        </div>

        <div class="container" ng-app = "cartApp">
            <div class="row">
                <div class="col-md-5">
                    <img src="<c:url value="resources/images/${product.ID}.jpg" />" alt="image" style="width:100%"/>
                </div>
                <div class="col-md-5">
                    <h3>${product.name}</h3>
                    <p>${product.desc}</p>
                    
                    <p>${product.price} INR</p>

                    <br/>

                    <c:set var = "role" scope="page" value="${param.role}" />
                    <c:set var = "url" scope="page" value="/AllProducts" />
                    <c:if test="${role='admin'}">
                        <c:set var="url" scope="page" value="/admin/productInventory" />
                    </c:if>
                   <p ng-controller="cartCtrl">
                   <form:form action="addtocart?ID=${product.ID}&userName=${pageContext.request.userPrincipal.name}" modelAttribute="Cart" commandName="cart">
 
                       <input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}"/>
			<input type="hidden" value="${pageContext.request.userPrincipal.name}" /> 
			<input type="hidden" value="${product.ID}"/>
			<span class="h3"> Quantity : <form:input path="qty" type="number" style="width:15%" /> </span>
			<br/>
			 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			<input type="submit"   value="Add" />
			</form:form>
                    </p>

                </div>
            </div>
        </div>


<!-- My -->
<script src="<c:url value="/resources/js/controller.js" /> "></script>

<%@ include file="/WEB-INF/views/headerfooter/footer.jsp" %>

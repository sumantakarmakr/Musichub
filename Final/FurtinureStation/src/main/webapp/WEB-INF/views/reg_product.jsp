<%@ include file="/WEB-INF/views/headerfooter/header.jsp" %>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page isELIgnored="false"%>
    <div  class="container">
    <div class="page-header">
     <h1>Add Product</h1>
            <p class="lead">Fill the below information to add a product:</p>
        </div>
        <div class="container-fluid">
        <form:form action="${pageContext.request.contextPath}/insert" method="post" commandName="productmodel" enctype="multipart/form-data" >
                     <div class="form-group">
                     <label for="name">Group Name:</label>
                    <form:input path="GroupName" class="form-Control"/>
                     <form:errors path="GroupName" cssStyle="color:#ff0000;"/>
                     </div>
                     <div class="form-group">
                    <label for="name">Product Name:</label>
                    <form:input path="Name" class="form-Control"/>
                    <form:errors path="Name" cssStyle="color:#ff0000;"/></div>
                 <div class="form-group">
                    <label for="name">Product Price:</label>
                    <form:input path="Price" class="form-Control"/>
                    <form:errors path="Price" cssStyle="color:#ff0000;"/>
                    </div>
                <div class="form-group">
                    <label for="name">Product Quantity:</label>
                    <form:input path="Qty" class="form-Control"/>
                    <form:errors path="Qty" cssStyle="color:#ff0000;"/></div>
                <div class="form-group">
                    <label for="name">Description</label>
                    <form:input path="Desc" class="form-Control"/>
                    <form:errors path="Desc" cssStyle="color:#ff0000;"/></div>
                <div class="form-group">
                    <label for="name">Image</label>
                   <input name="Photo" type="file" class="form-Control"/></div>
                    <br/>
                    <input type="submit" value="submit" class="btn btn-default"/>
               
        </form:form></div>
    </div>

<%@ include file="/WEB-INF/views/headerfooter/footer.jsp" %>
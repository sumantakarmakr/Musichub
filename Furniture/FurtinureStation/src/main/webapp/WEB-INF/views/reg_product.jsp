<%@ include file="/WEB-INF/views/headerfooter/header.jsp" %>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page isELIgnored="false"%>
    <div align="center" class="container">
     <c:url var="userRegistration" value="saveUser.html" />
        <form:form action="insert" method="post" modelAttribute="productmodel">
            <table border="0"  class="table table-bordered table-striped">
                <tr>
                    <td colspan="2" align="center">
                    <h2>Enter Products</h2>
                    </td>
                </tr>
                <tr>
                    <td align="right">Group Name:</td>
                    <td><div class="form-group"><form:input path="GroupName" /></div></td>
                </tr>
                <tr>
                    <td align="right">Product Name:</td>
                    <td><div class="form-group"><form:input path="Name" /></div></td>
                </tr>
                <tr>
                    <td align="right">Product Price:</td>
                    <td><div class="form-group"><form:input path="Price" /></div></td>
                </tr>
                <tr>
                    <td align="right">Product Quantity:</td>
                    <td><div class="form-group"><form:input path="Qty" /></div></td>
                </tr>
               <tr>
                    <td align="right">Description</td>
                    <td><div class="form-group"><form:input path="Desc" /></div></td>
                </tr>
                <tr>
                    <td align="right">Image</td>
                    <td><div class="form-group"><form:input path="Photo" /></div></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Register" /></td>
                </tr>
            </table>
        </form:form>
    </div>

<%@ include file="/WEB-INF/views/headerfooter/footer.jsp" %>
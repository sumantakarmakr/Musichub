
<%@ include file="/WEB-INF/views/headerfooter/header.jsp" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
    <div align="center" class="container">
     
        <form:form action="update" method="post" commandName="pdm" enctype="multipart/form-data">
         <form:hidden path="ID" value="${pdm.ID}" />
            <table border="0"  class="table table-bordered table-striped">
                <tr>
                    <td colspan="2" align="center">
                    <h2>Edit Products</h2>
                    </td>
                </tr>
                <tr>
                    <td align="right">Group Name:</td>
                    <td><div class="form-group"><form:input path="GroupName" disabled="true"/></div></td>
                </tr>
                <tr>
                    <td align="right">Product Name:</td>
                    <td><div class="form-group"><form:input path="Name" disabled="true"/></div></td>
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
                    <td><div class="form-group"><input name="Photo" type="file" /></div></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Update" /></td>
                </tr>
            </table>
        </form:form>
    </div>

<%@ include file="/WEB-INF/views/headerfooter/footer.jsp" %>
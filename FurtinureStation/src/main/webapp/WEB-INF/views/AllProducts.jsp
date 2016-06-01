
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/headerfooter/header.jsp" %>
<script>

   
</script>
<div ng-app="myApp" ng-controller="customersCtrl"> 
<div class="container"><form >
 <div class="form-group">
      <div class="input-group">
        <div class="input-group-addon"><i class="fa fa-search"></i></div>
 <script>
$(document).ready(function() {
$('#search').keyup(function() {
searchTable($(this).val());
});
});
$( window ).load(function() {
	searchTable($('#search').val());
});

function searchTable(inputVal) {
var table = $('#searchObjResults');
table.find('tr').each(function(index, row) {
var allCells = $(row).find('td');
if (allCells.length > 0) {
var found = false;
allCells.each(function(index, td) {
var regExp = new RegExp(inputVal, 'i');
if (regExp.test($(td).text())) {
found = true;
return false;
}
});
if (found == true)
$(row).show();
else
$(row).hide();
}
});
}
</script>
<input type="text" id="search" class="form-control" value='${param.searchkeyword}'"/></div></div>
</form> 
<hr>
   <c:if test="${!empty productList}">
  <table id="searchObjResults"  class="table table-bordered table-striped">
  <tr>
  <th><a href="#" ng-click="sortType = 'tastiness'; sortReverse = !sortReverse">Name
  <span ng-show="sortType == 'tastiness' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'tastiness' && sortReverse" class="fa fa-caret-up"></span>
          </a>
  </th><th><a href="#" ng-click="sortType = 'tastiness'; sortReverse = !sortReverse">Price
  <span ng-show="sortType == 'tastiness' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'tastiness' && sortReverse" class="fa fa-caret-up"></span>
          </a>
  </th>
  <th>
  <a href="#" ng-click="sortType = 'tastiness'; sortReverse = !sortReverse">
  Photos
  <span ng-show="sortType == 'tastiness' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'tastiness' && sortReverse" class="fa fa-caret-up"></span>
          </a>
  </th>
  
  <th></th>
  <th></th>
  <th></th>
  </tr>
    <c:forEach items="${productList}" var="user"> 
  
  <tr ng-repeat="c in  myData | filter:search">
    
    <input type="hidden" name="id" value="<c:out value="${user.ID}"/>" />
    <td><c:out value="${user.name}"/></td>
    <td><c:out value="${user.price }"/></td>
    <td><img height="100px" width="100px" src="<c:out value="${pageContext.request.contextPath}/resources/images/${user.ID}.jpg"/>"/></td>
     
    <td><a href="viewProduct?ID=${user.ID}"/>view Details</a></td>
                <td><a href="admin/editproduct?ID=${user.ID}"/>Edit</a></td>
    <td><a href="admin/delete?ID=${user.ID}"/>Delete</a></td>
  </tr> </c:forEach>
</table> </c:if>

</div>
</div>


<script>
var app = angular.module('myApp', []);
app.controller('customersCtrl', function($scope,$http,$location) {
	$scope.searchKeyword=location.search.substr(15);
 $scope.myData =${productList};
});
</script>

<%@ include file="/WEB-INF/views/headerfooter/footer.jsp" %>
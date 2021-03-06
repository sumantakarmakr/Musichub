
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/headerfooter/header.jsp" %>
<script>

    $(document).ready(function(){
        var searchCondition = '${param.searchkeyword}';

        $('.table').DataTable({
            "lengthMenu": [[1,2,3,5,10, -1], [1,2,3,5,10, "All"]],
            "oSearch" : {"sSearch":productList }
        });
    });
</script>
<div ng-app="myApp" ng-controller="customersCtrl"> 
<div class="container"><form >
 <div class="form-group">
      <div class="input-group">
        <div class="input-group-addon"><i class="fa fa-search"></i></div>
<!-- <input type="text" ng-model="searchKeyword" class="form-control cols-sm-12 cols-lg-9" name="searchKeyword" id="searchKeyword" /> -->
<input type="text" id="mytext" class="form-control" ng-model="search" ng-init="search='${param.searchkeyword}'"/></div></div></form>
<hr>
   <c:if test="${!empty productList}">
  <table id="searchObjResults"  class="table table-bordered table-striped">
  <tr><th>
  <a href="#" ng-click="sortType = 'name'; sortReverse = !sortReverse">
  Product ID
  <span ng-show="sortType == 'name' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'name' && sortReverse" class="fa fa-caret-up"></span>
          </a>
  </th>
  <th><a href="#" ng-click="sortType = 'tastiness'; sortReverse = !sortReverse">Name
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
  
  <tr ng-repeat="x in  myData | filter:search">
  <input type="hidden" name="id" value="<c:out value="${user.ID}"/>" />
  
    <td><c:out value="${user.groupname}"/> </td>
    <td><c:out value="${user.name}"/></td>
    <td><img height="100px" width="100px" src="<c:out value="resources/images/${user.ID}.jpg"/>"/></td>
     
    <td><a href="viewProduct?ID=${user.ID}"/>view Details</a></td>
                <td><a href="editproduct?ID=${user.ID}"/>Edit</a></td>
    <td><a href="delete?ID=${user.ID}"/>Delete</a></td>
  </tr>  </c:forEach>
</table> </c:if>

</div>
</div>


<script>
var app = angular.module('myApp', []);
app.controller('customersCtrl', function($scope,$http,$location) {
	//$scope.searchKeyword=location.search.substr(15);
 $scope.myData =${productList};
});
</script>

<%@ include file="/WEB-INF/views/headerfooter/footer.jsp" %>
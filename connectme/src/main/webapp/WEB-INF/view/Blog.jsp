
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ include file="/WEB-INF/view/headerfooter/header.jsp"%>
<script>
/*
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
}*/
</script>

<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<div class="container">
<form:form action="${pageContext.request.contextPath}/addblog" method="post" commandName="blog" >
			
			
			<h3>Add Blog:</h3>
                <div class="form-group">
				<label for="title">Title</label>
				<form:errors path="title" cssStyle="color: #ff0000" />
				<form:input path="title" id="title" class="form-Control" />
			</div>
			
			<div class="form-group">
				<label for="content">Content</label>
				<form:errors path="content" cssStyle="color: #ff0000" />
				<form:textarea path="content"  rows="5" cols="30" class="form-Control" />
			</div>
			
			
			
			<br />

			<input type="submit" value="submit" class="btn btn-default">
			<a href="<c:url value="/" />" class="btn btn-default">Cancel</a>

		</form:form>
			
			<br/>
			<br/>
			
</div>

<div ng-app="myApp" ng-controller="blogCtrl">
	<div class="container">
		<form>
			<div class="form-group">
				<div class="input-group">
					<div class="input-group-addon">
						<i class="fa fa-search"></i>
					</div>
					<input type="text" ng-model="searchKeyword" class="form-control cols-sm-12 cols-lg-9" name="searchKeyword" id="searchKeyword" />				</div>
			</div>
		</form>
		<hr>
<%-- 		<c:if test="${!empty blogList}"> --%>
			<table id="searchObjResults"
				class="table table-bordered table-striped">
				<tr>
					<th><a href="#"
						ng-click="sortType = 'name'; sortReverse = !sortReverse">
							Title <span ng-show="sortType == 'name' && !sortReverse"
							class="fa fa-caret-down"></span> <span
							ng-show="sortType == 'name' && sortReverse"
							class="fa fa-caret-up"></span>
					</a></th>
					<th><a href="#"
						ng-click="sortType = 'tastiness'; sortReverse = !sortReverse">Content
							<span ng-show="sortType == 'tastiness' && !sortReverse"
							class="fa fa-caret-down"></span> <span
							ng-show="sortType == 'tastiness' && sortReverse"
							class="fa fa-caret-up"></span>
					</a></th>
					
					<th><a href="#"
						ng-click="sortType = 'tastiness'; sortReverse = !sortReverse">
							Username <span ng-show="sortType == 'tastiness' && !sortReverse"
							class="fa fa-caret-down"></span> <span
							ng-show="sortType == 'tastiness' && sortReverse"
							class="fa fa-caret-up"></span>
					</a></th>
					<th></th>
					<th></th>
					<th></th>
				</tr>
				

					<tr ng-repeat="x in myData | filter:searchKeyword">
						

						<td>{{x.Title}}</td>
						<td>{{x.Content}}</td>
						
						<td>{{x.username}}</td>

						
					</tr>
				
			</table>
<%-- 		</c:if> --%>

	</div>
</div>



<script>
var App = angular.module('myApp', []);
App.controller('blogCtrl', function($scope,$http,$location) {
	$scope.searchKeyword=location.search.substr();
 $scope.myData =${blogList};
});
</script>

<%@ include file="/WEB-INF/view/headerfooter/footer.jsp"%>
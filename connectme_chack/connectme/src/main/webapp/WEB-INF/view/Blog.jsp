
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ include file="/WEB-INF/view/headerfooter/header.jsp"%>
<script>/*
<script type="text/javascript">
$(window).scroll(function() {
if ($(document).scrollTop() > 50) {
$('nav').addClass('shrink');
} else {
$('nav').removeClass('shrink');
}
});*/
</script>


<script>
var App = angular.module('myApp',[]);
App.controller("blogCtrl", function($scope) {
	//$scope.searchKeyword=location.search.substr();
 $scope.myData =${blogList};//
});
</script>

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


	<c:if test="${pageContext.request.userPrincipal.name != null}">
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
			
</div></c:if>

<div ng-app="myApp"  ng-controller="blogCtrl">
	<div class="container">
		<form>
			<div class="form-group">
				<div class="input-group">
					<label>Search</label>
					<input type="text" ng-model="searchKeyword" class="form-control " name="searchKeyword" id="searchKeyword" />				</div>
			</div>
		</form>
		<hr/>

			<table id="searchObjResults"
				class="table table-bordered table-striped">
				<tr>
					<th>
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
					
				</tr>
				

					<tr ng-repeat="x in myData | filter:searchKeyword ">
						<td>{{x.Title}}</td>
						<td>{{x.Content}}</td>
						
						<td>{{x.username}}</td>

						<sec:authorize access="hasRole('ROLE_ADMIN')">
							
							<td><a href="${pageContext.request.contextPath}/admin/deleteblog?ID=${blog.ID}" >Delete</a></td>
						</sec:authorize>
						<sec:authorize access="hasRole('ROLE_USER')">
							
							<td><a href="${pageContext.request.contextPath}/admin/blogdetails?ID=${blog.ID}" >Add Comment</a></td>
						</sec:authorize>
					</tr>
				
			</table>
</div>
</div>
	</div>



<%@ include file="/WEB-INF/view/headerfooter/footer.jsp"%>
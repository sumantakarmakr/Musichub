
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ include file="/WEB-INF/view/headerfooter/header.jsp"%>
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

<c:if test="${pageContext.request.userPrincipal.name != null}">

<div class="container">
<form:form action="${pageContext.request.contextPath}/addforum" method="post" commandName="forum" >
			
			
			<h3>Add Forum:</h3>
			 <div class="form-group">
				<label for="title">Catagoty</label>
				
				<form:select path="catagory">
				 <form:option value="0" label="--- Select ---" />
                      <form:option items="JAVA" value="java"/>
                       <form:option items=".Net" value=".Net"/>
                        <form:option items="PHP" value="php"/>
                       </form:select>
			</div>
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

<div ng-app="myApp" ng-controller="blogCtrl">
	<div class="container">
		<form>
			<div class="form-group">
				<div class="input-group">
					<div class="input-group-addon">
						<i class="fa fa-search"></i>
					</div>
					<input type="text" id="search" class="form-control"
						value='${param.searchkeyword}' "/>				</div>
			</div>
		</form>
		<hr>
		<c:if test="${!empty forumList}">
			<table id="searchObjResults"
				class="table table-bordered table-striped">
				<tr>
				<th><a href="#"
						ng-click="sortType = 'name'; sortReverse = !sortReverse">
							Catagory <span ng-show="sortType == 'name' && !sortReverse"
							class="fa fa-caret-down"></span> <span
							ng-show="sortType == 'name' && sortReverse"
							class="fa fa-caret-up"></span>
					</a></th>
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
					
				</tr>
				
				<c:forEach items="${forumList}" var="forum">

					<tr ng-repeat="x in  myData | filter:search">
						<input type="hidden" name="id" value="<c:out value="${forum.ID}"/>" />

						<td><c:out value="${forum.catagory}" /></td>
						<td><c:out value="${forum.title}" /></td>
						<td><c:out value="${forum.content}" /></td>
						
						<td><c:out value="${forum.username}" /></td>

						<sec:authorize access="hasRole('ROLE_ADMIN')">
							
							<td><a href="${pageContext.request.contextPath}/admin/delete?ID=${forum.ID}" >Delete</a></td>
						</sec:authorize>
					</tr>
				</c:forEach>
			</table>
		</c:if>

	</div>
</div>
<script>
<script type="text/javascript">
$(window).scroll(function() {
if ($(document).scrollTop() > 50) {
$('nav').addClass('shrink');
} else {
$('nav').removeClass('shrink');
}
});
</script>


<script>
var app = angular.module('myApp', []);
app.controller('blogCtrl', function($scope,$http,$location) {
	//$scope.searchKeyword=location.search.substr(15);
 $scope.myData =${forumList};
});
</script>

<%@ include file="/WEB-INF/view/headerfooter/footer.jsp"%>
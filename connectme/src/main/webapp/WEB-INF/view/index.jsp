<%@ include file="/WEB-INF/view/headerfooter/header.jsp"%>

<style>
#myH1 {
	text-shadow: 5px 5px 10px black;
}
</style>
<div class="container">
	<br>
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
			<li data-target="#myCarousel" data-slide-to="4"></li>
			<li data-target="#myCarousel" data-slide-to="5"></li>


		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="resources/images/slid1.jpg" width="1200px" height="400px">
			</div>
			<div class="item">
				<img src="resources/images/slid2.jpg" width="1200px" height="400px">
			</div>
			<div class="item">
				<img src="resources/images/slid3.jpg" width="1200px" height="400px">
			</div>
			<div class="item">
				<img src="resources/images/slid4.jpg" width="1200px" height="500px">
			</div>

		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
</div>
</br>



<%@ include file="/WEB-INF/view/headerfooter/footer.jsp"%>
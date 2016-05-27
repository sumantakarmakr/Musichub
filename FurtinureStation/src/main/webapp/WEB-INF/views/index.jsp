<%@ include file="/WEB-INF/views/headerfooter/header.jsp" %>
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
        <img  src="resources/images/s1.jpg" width="1200px" height="500px">
      </div>
      <div class="item">
        <img  src="resources/images/s7.jpg" width="1200px" height="500px" >
      </div>
      <div class="item">
        <img  src="resources/images/s3.jpg" width="1200px" height="500px" >
      </div>
      <div class="item">
        <img  src="resources/images/s4.jpg" width="1200px" height="500px" >
      </div>

      <div class="item">
        <img  src="resources/images/s5.jpg"  width="1200px" height="500px">
      </div>
    
     
      <div class="item">
        <img class="img-responsive" src="resources/images/s6.jpg" width="1200px" height="500px" >
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
</br>

<div class="container" >
<div class="row">

<div class="col-sm-3">
<p >Get music and listen to the latest songs from your favorite artists for FREE.
 Discover new music on MTV.</p>
</div>
<div class="col-sm-2" >


<a href="AllProducts?searchkeyword=Table">
<img id="image" src="resources/images/f1.jpg" height="150px" width="150px"/></a>

</div>
<div class="col-sm-2">

<a href="AllProducts?searchkeyword=Chair">
<img id="image" src="resources/images/f2.jpg" height="150px" width="150px"/></a>

</div>
<div class="col-sm-2">


<a href="AllProducts?searchkeyword=Bed">
<img id="image" src="resources/images/f3.jpg" height="150px" width="150px"/></a>

</div>
<div class=" col-sm-3">
<p>Get music and listen to the latest songs from your favorite artists for FREE.
 Discover new music on MTV.</p>
</div>
</div></div>
<%@ include file="/WEB-INF/views/headerfooter/footer.jsp" %>
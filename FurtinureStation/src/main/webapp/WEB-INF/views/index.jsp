<%@ include file="/WEB-INF/views/headerfooter/header.jsp" %>
<style>
#myH1 {
     text-shadow:5px 5px 10px black;
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
        <img  src="resources/images/s1.jpg" width="1200px" height="400px">
      </div>
      <div class="item">
        <img  src="resources/images/s7.jpg" width="1200px" height="400px" >
      </div>
      <div class="item">
        <img  src="resources/images/s3.jpg" width="1200px" height="400px" >
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

<div class="col-sm-12">
<div class="col-sm-4" >


<a href="AllProducts?searchkeyword=Table">
<img class="img-responsive" id="image" src="resources/images/tabler.jpg"  width="300px" height="300px" /></a>
 <div class="carousel-caption">
              <h3 id="myH1">Click to search for more Table.</h3>
            </div></a>
</div>
<div class="col-sm-4">

<a href="AllProducts?searchkeyword=Chair">
<img class="img-responsive" id="image" src="resources/images/f4.jpg"  width="300px" height="300px" />
 <div class="carousel-caption">
              <h3 id="myH1">Click to search for more Chair.</h3>
            </div></a>
</div>
<div class="col-sm-4">
<a href="AllProducts?searchkeyword=Bed">
<img class="img-responsive" id="image" src="resources/images/Bed.jpg"  width="300px" height="300px" /></a>
 <div class="carousel-caption">
              <h3 id="myH1">Click to search for more Bed.</h3>
            </div></a>
</div>

</div></div></div>
<div class="container" >
<div class="row">

<div class="col-sm-12">
<div class="col-sm-4" >
<p>For those who look for quality in design and manufacture, any dining table will just not do. This is where the search for the perfect table begins. Information is everything, so to insure that you have made the best decision about buying the perfect modern dining table, you have to know exactly what you want and then search for it. There are so many amazing designs out there and that make the choice even more difficult
</p>
</div>
<div class="col-sm-4">
<p></p>
</div>
<div class="col-sm-4">
The world is not lacking modern bedroom design ideas but finding the right one for your home can often prove to be a challenge. This style can take many forms and its one of the most versatile and flexible but while this is an advantage, its also the reason why modern interior designs can differ greatly from one home to another. Still, there a few major lines every decor has to follow, minimalism being one of them.
</div>

</div></div></div>
<%@ include file="/WEB-INF/views/headerfooter/footer.jsp" %>
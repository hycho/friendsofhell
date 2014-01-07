<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
<title>Friends Job(Global)</title>
<link rel="stylesheet" href="<c:url value='/static/css/main.css'/>" type="text/css" />
<link rel="stylesheet" href="<c:url value='/static/css/mediaqueries.css'/>" type="text/css" />
<link rel="stylesheet" href="<c:url value='/static/css/dcmegamenu.css'/>" type="text/css" />
<link rel="stylesheet" href="<c:url value='/static/css/skins/black.css'/>" type="text/css" />

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://code.jquery.com/ui/1.10.1/jquery-ui.min.js"></script>
<script type="text/javascript" src="<c:url value='/static/js/jquery-ui.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/static/js/jquery-mobilemenu.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/static/js/custom.js'/>"></script>
<script type="text/javascript" src="<c:url value='/static/js/jquery.hoverIntent.minified.js'/>"></script>
<script type="text/javascript" src="<c:url value='/static/js/jquery.dcmegamenu.1.3.3.js'/>"></script>

<script type="text/javascript">
jQuery(document).ready(function($){
	$('img').removeAttr('width height'); 
	
	$('#mega-menu-2').dcMegaMenu({
		rowItems: '3',
		speed: 'fast',
		effect: 'fade',
		event: 'click'
	});
});
</script>
</head>
<body style="background-color:#FFFFFF"> 
<div class="row0" id="global_top">
	<header id="gheader" class="full_width clear">
	    <hgroup>
			<span class="icon-group icon-large"></span>
			<span>Friend Job(Global)</span>
	    </hgroup>
	    <div id="header-contact">
	      <ul class="list none">
	        <li><a href="#">로그인</a></li>
	        <li><a href="#">회원가입</a></li>
	        <li><a href="#">서비스안내</a></li>
	        <li><a href="#">고객센터</a></li>
	        <li><a href="#">이벤트</a></li>
	      </ul>
	    </div>
	</header>
</div>
<div class="wrapper row1">
  <header id="header" class="full_width clear">
    <hgroup>
      <h1><a href="<c:url value='/'/>">Friends Job(Global)</a></h1>
      <h2>프랜드 잡(글로벌)에 오신것을 환영합니다.</h2>
    </hgroup>
    <div id="header-contact">
      <ul class="list none">
        <li><span class="icon-envelope"></span> <a href="#">kofwhgh@gmail.com</a></li>
        <li><span class="icon-phone"></span> 010-7345-6059</li>
      </ul>
    </div>
  </header>
</div>
<!-- ################################################################################################ -->
<div class="black" >
<ul id="mega-menu-2" class="mega-menu" style="margin: 0 auto; max-width: 1200px;">
	<li><a href="<c:url value='/'/>">채용홈</a></li>
	<li><a href="test.html">업종별</a>
		<ul>
			<li><a href="#">Mobile Phones &#038; Accessories</a>
				<ul>
					<li><a href="#">Product 1</a></li>
					<li><a href="#">Product 2</a></li>
					<li><a href="#">Product 3</a></li>
				</ul>
			</li>
			<li><a href="#">Desktop</a>	
			    <ul>
					<li><a href="#">Product 4</a></li>
					<li><a href="#">Product 5</a></li>
					<li><a href="#">Product 6</a></li>
					<li><a href="#">Product 7</a></li>
					<li><a href="#">Product 8</a></li>
					<li><a href="#">Product 9</a></li>
				</ul>
			</li>
			<li><a href="#">Laptop</a>
			    <ul>
					<li><a href="#">Product 10</a></li>
					<li><a href="#">Product 11</a></li>
					<li><a href="#">Product 12</a></li>
					<li><a href="#">Product 13</a></li>
				</ul>
			</li>
			<li><a href="#">Accessories</a>
			    <ul>
					<li><a href="#">Product 14</a></li>
					<li><a href="#">Product 15</a></li>
				</ul>
			</li>
			<li><a href="#">Software</a>
			  <ul>
				<li><a href="#">Product 16</a></li>
					<li><a href="#">Product 17</a></li>
					<li><a href="#">Product 18</a></li>
					<li><a href="#">Product 19</a></li>
			  </ul>
			</li>
		</ul>
	</li>
	<li><a href="#">지역별</a>
		<ul>
			<li style="width:60px;">
			<ul>
				<li><a href="#" style="width:40px;">서울</a></li>
				<li><a href="#" style="width:40px;">경기</a></li>
				<li><a href="#" style="width:40px;">인천</a></li>
				<li><a href="#" style="width:40px;">부산</a></li>
				<li><a href="#" style="width:40px;">대구</a></li>
				<li><a href="#" style="width:40px;">대전</a></li>
				<li><a href="#" style="width:40px;">광주</a></li>
				<li><a href="#" style="width:40px;">울산</a></li>
				<li><a href="#" style="width:40px;">세종</a></li>
			</ul>
			</li>
			<li style="width:60px;">
				<ul>
					<li><a href="#" style="width:40px;">강원</a></li>
					<li><a href="#" style="width:40px;">경남</a></li>
					<li><a href="#" style="width:40px;">경북</a></li>
					<li><a href="#" style="width:40px;">전남</a></li>
					<li><a href="#" style="width:40px;">전북</a></li>
					<li><a href="#" style="width:40px;">충남</a></li>
					<li><a href="#" style="width:40px;">충북</a></li>
					<li><a href="#" style="width:40px;">제주</a></li>
					<li><a href="#" style="width:40px;">전국</a></li>
				</ul>
			</li>
		</ul>
	</li>
	<li><a href="#">분류별</a>
		<ul>
			<li><a href="#">Special Offers</a>
				<ul>
					<li><a href="#">Offer 1</a></li>
					<li><a href="#">Offer 2</a></li>
					<li><a href="#">Offer 3</a></li>
				</ul>
			</li>
			<li><a href="#">Reduced Price</a>
				<ul>
					<li><a href="#">Offer 4</a></li>
					<li><a href="#">Offer 5</a></li>
					<li><a href="#">Offer 6</a></li>
					<li><a href="#">Offer 7</a></li>
				</ul>
			</li>
			<li><a href="#">Clearance Items</a>
				<ul>
					<li><a href="#">Offer 9</a></li>
			
				</ul>
			</li>
			<li class="menu-item-129"><a href="#">Ex-Stock</a>
				<ul>
					<li><a href="#">Offer 10</a></li>
					<li><a href="#">Offer 11</a></li>
					<li><a href="#">Offer 12</a></li>
					<li><a href="#">Offer 13</a></li>
				</ul>
			</li>
		</ul>
	</li>
	<li><a href="#">기업별</a>
		<ul>
			<li>
			<ul>
				<li><a href="#">Service Detail A</a></li>
				<li><a href="#">Service Detail B</a></li>
			</ul>
			</li>
			<li>
				<ul>
					<li><a href="#">Service Detail C</a></li>
				</ul>
			</li>
		</ul>
	</li>
	<li><a href="#">전체보기</a>
		<ul>
			<li><a href="#">Service 1</a>
			<ul>
				<li><a href="#">Service Detail A</a></li>
				<li><a href="#">Service Detail B</a></li>
			</ul>
		</li>
		<li><a href="#">전체보기</a>
			<ul>
				<li><a href="#">Service Detail C</a></li>
			</ul>
		</li>
			<li><a href="#">Service 3</a>
			<ul>
				<li><a href="#">Service Detail D</a></li>
				<li><a href="#">Service Detail E</a></li>
				<li><a href="#">Service Detail F</a></li>
			</ul>
		</li>
			<li><a href="#">Service 4</a></li>
		</ul>
	</li>
</ul>
</div>

<!-- content -->
<div class="wrapper row3">
  <div id="container">
    <!-- ################################################################################################ -->
    <div id="homepage" class="clear">
      <section class="center clear">
        <div class="push30"><img src="/friendsjob/static/images/demo/1200x400.gif" alt=""></div>
        <h1 class="emphasise nospace">Vestibulum adipiscing erat sit amet justo</h1>
        <p class="font-medium">Integer imperdiet vestibulum leo ut tincidunt. In sagittis diam ut leo convallis vel rutrum mauris ullamcorper vestibulum adipiscing erat sit amet.</p>
        <p><a href="#" class="button medium gradient orange rnd5">Integer imperdiet vestibulum &raquo;</a></p>
      </section>
      <div class="divider2"></div>
      <!-- ################################################################################################ -->
      <section class="clear">
        <article class="one_third first">
          <h2>Headline Text</h2>
          <p>Integer imperdiet vestibulum leo ut tincidunt. In sagittis diam ut leo convallis vel rutrum mauris ullamcorper. Vestibulum adipiscing erat sit amet justo luctus molestie.</p>
          <footer class="read-more"><a href="#">Read More &raquo;</a></footer>
        </article>
        <article class="one_third">
          <h2>Headline Text</h2>
          <p>Integer imperdiet vestibulum leo ut tincidunt. In sagittis diam ut leo convallis vel rutrum mauris ullamcorper. Vestibulum adipiscing erat sit amet justo luctus molestie.</p>
          <footer class="read-more"><a href="#">Read More &raquo;</a></footer>
        </article>
        <article class="one_third">
          <h2>Headline Text</h2>
          <p>Integer imperdiet vestibulum leo ut tincidunt. In sagittis diam ut leo convallis vel rutrum mauris ullamcorper. Vestibulum adipiscing erat sit amet justo luctus molestie.</p>
          <footer class="read-more"><a href="#">Read More &raquo;</a></footer>
        </article>
      </section>
      <div class="divider2"></div>
      
      <section class="last">
        <h2>등록 기업</h2>
        <ul class="nospace clear">
          <li class="one_sixth first">
            <figure class="team-member"><img src="/friendsjob/static/images/demo/team-member.gif" alt="">
              <figcaption>
                <p class="team-name">Name Goes Here</p>
                <p class="team-title">Job Title Here</p>
              </figcaption>
            </figure>
          </li>
          <li class="one_sixth">
            <figure class="team-member"><img src="/friendsjob/static/images/demo/team-member.gif" alt="">
              <figcaption>
                <p class="team-name">Name Goes Here</p>
                <p class="team-title">Job Title Here</p>
              </figcaption>
            </figure>
          </li>
          <li class="one_sixth">
            <figure class="team-member"><img src="/friendsjob/static/images/demo/team-member.gif" alt="">
              <figcaption>
                <p class="team-name">Name Goes Here</p>
                <p class="team-title">Job Title Here</p>
              </figcaption>
            </figure>
          </li>
          <li class="one_sixth">
            <figure class="team-member"><img src="/friendsjob/static/images/demo/team-member.gif" alt="">
              <figcaption>
                <p class="team-name">Name Goes Here</p>
                <p class="team-title">Job Title Here</p>
              </figcaption>
            </figure>
          </li>
          <li class="one_sixth">
            <figure class="team-member"><img src="/friendsjob/static/images/demo/team-member.gif" alt="">
              <figcaption>
                <p class="team-name">Name Goes Here</p>
                <p class="team-title">Job Title Here</p>
              </figcaption>
            </figure>
          </li>
          <li class="one_sixth">
            <figure class="team-member"><img src="/friendsjob/static/images/demo/team-member.gif" alt="">
              <figcaption>
                <p class="team-name">Name Goes Here</p>
                <p class="team-title">Job Title Here</p>
              </figcaption>
            </figure>
          </li>
        </ul>
        <ul class="nospace clear">
          <li class="one_sixth first">
            <figure class="team-member"><img src="/friendsjob/static/images/demo/team-member.gif" alt="">
              <figcaption>
                <p class="team-name">Name Goes Here</p>
                <p class="team-title">Job Title Here</p>
              </figcaption>
            </figure>
          </li>
          <li class="one_sixth">
            <figure class="team-member"><img src="/friendsjob/static/images/demo/team-member.gif" alt="">
              <figcaption>
                <p class="team-name">Name Goes Here</p>
                <p class="team-title">Job Title Here</p>
              </figcaption>
            </figure>
          </li>
          <li class="one_sixth">
            <figure class="team-member"><img src="/friendsjob/static/images/demo/team-member.gif" alt="">
              <figcaption>
                <p class="team-name">Name Goes Here</p>
                <p class="team-title">Job Title Here</p>
              </figcaption>
            </figure>
          </li>
          <li class="one_sixth">
            <figure class="team-member"><img src="/friendsjob/static/images/demo/team-member.gif" alt="">
              <figcaption>
                <p class="team-name">Name Goes Here</p>
                <p class="team-title">Job Title Here</p>
              </figcaption>
            </figure>
          </li>
          <li class="one_sixth">
            <figure class="team-member"><img src="/friendsjob/static/images/demo/team-member.gif" alt="">
              <figcaption>
                <p class="team-name">Name Goes Here</p>
                <p class="team-title">Job Title Here</p>
              </figcaption>
            </figure>
          </li>
          <li class="one_sixth">
            <figure class="team-member"><img src="/friendsjob/static/images/demo/team-member.gif" alt="">
              <figcaption>
                <p class="team-name">Name Goes Here</p>
                <p class="team-title">Job Title Here</p>
              </figcaption>
            </figure>
          </li>
        </ul>
        <ul class="nospace clear">
          <li class="one_sixth first">
            <figure class="team-member"><img src="/friendsjob/static/images/demo/team-member.gif" alt="">
              <figcaption>
                <p class="team-name">Name Goes Here</p>
                <p class="team-title">Job Title Here</p>
              </figcaption>
            </figure>
          </li>
          <li class="one_sixth">
            <figure class="team-member"><img src="/friendsjob/static/images/demo/team-member.gif" alt="">
              <figcaption>
                <p class="team-name">Name Goes Here</p>
                <p class="team-title">Job Title Here</p>
              </figcaption>
            </figure>
          </li>
          <li class="one_sixth">
            <figure class="team-member"><img src="/friendsjob/static/images/demo/team-member.gif" alt="">
              <figcaption>
                <p class="team-name">Name Goes Here</p>
                <p class="team-title">Job Title Here</p>
              </figcaption>
            </figure>
          </li>
          <li class="one_sixth">
            <figure class="team-member"><img src="/friendsjob/static/images/demo/team-member.gif" alt="">
              <figcaption>
                <p class="team-name">Name Goes Here</p>
                <p class="team-title">Job Title Here</p>
              </figcaption>
            </figure>
          </li>
          <li class="one_sixth">
            <figure class="team-member"><img src="/friendsjob/static/images/demo/team-member.gif" alt="">
              <figcaption>
                <p class="team-name">Name Goes Here</p>
                <p class="team-title">Job Title Here</p>
              </figcaption>
            </figure>
          </li>
          <li class="one_sixth">
            <figure class="team-member"><img src="/friendsjob/static/images/demo/team-member.gif" alt="">
              <figcaption>
                <p class="team-name">Name Goes Here</p>
                <p class="team-title">Job Title Here</p>
              </figcaption>
            </figure>
          </li>
        </ul>
      </section>
      
    </div>
    <!-- ################################################################################################ -->
    <div class="clear"></div>
  </div>
</div>
<!-- Footer -->
<div class="wrapper row2">
  <div id="footer" class="clear">
    <div class="one_quarter first">
      <h2 class="footer_title">Footer Navigation</h2>
      <nav class="footer_nav">
        <ul class="nospace">
          <li><a href="#">Home Page</a></li>
          <li><a href="#">Our Services</a></li>
          <li><a href="#">Meet the Team</a></li>
          <li><a href="#">Blog</a></li>
          <li><a href="#">Contact Us</a></li>
          <li><a href="#">Gallery</a></li>
          <li><a href="#">Portfolio</a></li>
          <li><a href="#">Online Shop</a></li>
        </ul>
      </nav>
    </div>
    <div class="one_quarter">
      <h2 class="footer_title">Latest Gallery</h2>
      <ul id="ft_gallery" class="nospace spacing clear">
        <li class="one_third first"><a href="#"><img src="/friendsjob/static/images/demo/80x80.gif" alt=""></a></li>
        <li class="one_third"><a href="#"><img src="/friendsjob/static/images/demo/80x80.gif" alt=""></a></li>
        <li class="one_third"><a href="#"><img src="/friendsjob/static/images/demo/80x80.gif" alt=""></a></li>
        <li class="one_third first"><a href="#"><img src="/friendsjob/static/images/demo/80x80.gif" alt=""></a></li>
        <li class="one_third"><a href="#"><img src="/friendsjob/static/images/demo/80x80.gif" alt=""></a></li>
        <li class="one_third"><a href="#"><img src="/friendsjob/static/images/demo/80x80.gif" alt=""></a></li>
        <li class="one_third first"><a href="#"><img src="/friendsjob/static/images/demo/80x80.gif" alt=""></a></li>
        <li class="one_third"><a href="#"><img src="/friendsjob/static/images/demo/80x80.gif" alt=""></a></li>
        <li class="one_third"><a href="#"><img src="/friendsjob/static/images/demo/80x80.gif" alt=""></a></li>
      </ul>
    </div>
    <div class="one_quarter">
      <h2 class="footer_title">From Twitter</h2>
      <div class="tweet-container">
        <ul class="list none">
          <li><strong>@<a href="#">name</a></strong> <span class="tweet_text">RT <span class="at">@</span><a href="#">name</a> Donec suscipit vehicula turpis sed lutpat Quisque vitae quam neque.</span> <span class="tweet_time"><a href="#">about 9 hours ago</a></span></li>
          <li><strong>@<a href="#">name</a></strong> <span class="tweet_text">RT <span class="at">@</span><a href="#">name</a> Donec suscipit vehicula turpis sed lutpat Quisque vitae quam neque.</span> <span class="tweet_time"><a href="#">about 9 hours ago</a></span></li>
          <li><strong>@<a href="#">name</a></strong> <span class="tweet_text">RT <span class="at">@</span><a href="#">name</a> Donec suscipit vehicula turpis sed lutpat Quisque vitae quam neque.</span> <span class="tweet_time"><a href="#">about 9 hours ago</a></span></li>
          <li><strong>@<a href="#">name</a></strong> <span class="tweet_text">RT <span class="at">@</span><a href="#">name</a> Donec suscipit vehicula turpis sed lutpat Quisque vitae quam neque.</span> <span class="tweet_time"><a href="#">about 9 hours ago</a></span></li>
        </ul>
      </div>
    </div>
    <div class="one_quarter">
      <h2 class="footer_title">Contact Us</h2>
      <form class="rnd5" action="#" method="post">
        <div class="form-input clear">
          <label for="ft_author">Name <span class="required">*</span><br>
            <input type="text" name="ft_author" id="ft_author" value="" size="22">
          </label>
          <label for="ft_email">Email <span class="required">*</span><br>
            <input type="text" name="ft_email" id="ft_email" value="" size="22">
          </label>
        </div>
        <div class="form-message">
          <textarea name="ft_message" id="ft_message" cols="25" rows="10"></textarea>
        </div>
        <p>
          <input type="submit" value="Submit" class="button small orange">
          &nbsp;
          <input type="reset" value="Reset" class="button small grey">
        </p>
      </form>
    </div>
  </div>
</div>
<div class="wrapper row4">
  <div id="copyright" class="clear">
    <p class="fl_left">Copyright &copy; 2013 - All Rights Reserved - <a href="#">Domain Name</a></p>
    <p class="fl_right">Template by <a href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>
  </div>
</div>
</body>
</html>

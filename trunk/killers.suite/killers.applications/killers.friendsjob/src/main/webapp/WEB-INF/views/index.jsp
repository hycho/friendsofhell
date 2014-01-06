<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
<title></title>

<link rel="stylesheet" href="<c:url value='/static/css/main.css'/>" type="text/css" />
<link rel="stylesheet" href="<c:url value='/static/css/mediaqueries.css'/>" type="text/css" />
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://code.jquery.com/ui/1.10.1/jquery-ui.min.js"></script>
<script type="text/javascript" src="<c:url value='/static/js/jquery-ui.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/static/js/jquery-mobilemenu.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/static/js/custom.js'/>"></script>
<script type="text/javascript">
jQuery(document).ready(function($){ $('img').removeAttr('width height'); });
</script>
</head>
<body>
<div class="wrapper row1">
  <header id="header" class="full_width clear">
    <hgroup>
      <h1><a href="index.html">RS-1200 Prototype 34</a></h1>
      <h2>Free Responsive Template</h2>
    </hgroup>
    <div id="header-contact">
      <ul class="list none">
        <li><span class="icon-envelope"></span> <a href="#">info@domain.com</a></li>
        <li><span class="icon-phone"></span> +xx xxx xxxxxxxxxx</li>
      </ul>
    </div>
  </header>
</div>
<!-- ################################################################################################ -->
<div class="wrapper row2">
  <nav id="topnav">
    <ul class="clear">
      <li class="active"><a href="index.html" title="Homepage">Homepage</a></li>
      <li><a class="drop" href="#" title="Pages">Pages</a>
        <ul>
          <li><a href="pages/full-width-content.html" title="Full Width Content">Full Width Content</a></li>
          <li><a href="pages/content-leftsidebar.html" title="Content + Left Sidebar">Content + Left Sidebar</a></li>
          <li><a href="pages/content-rightsidebar.html" title="Content + Right Sidebar">Content + Right Sidebar</a></li>
          <li><a href="pages/content-bothsidebars.html" title="Content + Both Sidebars">Content + Both Sidebars</a></li>
          <li><a href="pages/contact.html" title="Contact">Contact</a></li>
          <li><a href="pages/404.html" title="404">404</a></li>
          <li><a href="pages/testimonials.html" title="Testimonials">Testimonials</a></li>
          <li><a href="pages/about-us.html" title="About Us">About Us</a></li>
          <li><a href="pages/team-member.html" title="Team Member">Team Member</a></li>
          <li class="last-child"><a href="pages/faq.html" title="FAQ">FAQ</a></li>
        </ul>
      </li>
      <li><a class="drop" href="#" title="Elements">Elements</a>
        <ul>
          <li><a href="elements/buttons.html" title="Buttons">Buttons</a></li>
          <li><a href="elements/alert-messages.html" title="Alert Messages">Alert Messages</a></li>
          <li><a href="elements/font-icons.html" title="Font Icons">Font Icons</a></li>
          <li><a href="elements/call-to-action.html" title="Call To Action">Call To Action</a></li>
          <li><a href="elements/columns.html" title="Columns">Columns</a></li>
          <li><a href="elements/columns-no-gutter.html" title="Columns - No Gutter">Columns - No Gutter</a></li>
          <li><a href="elements/lists.html" title="Lists">Lists</a></li>
          <li><a href="elements/accordions.html" title="Accordions">Accordions</a></li>
          <li><a href="elements/tabs.html" title="Tabs">Tabs</a></li>
          <li><a href="elements/toggles.html" title="Toggles">Toggles</a></li>
          <li class="last-child"><a href="elements/pricing-tables.html" title="Pricing Tables">Pricing Tables</a></li>
        </ul>
      </li>
      <li><a class="drop" href="#" title="Portfolio Layouts">Portfolio Layouts</a>
        <ul>
          <li><a href="portfolio-layouts/portfolio-overview-full-width-content.html" title="Full Width Portfolio">Full Width Portfolio</a></li>
          <li><a href="portfolio-layouts/portfolio-overview-2columns.html" title="2 Column Grid">2 Column Grid</a></li>
          <li><a href="portfolio-layouts/portfolio-overview-2columns-leftsidebar.html" title="2 Column Grid + Left Sidebar">2 Col. Grid + Left Sidebar</a></li>
          <li><a href="portfolio-layouts/portfolio-overview-2columns-rightsidebar.html" title="2 Column Grid + Right Sidebar">2 Col. Grid + Right Sidebar</a></li>
          <li><a href="portfolio-layouts/portfolio-overview-2columns-bothsidebars.html" title="2 Column Grid + Both Sidebars">2 Col. Grid + Both Sidebars</a></li>
          <li><a href="portfolio-layouts/portfolio-overview-3columns.html" title="3 Column Grid">3 Column Grid</a></li>
          <li><a href="portfolio-layouts/portfolio-overview-3columns-leftsidebar.html" title="3 Column Grid + Left Sidebar">3 Col. Grid + Left Sidebar</a></li>
          <li><a href="portfolio-layouts/portfolio-overview-3columns-rightsidebar.html" title="3 Column Grid + Right Sidebar">3 Col. Grid + Right Sidebar</a></li>
          <li><a href="portfolio-layouts/portfolio-overview-3columns-bothsidebars.html" title="3 Column Grid + Both Sidebars">3 Col. Grid + Both Sidebars</a></li>
          <li class="last-child"><a href="portfolio-layouts/portfolio-overview-4columns.html" title="4 Column Grid">4 Column Grid</a></li>
        </ul>
      </li>
      <li><a class="drop" href="#" title="Gallery Layouts">Gallery Layouts</a>
        <ul>
          <li><a href="gallery-layouts/gallery-full-width-content.html" title="Full Width Gallery">Full Width Gallery</a></li>
          <li><a href="gallery-layouts/gallery-2columns.html" title="2 Column Grid">2 Column Grid</a></li>
          <li><a href="gallery-layouts/gallery-2columns-leftsidebar.html" title="2 Column Grid + Left Sidebar">2 Col. Grid + Left Sidebar</a></li>
          <li><a href="gallery-layouts/gallery-2columns-rightsidebar.html" title="2 Column Grid + Right Sidebar">2 Col. Grid + Right Sidebar</a></li>
          <li><a href="gallery-layouts/gallery-2columns-bothsidebars.html" title="2 Column Grid + Both Sidebars">2 Col. Grid + Both Sidebars</a></li>
          <li><a href="gallery-layouts/gallery-3columns.html" title="3 Column Grid">3 Column Grid</a></li>
          <li><a href="gallery-layouts/gallery-3columns-leftsidebar.html" title="3 Column Grid + Left Sidebar">3 Col. Grid + Left Sidebar</a></li>
          <li><a href="gallery-layouts/gallery-3columns-rightsidebar.html" title="3 Column Grid + Right Sidebar">3 Col. Grid + Right Sidebar</a></li>
          <li><a href="gallery-layouts/gallery-3columns-bothsidebars.html" title="3 Column Grid + Both Sidebars">3 Col. Grid + Both Sidebars</a></li>
          <li><a href="gallery-layouts/gallery-4columns.html" title="4 Column Grid">4 Column Grid</a></li>
          <li class="last-child"><a href="gallery-layouts/gallery-5columns.html" title="5 Column Grid">5 Column Grid</a></li>
        </ul>
      </li>
      <li><a href="#" title="Link Text">Link Text</a></li>
      <li class="last-child"><a href="#" title="A Very Long Link Text">A Very Long Link Text</a></li>
    </ul>
  </nav>
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
        <h2>Team Members</h2>
        <ul class="nospace clear">
          <li class="one_fifth first">
            <figure class="team-member"><img src="/friendsjob/static/images/demo/team-member.gif" alt="">
              <figcaption>
                <p class="team-name">Name Goes Here</p>
                <p class="team-title">Job Title Here</p>
                <p class="team-description">Vestassapede et donec ut est liberos sus et eget sed eget quisqueta&hellip;</p>
                <p class="read-more"><a href="#">Read More &raquo;</a></p>
              </figcaption>
            </figure>
          </li>
          <li class="one_fifth">
            <figure class="team-member"><img src="/friendsjob/static/images/demo/team-member.gif" alt="">
              <figcaption>
                <p class="team-name">Name Goes Here</p>
                <p class="team-title">Job Title Here</p>
                <p class="team-description">Vestassapede et donec ut est liberos sus et eget sed eget quisqueta&hellip;</p>
                <p class="read-more"><a href="#">Read More &raquo;</a></p>
              </figcaption>
            </figure>
          </li>
          <li class="one_fifth">
            <figure class="team-member"><img src="/friendsjob/static/images/demo/team-member.gif" alt="">
              <figcaption>
                <p class="team-name">Name Goes Here</p>
                <p class="team-title">Job Title Here</p>
                <p class="team-description">Vestassapede et donec ut est liberos sus et eget sed eget quisqueta&hellip;</p>
                <p class="read-more"><a href="#">Read More &raquo;</a></p>
              </figcaption>
            </figure>
          </li>
          <li class="one_fifth">
            <figure class="team-member"><img src="/friendsjob/static/images/demo/team-member.gif" alt="">
              <figcaption>
                <p class="team-name">Name Goes Here</p>
                <p class="team-title">Job Title Here</p>
                <p class="team-description">Vestassapede et donec ut est liberos sus et eget sed eget quisqueta&hellip;</p>
                <p class="read-more"><a href="#">Read More &raquo;</a></p>
              </figcaption>
            </figure>
          </li>
          <li class="one_fifth">
            <figure class="team-member"><img src="/friendsjob/static/images/demo/team-member.gif" alt="">
              <figcaption>
                <p class="team-name">Name Goes Here</p>
                <p class="team-title">Job Title Here</p>
                <p class="team-description">Vestassapede et donec ut est liberos sus et eget sed eget quisqueta&hellip;</p>
                <p class="read-more"><a href="#">Read More &raquo;</a></p>
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

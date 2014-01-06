<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<html>
<head>
<link rel="shortcut icon" href="<c:url value='/static/suite/images/favicon.ico'/>" /> 
<link rel="stylesheet" href="<c:url value='/static/suite/css/style.css'/>" type="text/css" />

<script type="text/javascript" src="<c:url value='/static/suite/js/jquery.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/static/suite/apps/jquery-ui-1.10.3.custom/js/jquery-ui-1.10.3.custom.js'/>"></script>
<script type="text/javascript" src="<c:url value='/static/suite/js/jquery.easing.1.3.js'/>"></script>
<script type="text/javascript" src="<c:url value='/static/suite/js/all-in-one-min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/static/suite/js/setup.js'/>"></script>
<script type="text/javascript" src="<c:url value='/static/suite/js/main.js'/>"></script>
<script type="text/javascript" src="<c:url value='/static/suite/js/knockout-3.0.0.js'/>"></script>
<script type="text/javascript">
$(function() {

});
</script>
<title><sitemesh:write property='title' /></title>
<sitemesh:write property='head'/>
<style type="text/css">
.demobar{display:none;}
#demo-side-bar{top:53px!important;left:90%!important;display:block!important;}
</style>
</head>
<body>
<header class="header_bg clearfix">
	<div class="container clearfix">
	 	<ul class="social-links">
	  	<li ><a href="javascript:"><img src="<c:url value='/static/suite/images/facebook.png' />" alt="Facebook"></a></li>
	    <li ><a href="javascript:"><img src="<c:url value='/static/suite/images/twitter.png' />" width="24" height="24" alt="Twitter"></a></li>
	  </ul>
	  <div style="float:right;padding-top:18px;">
	  	<security:authorize ifNotGranted="ROLE_ADMIN,ROLE_USER">  
				<a href="<c:url value='/authentication/loginView' />" class="button white">Login</a>
			</security:authorize>
	  	<security:authorize ifAnyGranted="ROLE_ADMIN,ROLE_USER">
	  			<span style="fi">Hi <security:authentication property="name"/></span>
	  			
	  		<a href="<c:url value='/j_spring_security_logout' />" class="button white">Logout</a>
	  	</security:authorize>
	  </div>
		<!-- Logo -->
		<div class="logo">
			<a href="/"><img src="<c:url value='/static/suite/images/logo.png' />" alt="" /></a>
		</div>
		<!-- /Logo -->
		<!-- Master Nav -->
		<nav class="main-menu">
			<ul>
				<li><a href="/">Home</a></li>
<!-- 				
				<li>
					<a>Pages</a>
					<ul>
						<li><a href="elements.html">Elements</a></li>
						<li><a href="typography.html">Typography</a></li>
						<li><a href="blog_single.html">Blog Single Post</a></li>
						<li><a href="javascript:">Pricing</a>
							<ul>
								<li><a href="pricing_2_cols.html">Pricing 2 Cols</a></li>
	                <li><a href="pricing_3_cols.html">Pricing 3 Cols</a></li>
	                <li><a href="pricing_4_cols.html">Pricing 4 Cols</a></li>
	                <li><a href="pricing_5_cols.html">Pricing 5 Cols</a></li>
							</ul>
						</li>
	            <li><a href="full_width.html">Full Width</a></li>
						<li><a href="404.html">404 Page</a></li>
					</ul>
				</li>
				<li><a>Portfolio</a>
					<ul>
						<li><a href="portfolio_2_cols.html">Portfolio 2 Cols</a></li>
						<li><a href="portfolio_3_cols.html">Portfolio 3 Cols</a></li>
						<li><a href="portfolio_4_cols.html">Portfolio 4 Cols</a></li>
						<li><a href="portfolio_details.html">Portfolio Details</a></li>
					</ul>
				</li>
				<li><a href="blog.html">Blog</a></li>
				<li><a href="contact.html">Contact</a></li>
-->				
				<li><a>Analysis</a>
					<ul>
						<li>
							<a href="">ServiceAnalysis</a>
							<ul>
								<li><a href="<c:url value='/analysis/clientAnalysisView'/>">Service</a></li>
							</ul>
						</li>
					</ul>
				</li>
				<li><a>Manage</a>
					<ul>
						<li>
							<a href="">User</a>
							<ul>
								<li><a href="<c:url value='/user/userListView'/>">UserList</a></li>
							</ul>
						</li>
						<li>
							<a href="">Service</a>
							<ul>
								<li><a href="<c:url value='/service/serviceGridView'/>">Grid View</a></li>
							</ul>
						</li>
					</ul>
				</li>
			</ul>
		</nav>
		<!-- /Master Nav -->
	</div>
</header>
<!-- /Header -->
<div class="clear"></div>
<sitemesh:write property='body' />
<!-- footer -->
<footer class="footer_bg_bottom clearfix">
	<div class="footer_bottom container">
		<div class="col_2_3">
			<div class="menu">
				<ul>
					<li><a href="index.html">Home</a></li>
           <li><a href="elements.html">Elements</a></li>
					<li><a href="portfolio_4_cols.html">Portfolio</a></li>
					<li><a href="pricing_5_cols.html">Pricing</a></li>
					<li><a href="blog.html">Blog</a></li>
					<li><a href="contact.html">Contact</a></li>
				</ul>
			</div>
			<div class="clear padding20"></div>
			<p>
				&copy; Some Rights Reserved. &nbsp; <a href="#">Legal Notices</a>  
			</p>
		</div>
		<div class="clear padding20"></div>
	</div>
</footer>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
  <title>Login Page</title>
  <link rel="stylesheet" href="<c:url value='/static/suite/css/style.css'/>" type="text/css" />
  <link rel="stylesheet" href="<c:url value='/static/suite/apps/jquery.jqGrid-4.4.3/css/ui.jqgrid.css'/>" type="text/css" />
  <link rel="stylesheet" href="<c:url value='/static/suite/apps/jquery-ui-1.10.3.custom/css/redmond/jquery-ui-1.10.3.custom.css'/>" type="text/css" />
  
  <script type="text/javascript" src="<c:url value='/static/suite/js/jquery.min.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/static/suite/js/jquery.easing.1.3.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/static/suite/js/all-in-one-min.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/static/suite/js/setup.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/static/suite/js/constants/constants.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/static/suite/js/util/validate.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/static/suite/apps/jquery-ui-1.10.3.custom/js/jquery-ui-1.10.3.custom.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/static/suite/apps/jquery.jqGrid-4.4.3/js/jquery.jqGrid.src.js'/>"></script>

	<style>
	   .ui-jqgrid-title {font-size:0.8em}
	   .ui-jqgrid-sortable {font-size:0.8em}
	</style>
	<script type="text/javascript">
	$(function(){
		$(window).resize(function() {
			resizeGrid();
		});
		
		function resizeGrid(){
			$('#serviceGrid').jqGrid('setGridWidth', $("#mainDiv").width(), true);
		}
		
		function readOnlyElement(value, options) {
		    return $('<span></span>', { text: value });
		}

		function readOnlyValue(elem, operation, value) {
		    if (operation === 'get') {
		        return $(elem).text();
		    } else if (operation === 'set') {
		        $('span', elem).text(value);
		    }
		}
		
		var lastsel;
		$("#serviceGrid").jqGrid({
			url:'/rest/packageManager/selectPackageManagerList',
			width: $("#mainDiv").width(),
			height: 500,
			datatype: "json",
		  colNames:['PackageID','ServiceID','PackageName','ServiceName'],
		  colModel:[
	   		{name:'PACKAGEID',index:'PACKAGEID', sortable:false, width:'30%', editable: true, edittype: 'custom', editoptions: { custom_element: readOnlyElement, custom_value: readOnlyValue} },
	   		{name:'SERVICEID',index:'SERVICEID', sortable:false, width:'30%', editable: true, edittype: 'custom', editoptions: { custom_element: readOnlyElement, custom_value: readOnlyValue} },
	   		{name:'PACKAGENAME',index:'PACKAGENAME', sortable:false, width:'20%', editable: true},
	   		{name:'SERVICENAME',index:'SERVICENAME', sortable:false, width:'20%', editable: true }		
		   	],
		  caption: "Manipulating Array Data",
		  jsonReader: {
				repeatitems : false
			},
			onSelectRow: function(id){
				if(id && id !== lastsel){
					$('#serviceGrid').jqGrid('restoreRow', lastsel);
					$('#serviceGrid').jqGrid('editRow', id, true);
					lastsel=id;
				}
			},
			editurl: "/rest/packageManager/updatePackageManager",
		});
	});
	</script>
</head>
<body>
<!-- START CONTENT -->
 <section class="container clearfix">
<!-- Page Title -->
<header class="container page_info clearfix">
<h1 class="regular brown bottom_line">Service Grid View </h1>
<div class="clear"></div>
</header>
<!-- /Page Title -->
<div id="mainDiv" class="padding20"></div>
	<table id="serviceGrid"></table>
	<div id="serviceGridNavi"></div>
	<div class="clear padding40"></div>
</section>
<!-- END CONTENT -->
</body>
</html>
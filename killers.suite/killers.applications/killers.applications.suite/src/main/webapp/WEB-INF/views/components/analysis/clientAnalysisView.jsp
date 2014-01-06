<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
  <title>Service Analysis Page</title>
  <link rel="stylesheet" href="<c:url value='/static/suite/css/style.css'/>" type="text/css" />
  <link rel="stylesheet" href="<c:url value='/static/suite/apps/jquery-ui-1.10.3.custom/css/redmond/jquery-ui-1.10.3.custom.css'/>" type="text/css" />
  <style>
	 	.ui-datepicker-trigger{
	 			margin-bottom: -8px;
				margin-left: 1px;
	 	}
  </style>
	<script type="text/javascript" src="<c:url value='/static/suite/js/jquery.min.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/static/suite/js/jquery.easing.1.3.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/static/suite/apps/jquery-ui-1.10.3.custom/js/jquery-ui-1.10.3.custom.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/static/suite/js/all-in-one-min.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/static/suite/js/setup.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/static/suite/js/constants/constants.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/static/suite/js/util/analysisUtil.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/static/suite/js/util/validate.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/static/suite/apps/highchart/highcharts.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/static/suite/apps/highchart/modules/exporting.js'/>"></script>
	<script type="text/javascript">
	$(function () {
		var checkFirstViewFlag = true;
		
		function ServiceGridModel() {
			var self = this;
			//data
			self.packageListData = ko.observable();
			self.serviceToPackageListData = ko.observable();
			
			//operation
			self.selPackageList = function(){
				$.ajax("/rest/packageManager/selectPackageList", {
	     		type: "post",
	        dataType: "json",
	        success: function(data){
	        	self.packageListData(data);
	        	self.selServiceToPacakgeList()
	        		} 
		        });
			};
			
			self.selServiceToPacakgeList = function(data, event){
				$.ajax("/rest/packageManager/selectServiceToPackageList", {
					data: {PACKAGEID: $("#selPackage").val()},
	     		type: "post",
	        dataType: "json",
	        success: function(data){
        		self.serviceToPackageListData(data);
	        	if(checkFirstViewFlag){
	        		initChart();
	        		checkFirstViewFlag = false;
	        			}		
	        		} 
		    	});
			}
		}
		
		var serviceGridModel = new ServiceGridModel();
		ko.applyBindings(serviceGridModel);
		
		serviceGridModel.selPackageList();

// DATAPICKER
		$("#startDate").datepicker({
      showOn: "button",
      buttonImage: "/static/suite/images/Calendar-icon-24.png",
      buttonImageOnly: true,
      dateFormat: "yy-mm-dd"
   		 });
		$("#startDate").datepicker("setDate", new Date());
   		 
		$("#endDate").datepicker({
			showOn: "button",
			buttonImage: "/static/suite/images/Calendar-icon-24.png",
		  buttonImageOnly: true,
		  dateFormat: "yy-mm-dd"
		 });
		$("#endDate").datepicker("setDate", new Date());
		
// CHART		
		var sexChart = new Highcharts.Chart({
			chart: {
					renderTo: 'sexChartContainer',
		     	plotBackgroundColor: null,
		      plotBorderWidth: null,
		      plotShadow: false
		    },
	    title: {
	     text: 'sexChartContainer'
	       	},
	    tooltip: {
	    	pointFormat: '{point.y}건'
	       	},
	    plotOptions: {
	    	pie: {
	      	allowPointSelect: true,
	        cursor: 'pointer',
	        dataLabels: {
	        	enabled: false,
	             	},
	      	showInLegend: true
	        	}
	       	},
	    series: [{
	    	type: 'pie',
	      name: 'Browser share'
	        }]
		});
		
		var ageChart = new Highcharts.Chart({
			chart: {
				renderTo: 'ageChartContainer',
	     	plotBackgroundColor: null,
	      plotBorderWidth: null,
	      plotShadow: false
	    	},
	    title: {
	     text: 'ageChartContainer'
	       	},
	    tooltip: {
	    	pointFormat: '{point.y}건'
	       	},
	    plotOptions: {
	    	pie: {
	      	allowPointSelect: true,
	        cursor: 'pointer',
	        dataLabels: {
	        	enabled: false,
	             	},
	      	showInLegend: true
	        	}
	       	},
	    series: [{
	    	type: 'pie',
	      name: 'Browser share'
	        }]
		});
	
		var idTop5Chart = new Highcharts.Chart({
			chart: {
				renderTo: 'idTop5ChartContainer',
	     	plotBackgroundColor: null,
	      plotBorderWidth: null,
	      plotShadow: false
		    },
	    title: {
	     text: 'idTop5ChartContainer'
	       	},
	    tooltip: {
	   		pointFormat: '{point.y}건'
	       	},
	    plotOptions: {
	    	pie: {
	      	allowPointSelect: true,
	        cursor: 'pointer',
	        dataLabels: {
	        	enabled: false,
	             	},
	      	showInLegend: true
	        	}
	       	},
	    series: [{
	    	type: 'pie',
	      name: 'Browser share'
	        }]
		});
		
		var countChart = new Highcharts.Chart({
	 		chart: {
				renderTo: 'countChartContainer',
		    zoomType: 'x'
			},
	   	title: {
	   		text: 'CountChart'
	        },
	   	subtitle: {
	    	text: document.ontouchstart === undefined ?
	         'Click and drag in the plot area to zoom in' :
	         'Pinch the chart to zoom in'
			},
	  	xAxis: {
	   		type: 'datetime',
			},
	   	yAxis: {
	   		title: {
	     		text: 'Exchange rate'
	            }
	        },
	   	tooltip: {
   	  	crosshairs: true,
        shared: true,
        pointFormat: '{point.y}건'
	        },
	    legend: {
	    	enabled: false
	        },
	   	plotOptions: {
	    	area: {
		      fillColor: {
		      	linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1},
		        stops: [
		               	[0, Highcharts.getOptions().colors[0]],
		               	[1, Highcharts.Color(Highcharts.getOptions().colors[0]).setOpacity(0).get('rgba')]
		           		]
		       		},
		      lineWidth: 1,
		      marker: {
		      	enabled: false
		       		},
		      shadow: false,
		      states: {
		      	hover: {
		        	lineWidth: 1
		           		}
		       		},
		      threshold: null
	               }
	           },
	     series: [{
		     type: 'area'
	           }]
	       });
		
		function initChart(){	
			var spackage = $("#selPackage").val();
			var smethod = $("#selMethod").val();
			var startdate = new Date($("#startDate").val()+" 00:00:00").getTime();
			var enddate = new Date($("#endDate").val()+" 23:59:59").getTime();
			
			$.ajax("/rest/analysis/selectAnalysisCountForServiceList", {
				type: "post",
		    dataType: "json",
		    data:{
		    	spackage: spackage,
		    	smethod: smethod,
		    	startdate: startdate,
		    	enddate: enddate
		    	},
		    success: function(result){
			  	var countData = [];
			    $(result).each(function(idx, obj){
			    	var startdate = new Date(obj.CDATE+" 00:00:00").getTime();
			    	countData.push([startdate, obj.TOT]);
			    	
			    	});
			    countChart.series[0].setData(countData);
			     }
			});
			
			$.ajax("/rest/analysis/selectAnalysisSexForServiceList", {
		    type: "post",
	    	dataType: "json",
	    	data:{
	    		spackage: spackage,
	    		smethod: smethod,
	    		startdate: startdate,
	    		enddate: enddate
	    		},
	    	success: function(result){
		    	var sexData = [];
		    	$(result).each(function(idx, obj){
		    		sexData.push([obj.SEXTYPE, obj.TOT]);
		    		});
		    	sexChart.series[0].setData(sexData);
		     	}
			});
			
			$.ajax("/rest/analysis/selectAnalysisAgeForServiceList", {
		    type: "post",
	    	dataType: "json",
	    	data:{
	    		spackage: spackage,
	    		smethod: smethod,
	    		startdate: startdate,
	    		enddate: enddate
	    		},
	    	success: function(result){
		    	var ageData = [];
		    	$(result).each(function(idx, obj){
		    		if(obj.TOT == 0){ 
		    			return; 
		    			}
		    		ageData.push([obj.BGT+"0대", obj.TOT]);
		    		});
		    	ageChart.series[0].setData(ageData);
		     	}
			});
			
			$.ajax("/rest/analysis/selectAnalysisTop5IdForServiceList", {
		    type: "post",
	    	dataType: "json",
	    	data:{
	    		spackage: spackage,
	    		smethod: smethod,
	    		startdate: startdate,
	    		enddate: enddate
	    		},
	    	success: function(result){
		    	var Top5Data = [];
		    	$(result).each(function(idx, obj){
		    		Top5Data.push([obj.USERID, obj.TOT]);
		    		});
		    	idTop5Chart.series[0].setData(Top5Data);
		     	}
			});
		}
		
		function initEvent(){
			$("#btnAnalysis").click(function(){
				initChart();
			});
			
			$("#btn1Month").click(function(){
				var newDt = new Date();
				newDt.setMonth(newDt.getMonth() - 1);
				$("#startDate").datepicker("setDate", newDt);
				$("#endDate").datepicker("setDate", new Date());
			});
			
			$("#btn3Month").click(function(){
				var newDt = new Date();
				newDt.setMonth(newDt.getMonth() - 3);
				$("#startDate").datepicker("setDate", newDt);
				$("#endDate").datepicker("setDate", new Date());
			});
			
			$("#btn6Month").click(function(){
				var newDt = new Date();
				newDt.setMonth(newDt.getMonth() - 6);
				$("#startDate").datepicker("setDate", newDt);
				$("#endDate").datepicker("setDate", new Date());
			});
			
			$("#btn1Year").click(function(){
				var newDt = new Date();
				newDt.setMonth(newDt.getMonth() - 12);
				$("#startDate").datepicker("setDate", newDt);
				$("#endDate").datepicker("setDate", new Date());
			});
			
		};
		initEvent();
	});
	</script>
</head>
<body>
<section class="container clearfix">
	<header class="container page_info clearfix">
		<h1 class="regular brown bottom_line">Client Analysis1</h1>
		<div class="clear"></div>
	</header>
	<div>
		<p>
			<a id="btn1Month" style="margin: 0 5px 20px 0" class="button white">1개월</a>
			<a id="btn3Month" style="margin: 0 5px 20px 0" class="button white">3개월</a>
			<a id="btn6Month" style="margin: 0 5px 20px 0" class="button white">6개월</a>
			<a id="btn1Year" style="margin: 0 5px 20px 0" class="button white">1년</a>
			<input class="inputText" type="text" id="startDate" name="startDate" style="width:80px;"/>
			 ~
			<input class="inputText" type="text" id="endDate" name="endDate" style="width:80px;"/>
		</p>
		<p>
			<select id="selPackage" data-bind="foreach: packageListData, event: { change: $root.selServiceToPacakgeList }">
			  <option data-bind="text: PACKAGENAME, value: PACKAGEID"></option>
	    </select>
	    <select id="selMethod" data-bind="foreach: serviceToPackageListData">
			  <option data-bind="text: SERVICENAME, value: SERVICEID"></option>
	    </select>
			<a id="btnAnalysis" style="margin-bottom:0px" class="button white">분석</a>
		</p>
	</div>
	<div>
		<div id="countChartContainer" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
	</div>
	<div class="col_1_3">
		<div id="sexChartContainer" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
	</div>
	
	<div class="col_1_3">
		<div id="ageChartContainer" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
	</div>
	
	<div class="col_1_3 last">
		<div id="idTop5ChartContainer" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
	</div>
	<div class="clear"></div>
</section>
</body>
</html>
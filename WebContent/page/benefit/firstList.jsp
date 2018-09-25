<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	 	<div class="sjsc-title1">
	    	<h3 class="sjsc-t1l f-l"><a href="JavaScript:history.go(-1)"><span class="le"><img src="images/back.png" alt="" style="width:50px;height: 50px;padding-top: 11px;padding-left: 5px"/></span></a></h3>
	        <div style="clear:both;"></div>
	    </div>
		<img src="${jdbBenefit.picture }">
		<div style="font-size:70px;text-align:center;">${jdbBenefit.headline }</div>
		<div style="font-size:70px;text-align:center;">${jdbBenefit.particulars }</div>
	</body>
</html>
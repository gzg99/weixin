<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, width=device-width">
		<title>装修</title>
		<link href="css/jj20180626.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" type="text/css" href="css/shoujisc.css">
		<style type="text/css">
			.zx_list_bt{width:7.1rem; padding:0 0.2rem; font-size: 0.36rem; font-weight: bold;width:7.5rem; text-align: center; margin-top: 0.5rem;}
			.zx_list_nr{width:7.1rem; padding:0.2rem;font-size: 0.28rem; line-height: 0.5rem;}
		</style>
	</head>

	<body style="padding-bottom:1.2rem;">
	<div class="zx_list_bt">${decoration.companyName }</div>
	<div class="zx_list_nr">
		${decoration.companyDetail }<br/>
		${decoration.addTime }
	</div>

	<jsp:include page="footer5.jsp"></jsp:include>
	<script type="text/javascript" src="js/base.js"></script>
	<script type="text/javascript" src="js/jquery.js"></script>
	
	</body>
</html>

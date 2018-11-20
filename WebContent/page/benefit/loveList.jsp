<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>公益活动</title>
	</head>
	<body>
		<div class="sjsc-title1">
			<h3 class="sjsc-t1l f-l"><a href="JavaScript:history.go(-1)"><span class="le"><img src="images/back.png" alt="" style="width:50px;height: 50px;padding-top: 11px;padding-left: 5px"/></span></a></h3>
		    <div style="clear:both;"></div>
		</div>
		<img alt="" src="${mapList.jdbLove.picture }">
		<div style="font-size:70px;text-align:center;">${mapList.jdbLove.organizationId }</div>
		<div style="font-size:70px;text-align:center;">${mapList.jdbLove.organizationName }</div>
		<div style="font-size:70px;text-align:center;">${mapList.jdbLove.pictureNote }</div>
		<div style="font-size:70px;text-align:center;">${mapList.jdbLove.createTime }</div>
		<%-- 公益活动更多图片 --%>
		${mapList.pictureHelpList}

	</body>
</html>
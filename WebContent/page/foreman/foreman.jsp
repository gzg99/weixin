<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>工长</title>
    <link rel="stylesheet" type="text/css" href="../css/shoujisc.css">
    <script type="text/javascript" src="../js/jquery.js"></script>

    <script type="text/javascript">
        function foremanPraise() {
            var url = "../foreman/foremanPraise.html";
            var id = $("#id").val();
            $.ajax({
                url : encodeURI(url),
                type : 'POST',
                data : 'id='+id,
                success : function(rs) {
                    if (rs == 1) {
                        window.location.href = '../foreman/selForeman.html?id='+id;
                    }
                }
            });
        }
    </script>
</head>

<body>
<div class="body">
    <div class="sjsc-title2">
        <a href="../index.html" class="sjsc-t2r"><img src="../images/back.png" alt="" style="width:20px;height: 20px;padding-top: 11px;padding-left: 5px"/></a>
    </div>
        <input type="hidden" id="id" name="id" value="${jdbForeman.id}"/>
        姓名：<input name="name" value="${jdbForeman.name}"><br/>
        电话：<input name="phone" value="${jdbForeman.phone}"><br/>
        赞：<input name="praise" value="${jdbForeman.praise}"><br/>

        <input type="button" name="name" value="赞" onclick="foremanPraise();"/>
        <%--<a href="../foreman/foremanPraise.html?id=${jdbForeman.id}"><h1>赞</h1></a>--%>
    </div>
</div>
<jsp:include page="../footer6.jsp"></jsp:include>

</body>
</html>
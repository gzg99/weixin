<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>工长注册</title>
    <link rel="stylesheet" type="text/css" href="../css/shoujisc.css">
    <script type="text/javascript" src="../js/jquery.js"></script>
    <script type="text/javascript">
        function foremanAdd(){
            var formData = new FormData($("#foremanForm")[0]);
            var url = '../foreman/foremanSignUp.html';
            $.ajax({
                url : encodeURI(url),
                type : 'POST',
                data : formData,
                async : true,
                cache : false,
                contentType : false,
                processData : false,
                success : function(rs) {
                    if (rs == 1) {
                        alert("操作成功！");
                        window.location.href = '../foreman/toForemanPage.html'
                    } else {
                        alert("操作失败！");
                    }
                },
                error : function(req, textStatus, errThrow) {
                    var sessionstatus = req.getResponseHeader("sessionstatus");
                    if (sessionstatus) {
                        return;
                    }// 防止超时闪现弹窗
                }
            });
        }
    </script>
</head>

<body>
<div class="sjsc-title2">
    <a href="../index.html" class="sjsc-t2r"><img src="../images/back.png" alt="" style="width:20px;height: 20px;padding-top: 11px;padding-left: 5px"/></a>
</div>
<form action="" method="post" id="foremanForm" enctype="multipart/form-data">
    <div class="pd-20" style="width: 80%">
        姓名：<input id="name" name="name" value="张三"><br/>
        电话：<input id="phone" name="phone">
    </div>
    <div class="col-10 col-offset-2">
        <button onClick="foremanAdd()"
                type="button">
            <i class="Hui-iconfont">&#xe632;</i> 提交
        </button>
        <button onClick="history.go(-1);"
                type="button">&nbsp;&nbsp;返回&nbsp;&nbsp;
        </button>
    </div>
</form>
<jsp:include page="../footer6.jsp"></jsp:include>

</body>
</html>
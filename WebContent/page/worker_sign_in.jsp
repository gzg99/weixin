<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>工匠注册</title>
    <link rel="stylesheet" type="text/css" href="css/shoujisc.css">
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript">
        function workerSignIn() {
            var telPhone = $('#telPhoneId').val();
            var password = $('#passwordId').val();

            $.ajax({
                url: 'workerSignIn.html',
                type: 'post',
                data: 'telPhone=' + telPhone + '&password=' + password,
                success: function (rs) {
                    if (rs) {
                        window.location.href = "getWorkerInfoById.html?id="+rs;
                    } else {
                        alert("登录失败！");
                    }
                }
            });
        }
    </script>
</head>

<body>
<div class="sjsc-title2">
    <a href="javascript:history.back();" class="sjsc-t2r"><img src="images/back.png" alt=""
                                               style="width:20px;height: 20px;padding-top: 11px;padding-left: 5px"/></a>
</div>
<form action="" method="post" enctype="multipart/form-data">
    <div class="pd-20" style="width: 80%">
        手机号：<input id="telPhoneId" name="telPhone"><br/>
        密码：<input id="passwordId" name="password"><br/>
    </div>
    <div class="col-10 col-offset-2">
        <button onClick="workerSignIn()" type="button">
            <i class="Hui-iconfont">&#xe632;</i>登录
        </button>
        <button onClick="history.go(-1);"
                type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;
        </button>
    </div>
</form>

</body>
</html>
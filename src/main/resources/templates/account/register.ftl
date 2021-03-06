<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width,
                                     initial-scale=1.0,
                                     maximum-scale=1.0,
                                     user-scalable=no">
    <title>ClassManage</title>
    <link href="/css/account/register.css" rel="stylesheet" type="text/css"/>
</head>

<body>
<div class="titleBackground"></div>
<div class="title">课程管理系统</div>
<div class="icon">
    <img src="/image/home.png">首页
    <img src="/image/help.png">帮助
    <img src="/image/exit.png">退出
</div>
<div class="phoneNum">手机号:<input type="text" name="phoneNum"/></div>
<div class="password">密码:<input type="text" name="password"/></div>
<div class="name">姓名:<input type="text" name="name"/></div>
<div class="province">省:<select class="provinceSelect"></select></div>
<div class="city">市:<select class="citySelect"></select></div>
<div class="school">学校:<select class="schoolSelect"></select>
    <div class="createSchool">创建学校</div>
</div>
<div class="gender">性别:</div>
<div class="male">男<input type="radio" value="男" name="gender" checked="checked"/></div>
<div class="female">女<input type="radio" value="女" name="gender"/></div>
<div class="role">角色:</div>
<div class="student">学生<input type="radio" value="学生" name="role" checked="checked"/></div>
<div class="teacher">教师<input type="radio" value="教师" name="role"/></div>
<div class="stuffNum">教工号:<input type="text" name="stuffNum"/></div>
<div class="eMail">邮箱:<input type="text" name="eMail"/></div>
<div class="submit" id="submitButton">提交</div>
<script src="/js/jquery-1.7.2.min.js"></script>
<script src="/js/jquery.easing.min.js"></script>
<script>
    $("#submitButton").click(function () {
                if ($("input[type=radio]:checked")[1].value == "学生") {
                    window.location.href = "/student";
                } else {
                    window.location.href = "/teacher";
                }
            }
    )

</script>
</body>
</html>
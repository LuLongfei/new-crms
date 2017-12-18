<#import "*/teacherFrame.ftl" as frame/>
<@frame.page title="学生成绩">
<link rel="stylesheet" href="/css/content.css">
<div class="content">
    <div class="contentBlock">
        <div class="title">基本信息</div>
        <div class="line"></div>
        <div class="itemBody">
            <div class="imgarea"><img src="/image/user.png"/></div>
            <div class="info" id="showInfo">
                <div class="item">
                    <label class="itemName">用户名: </label>
                    <label class="itemName" id="username">ssss</label>
                    <label class="itemName" style="margin-left: 20%;">教工号: </label>
                    <label class="itemName" id="number">12344567</label>
                </div>
                <div class="item">
                    <label class="itemName">姓名: </label>
                    <label class="itemName" id="name">ss</label>
                    <label class="itemName" style="margin-left: 20%;">性别: </label>
                    <label class="itemName" id="gender">男</label>
                </div>
                <div class="item">
                    <label class="itemName">学校: </label>
                    <label class="itemName" id="school">厦门大学</label>
                    <label class="itemName" style="margin-left: 20%;">学历: </label>
                    <label class="itemName" id="title">本科</label>
                </div>
                <div class="item">
                    <label class="itemName">E-mail: </label>
                    <label class="itemName" id="email">2464546@qq.com</label>
                    <label class="itemName" style="margin-left: 20%;">联系方式: </label>
                    <label class="itemName" id="phone">11651561611</label>
                </div>
                <div class="item">
                    <button class="middleButton" id="modifyButton">修 改</button>
                </div>
            </div>
            <div class="info" id="modifyInfo" style="display: none;">
                <div class="item">
                    <label class="itemName">用户名: </label>
                    <input class="smallInput" id="username">
                    <label class="itemName" style="margin-left: 20%;">教工号: </label>
                    <input class="smallInput" id="number">
                </div>
                <div class="item">
                    <label class="itemName">姓名: </label>
                    <input class="smallInput" id="name">
                    <label class="itemName" style="margin-left: 20%;">性别: </label>
                    <select class="smallSelect" id="gender">
                        <option>男</option>
                        <option>女</option>
                    </select>
                </div>
                <div class="item">
                    <label class="itemName">学校: </label>
                    <input class="smallInput" id="school">
                    <label class="itemName" style="margin-left: 20%;">职称: </label>
                    <input class="smallInput" id="title">
                </div>
                <div class="item">
                    <label class="itemName">E-mail: </label>
                    <input class="smallInput" id="email">
                    <label class="itemName" style="margin-left: 20%;">联系方式: </label>
                    <input class="smallInput" id="phone">
                </div>
                <div class="item">
                    <button class="middleButton" id="submitButton">保 存</button>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</div>
<div class="clear"></div>
<script src="/js/teacher/modifyPersonalInfo.js"></script>
</@frame.page>
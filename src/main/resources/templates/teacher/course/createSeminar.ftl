<#import "*/frame.ftl" as frame/>
<@frame.page title="创建讨论课">
<link rel="stylesheet" href="/css/content.css">
<div class="content">
    <div class="contentBlock">
        <div class="title">创建讨论课</div>
        <div class="returnButton" id="returnButton">返回上一页</div>
        <div class="line"></div>
        <div class="itemBody">
            <div class="item">
                <label class="itemName">讨论课名称</label>
                <input class="bigInput">
            </div>
            <div class="item" style="height: 30%">
                <label class="itemName">讨论课说明:</label>
                <textarea class="textStyle">xxxx</textarea>
            </div>
            <div class="item">
                <label class="itemName">分组方式:</label>
                <select class="middleInput">
                    <option>固定分组</option>
                    <option>随机分组</option>
                </select>
            </div>
            <div class="item">
                <label class="itemName">开始时间：</label>
                <input class="timeStyle" type="date">
                <label class="itemName">结束时间：</label>
                <input class="timeStyle" type="date">
            </div>
            <div class="item">
                <label class="itemName">评分规则:</label>
                <label class="itemName">讨论课分数占比</label>
                <input class="smallInput" placeholder="0-100">
                <label class="itemName"> 报告分数占比</label>
                <input class="smallInput" placeholder="0-100">
            </div>
            <div class="item" style="margin-left: 25%">
                <label class="smallItemName">5分占比</label>
                <input type="text" name="seminarGrade" class="smallInput" placeholder="0-100">
                <label class="smallItemName">4分占比</label>
                <input type="text" name="seminarGrade" class="smallInput" placeholder="0-100">
                <label class="smallItemName">3分占比</label>
                <input type="text" name="seminarGrade" class="smallInput" placeholder="0-100">
            </div>
            <div class="item">
                <label class="itemName">组数限制:</label>
                <input class="middleInput">
            </div>
            <div class="item">
                <label class="itemName">组内人数限制:</label>
                <input class="middleInput">
            </div>
            <div class="item">
                <button class="submit" onclick="javascript: window.location.href = '/teacher/course/homePage/OOAD?isAddSeminar=1'">提交</button>
                <button class="reset">重置</button>
                <div class="clear"></div>
            </div>
        </div>
    </div>
</div>
<script>
    $("#returnButton").click(function(){
        window.location.href = "/teacher/course/homePage/OOAD";
    });
</script>
</@frame.page>
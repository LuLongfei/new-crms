<#import "*/frame.ftl" as frame/>
<@frame.page title="创建班级">
<link rel="stylesheet" href="/css/content.css">
<div class="content">
    <div class="contentBlock">
        <div class="title">创建班级</div>
        <div class="returnButton" id="returnButton">返回上一页</div>
        <div class="line"></div>
        <div class="itemBody">
            <div class="item">
                <label class="itemName">班级名称:</label>
                <input class="bigInput">
            </div>
            <div class="item">
                <label class="itemName">上课地点:</label>
                <input class="bigInput">
            </div>
            <div class="item">
                <label class="itemName">上课时间:</label>
                <select class="bigSelect">
                    <option>单周</option>
                    <option>双周</option>
                </select>
                <select class="smallSelect">
                    <option>周一</option>
                    <option>周二</option>
                    <option>周三</option>
                    <option>周四</option>
                    <option>周五</option>
                </select>
                <select class="smallSelect">
                    <option>1-2节</option>
                    <option>3-4节</option>
                    <option>5-6节</option>
                    <option>7-8节</option>
                </select>
                <button class="addButton">添加</button>
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
                <label class="itemName">导入学生名单:</label>
                <button class="selectFile">上传文件</button>
            </div>
            <div class="item">
                <button class="submit" onclick="javascript: window.location.href = '/teacher/course/homePage/OOAD?isAddClass=1'">提交</button>
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
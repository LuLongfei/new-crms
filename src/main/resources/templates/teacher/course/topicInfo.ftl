<#import "*/frame.ftl" as frame/>
    <#global url = springMacroRequestContext.getContextPath()>
<@frame.page title="查看话题">
<link rel="stylesheet" href="/css/content.css">
<div class="content">
    <div class="contentBlock">
        <div class="title">查看话题</div>
        <div class="returnButton" id="returnButton">返回上一页</div>
        <div class="line"></div>
        <div class="itemBody" id="showInfo">
            <div class="item">
                <label class="itemName">题 目:</label>
                <label class="itemName" id="name">${topic.name}</label>
            </div>
            <div class="item">
                <label class="itemName">说 明:</label>
                <label class="itemName" id="description">${topic.description}</label>
            </div>
            <div class="item">
                <label class="itemName">组数限制:</label>
                <label class="itemName" id="groupLimit">${topic.groupLimit}</label>
            </div>
            <div class="item">
                <label class="itemName">组内人数限制:</label>
                <label class="itemName" id="memberLimit">${topic.groupLeft}</label>
            </div>
            <div class="item">
                <label class="itemName">已选小组:</label>
                <#if topic.name == "A">
                    <label class="itemName">A1 A2</label>
                </#if>
                <#if topic.name == "B">
                    <label class="itemName">B1 B2 B3</label>
                </#if>
            </div>
            <div class="item" id="deleteAndUpdate">
                <button class="submit" id="modifyButton">修改</button>
                <button class="reset" onclick="deleteTopics('${topic.name}')">删除话题</button>
                <div class="clear"></div>
            </div>
        </div>
        <div class="itemBody" id="modifyInfo" style="display: none;">
            <div class="item">
                <label class="itemName">题 目:</label>
                <input class="middleInput" id="name">
            </div>
            <div class="item">
                <label class="itemName">说 明:</label>
                <input class="middleInput" id="description">
            </div>
            <div class="item">
                <label class="itemName">组数限制:</label>
                <input class="middleInput" id="groupLimit">
            </div>
            <div class="item">
                <label class="itemName">组内人数限制:</label>
                <input class="middleInput" id="memberLimit">
            </div>
            <div class="item">
                <label class="itemName">已选小组:</label>
                <label class="itemName">A1</label>
            </div>
            <div class="item">
                <button class="submit" id="submitButton">保存</button>
                <button class="reset" >删除话题</button>
                <div class="clear"></div>
            </div>
        </div>
    </div>
</div>
<script>
    function returnButton(name,url) {
        console.log(url);
        console.log(name);
    }
</script>
<script src="/js/teacher/topicInfo.js"></script>
<script src="/js/teacher/modifyTopicInfo.js"></script>
</@frame.page>
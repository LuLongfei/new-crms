<#import "*/frame.ftl" as frame/>
<@frame.page title="教师课程主页">
<div class="content">
    <div class="classInfo">
        <div class="title">课程班级</div>
        <div class="returnButton" id="return">返回上一页</div>
        <div class="line"></div>
        <div class="blockBody">
            <#if name == "OOAD">
                <#list data as className>
                    <div class="block" id="${className}" onclick="classInfo('${className}')">
                        <div class="blockFont">${className}</div>
                    </div>
                </#list>
            </#if>
            <div class="block" id="classAdd">
                <img class="addImg" src="/image/add.png" alt="添加">
            </div>
        </div>
    </div>
    <div class="seminarInfo">
        <div class="title">讨论课</div>
        <div class="line"></div>
        <div class="blockBody">
            <#if name == "OOAD">
                <div class="block" id = "讨论课1" onclick="seminar('seminar1')">
                    <div class="blockFont" id="seminar1">讨论课1</div>
                </div>
                <div class="block" id="讨论课2" onclick="seminar('seminar2')">
                    <div class="blockFont" id="seminar2">讨论课2</div>
                </div>
            </#if>
            <div class="block" id="seminarAdd">
                <img class="addImg" src="/image/add.png" alt="添加">
            </div>
        </div>
    </div>
</div>
<script src="/js/teacher/CourseHome.js"></script>
<script src="/js/teacher/addSeminar.js"></script>
<script src="/js/teacher/addClass.js"></script>
</@frame.page>
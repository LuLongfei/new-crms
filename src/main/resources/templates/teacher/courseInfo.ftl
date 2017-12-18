<#import "*/teacherFrame.ftl" as frame/>
<@frame.page title="学生成绩">
<link rel="stylesheet" href="/css/content.css">
<link rel="stylesheet" href="/css/student/content.css">
<div class="content">
    <div class="contentBlock">
        <div class="title">课程信息</div>
        <div class="line"></div>
        <div id="courseContainer">
            <#list data as courses>
                <div class="main_box_right_content" id="${courses.name}">
                    <h3 class="classtitle"><span id="course" onclick="javascript:course('${courses.name}')">${courses.name}</span>
                        <button class="main_box_right_content_button" onclick="deleteCourse('${courses.name}')">删除课程</button>
                        <link rel="stylesheet" href="/css/bootstrap.min.css">
                        <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
                        <script src="/js/bootstrap.min.js"></script>
                        <button class="main_box_right_content_button" data-toggle="modal" data-target="#myModal">修改课程</button>
                        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                        <h4 class="modal-title" id="myModalLabel">修改课程</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="item">
                                            <label style="font-family: YouYuan;font-size: 15px;width:30%;">班级数:</label>
                                            <input style="width:60%;border:1px solid black;min-height: 8px;" placeholder="${courses.numClass}">
                                        </div>
                                        <div class="item">
                                            <label style="font-family: YouYuan;font-size: 15px;width:30%;">学生人数：</label>
                                            <input style="width:60%;border:1px solid black;min-height: 8px;" placeholder="${courses.numStudent}">
                                        </div>
                                        <div class="item">
                                            <label style="font-family: YouYuan;font-size: 15px;width:30%;">开始时间:</label>
                                            <input style="width:60%;border:1px solid black;min-height: 8px;" placeholder="${courses.startTime}">
                                        </div>
                                        <div class="item">
                                            <label style="font-family: YouYuan;font-size: 15px;width:30%;">结束时间：</label>
                                            <input style="width:60%;border:1px solid black;min-height: 8px;" placeholder="${courses.endTime}">
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                        <button type="button" class="btn btn-primary">提交</button>
                                    </div>
                                </div><!-- /.modal-content -->
                            </div><!-- /.modal -->
                        </div>
                    </h3>
                    <div class="divideline"></div>
                    <div class="classinfo" style="margin: 0 auto;text-align:justify">
                        <div class="item">
                            <label class="itemName">班级数:</label>
                            <label class="itemName">${courses.numClass}</label>
                            <label class="itemName" style="margin-left: 30%;">学生人数：</label>
                            <label class="itemName">${courses.numStudent}</label>
                        </div>
                        <div class="item">
                            <label class="itemName">开始时间:</label>
                            <label class="itemName">${courses.startTime}</label>
                            <label class="itemName" style="margin-left: 30%;">结束时间：</label>
                            <label class="itemName">${courses.endTime}</label>
                        </div>
                    </div>
                </div>
            </#list>
        </div>
    </div>
</div>
<div class="clear"></div>
<script src="/js/teacher/courseInfo.js"></script>
<script src="/js/teacher/addCourse.js"></script>
</@frame.page>
<#import "*/frame.ftl" as frame/>
<@frame.page title="班级信息">
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/content.css">
<div class="content">
    <div class="contentBlock" id="showInfo">
        <div class="title">${data}</div>
        <div class="returnButton" id="returnButton">返回上一页</div>
        <div class="line"></div>
        <div class="itemBody">
            <div class="item">
                <label class="itemName">班级名称:</label>
                <label class="itemName">${data}</label>
            </div>
            <div class="item">
                <label class="itemName">上课地点:</label>
                <label class="itemName">海韵212</label>
            </div>
            <div class="item">
                <label class="itemName">上课时间:</label>
                <label class="itemName">单周周一12节 </label>
                <label class="itemName"> 周三12节</label>
            </div>
            <div class="item">
                <label class="itemName">评分规则:</label>
                <label class="itemName">讨论课分数占比</label>
                <label class="itemName">60% </label>
                <label class="itemName"> 报告分数占比</label>
                <label class="itemName">40%</label>
            </div>
            <div style="width: 80%;margin: 0 auto;">
                <table class="table table-striped" style="width: 80%;margin: 0 auto;">
                    <thead class="tableTitle">
                    <tr>
                        <th>分数</th>
                        <th>班级占比(%)</th>
                    </tr>
                    </thead>
                    <tbody class="tableContent">
                    <tr>
                        <td>5</td>
                        <td>30%</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>60%</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>10%</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="item">
                <label class="itemName">学生名单:</label>
            </div>
            <div style="width: 80%;margin: 0 auto;">
                <table class="table table-striped" style="width: 80%;margin: 0 auto;">
                    <thead class="tableTitle">
                    <tr>
                        <th>学号</th>
                        <th>姓名</th>
                    </tr>
                    </thead>
                    <tbody class="tableContent">
                    <tr>
                        <td>24320152202000</td>
                        <td>sss</td>
                    </tr>
                    <tr>
                        <td>24320152202001</td>
                        <td>sss</td>
                    </tr>
                    <tr>
                        <td>24320152202002</td>
                        <td>xxx</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="item">
                <button class="submit" id="modifyButton">修改</button>
                <button class="reset" onclick="deleteClass('${data}')">删除班级</button>
                <div class="clear"></div>
            </div>
        </div>
    </div>
    <div class="contentBlock" id="modifyInfo" style="display: none;">
        <div class="title">修改班级</div>
        <div class="returnButton" id="returnButton">返回上一页</div>
        <div class="line"></div>
        <div class="itemBody">
            <div class="item">
                <label class="itemName">班级名称:</label>
                <input class="bigInput" value="${data}">
            </div>
            <div class="item">
                <label class="itemName">上课地点:</label>
                <input class="bigInput" value="海韵212">
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
                <input class="smallInput" placeholder="0-100" value="60">
                <label class="itemName"> 报告分数占比</label>
                <input class="smallInput" placeholder="0-100" value="40">
            </div>
            <div class="item" style="margin-left: 25%">
                <label class="smallItemName">5分占比</label>
                <input type="text" name="seminarGrade" class="smallInput" placeholder="0-100" value="30">
                <label class="smallItemName">4分占比</label>
                <input type="text" name="seminarGrade" class="smallInput" placeholder="0-100" value="60">
                <label class="smallItemName">3分占比</label>
                <input type="text" name="seminarGrade" class="smallInput" placeholder="0-100" value="10">
            </div>
            <div class="item">
                <label class="itemName">学生名单:</label>
            </div>
            <div style="width: 80%;margin: 0 auto;">
                <table class="table table-striped" style="width: 80%;margin: 0 auto;">
                    <thead class="tableTitle">
                    <tr>
                        <th>学号</th>
                        <th>姓名</th>
                    </tr>
                    </thead>
                    <tbody class="tableContent">
                    <tr>
                        <td>24320152202000</td>
                        <td>sss</td>
                    </tr>
                    <tr>
                        <td>24320152202001</td>
                        <td>sss</td>
                    </tr>
                    <tr>
                        <td>24320152202002</td>
                        <td>xxx</td>
                    </tr>
                    <tr>
                        <td id="addStudent">添加</td>
                    </tr>
                    </tbody>
                </table>
                <div class="item">
                    <button class="submit" id="submitButton"> 提交</button>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $("#returnButton").click(function () {
        window.location.href = "/teacher/course/homePage/OOAD";
    });
</script>
<script>
    function deleteClass(e) {
        console.log(e);
        var r = confirm("确认删除班级？");
        if (r == true) {
            console.log(e);
            location.href = "/teacher/course/homePage/OOAD?class=" + e;//发送txt里面的内容        })    })
        }
    };
</script>
<script src="/js/teacher/modifyClassInfo.js"></script>
</@frame.page>
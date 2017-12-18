<#import "*/frame.ftl" as frame/>
<@frame.page title="查看话题">
<link rel="stylesheet" href="/css/content.css">
<div class="content">
    <div class="contentBlock">
        <div class="title">查看话题</div>
        <div class="returnButton" onclick="returnButton('${seminar.groupingMethod}')">返回上一页</div>
        <div class="line"></div>
        <div class="itemBody">
            <div class="item">
                <label class="itemName">题 目:</label>
                <label class="itemName">${topic.name}</label>
            </div>
            <div class="item">
                <label class="itemName">说 明:</label>
                <label class="itemName">${topic.description}</label>
            </div>
            <div class="item">
                <label class="itemName">组数限制:</label>
                <label class="itemName">${topic.groupLimit}</label>
            </div>
            <div class="item">
                <label class="itemName">组内人数限制:</label>
                <label class="itemName">${topic.groupLeft}</label>
            </div>
            <#if seminar.groupingMethod == "固定分组">
                <div class="item" id="chooseButton">
                    <button class="submit" id="choose">选择话题</button>
                    <div class="clear"></div>
                </div>
            </#if>
        </div>
    </div>
</div>
<script>
   function returnButton(e){
       console.log(e);
       if ( e == "固定分组"){
           window.location.href = "/student/course/seminarInfo/fixed";
       }
       else{
           window.location.href = "/student/course/seminarInfo/random";
       }
   }
   $("#choose").click(function(){
       var r=confirm("确认选择？");
       if (r==true)
       {
           alert("选择成功");
           $("#chooseButton").html(
               "<button class="+"submit"+" onclick="+"deleteTopic()"+">"+"取消选择"+"</button>"+
                   "<div class="+"clear"+">"+"</div>"
           );
       }
   });
   function deleteTopic(){
       var r = confirm("确认取消？");
       if( r == true){
           alert("取消成功");
           $("#chooseButton").html(
                   "<button class="+"submit"+" id="+"choose"+">"+"选择话题"+"</button>"+
                   "<div class="+"clear"+">"+"</div>"
           );
       }
   };
</script>
</@frame.page>
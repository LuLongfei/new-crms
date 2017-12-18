$(document).ready(function() {
    function GetQueryString(name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
        var r = window.location.search.substr(1).match(reg);  //获取url中"?"符后的字符串并正则匹配
        console.log(r);
        var context = "";
        if (r != null)
            context =r[2];
        //context = decodeURI(context);
        reg = null;
        r = null;
        return context == null || context == "" || context == "undefined" ? "" : context;
    }
    console.log(GetQueryString("date"));
    if(GetQueryString("date") == "2017-11-20")
        $("#deleteAndUpdate").remove();
});

function deleteTopics(e){
    console.log(e);
    var r = confirm("确认删除话题？"+e);
    if( r == true){
        location.href="/teacher/course/seminarInfo?delete="+e;
    }
};

$("#returnButton").click(function () {
   window.history.go(-1);
});
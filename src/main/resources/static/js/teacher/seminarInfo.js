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
    console.log(GetQueryString("delete"));
    $("#"+GetQueryString("delete")).remove();
});
function topicInfo(e,s){
    if ( e == "A"){
        var t = "/teacher/course/topicInfo/A?date="+s;
        console.log(t);
        location.href = "/teacher/course/topicInfo/A?date="+s;
    }
    else{
        location.href = "/teacher/course/topicInfo/B?date="+s;
    }
};

function deleteSeminar(e){
    var r = confirm("确认删除"+e+"?");
    if(r == true) {
        location.href = "/teacher/course/homePage/OOAD?seminar=" + e;
    }
};


$("#topicAdd").click(function(){
    window.location.href = "/teacher/course/createTopic";
});

$("#returnButton").click(function(){
    window.location.href = "/teacher/course/homePage/OOAD";
});

$("#grade").click(function () {
    window.location.href = "/teacher/course/grade";
})


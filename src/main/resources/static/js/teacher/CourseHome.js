$(document).ready(function() {
    function GetQueryString(name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
        var r = window.location.search.substr(1).match(reg);  //获取url中"?"符后的字符串并正则匹配
        console.log(r);
        var context = "";
        if (r != null)
            context =r[2];
        context = decodeURI(context);
        reg = null;
        r = null;
        return context == null || context == "" || context == "undefined" ? "" : context;
    }
        console.log(GetQueryString("class"));
        $("#"+GetQueryString("class")).remove();
        $("#"+GetQueryString("seminar")).remove();
    });

function seminar(e){
    if(e == "seminar1"){
        console.log("seminar1");
        window.location.href = "/teacher/course/seminarInfo/finish";
    }
    else{
        console.log("seminar2");
        window.location.href = "/teacher/course/seminarInfo";
    }
};
function classInfo(e){
    window.location.href = "/teacher/course/classInfo";
};

$("#classAdd").click(function () {
    window.location.href = "/teacher/course/createClass";
});

$("#seminarAdd").click(function () {
    window.location.href = "/teacher/course/createSeminar";
});

$("#return").click(function () {
    window.location.href = "/teacher/course";
});

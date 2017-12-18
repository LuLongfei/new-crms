function course(e){
    if(e == "OOAD"){
        window.location.href = "/teacher/course/homePage/OOAD";
    }
    else{
        window.location.href = "/teacher/course/homePage";
    }
};
function deleteCourse(e) {
    var r = confirm("确认删除"+e+"?");

    if( r == true){
        alert("取消成功");
        $("#"+e).remove();
    }
};

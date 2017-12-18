$("#checkButton").click(function () {
   window.location.href = "/student/choose/course?OOAD";
});
function selectCourses(e) {
    var r = confirm("确认选课吗？");
    if ( r == true){
        $("#"+e).remove();
    }
};
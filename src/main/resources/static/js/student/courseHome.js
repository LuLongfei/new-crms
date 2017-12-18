$("#returnButton").click(function () {
    window.location.href = "/student/course";
});
function seminar(e){
    if( e == "讨论课1"){
        window.location.href = "/student/course/seminarInfo/fixed";
    }
    if( e == "讨论课2"){
        window.location.href = "/student/course/seminarInfo/random";
    }
};
$("#group").click(function(){
    window.location.href = "/student/course/group";
});
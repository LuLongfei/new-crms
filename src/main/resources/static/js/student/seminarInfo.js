$("#returnButton").click(function () {
    window.location.href = "/student/course/home/OOAD";
});
function topic(e) {
    if( e == "A"){
        window.location.href = "/student/course/topicInfo/fixed";
    }
    if(e == "B"){
        window.location.href = "/student/course/topicInfo/random";
    }
};
$("#grade").click(function(){
    window.location.href = "/student/course/grade";
})

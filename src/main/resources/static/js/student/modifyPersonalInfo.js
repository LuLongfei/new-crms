var userInfo = getInfo();
var showNode = $("#showInfo");
var modifyNode = $("#modifyInfo");
function getInfo() {
    return {
        "username": $("label#username").text(),
        "number": $("label#number").text(),
        "name": $("label#name").text(),
        "gender": $("label#gender").text(),
        "school": $("label#school").text(),
        "title": $("label#title").text(),
        "email" : $("label#email").text(),
        "phone": $("label#phone").text()
    };
}

function modifyOnclick() {
    $("input#username").val(userInfo.username);
    $("input#number").val(userInfo.number);
    $("input#name").val(userInfo.name);
    $("input#gender").val(userInfo.gender);
    $("input#school").val(userInfo.school);
    $("input#title").val(userInfo.title);
    $("input#email").val(userInfo.email);
    $("input#phone").val(userInfo.phone);

    showNode.toggle();
    modifyNode.toggle();
}

function submitOnclick() {
    userInfo = {
        "username": $("input#username").val(),
        "number": $("input#number").val(),
        "name": $("input#name").val(),
        "gender": $("option:selected").text(),
        "school": $("input#school").val(),
        "title": $("input#title").val(),
        "email" : $("input#email").val(),
        "phone": $("input#phone").val()
    };

    $("label#username").text(userInfo.username);
    $("label#number").text(userInfo.number);
    $("label#name").text(userInfo.name);
    $("label#gender").text(userInfo.gender);
    $("label#school").text(userInfo.school);
    $("label#title").text(userInfo.title);
    $("label#email").text(userInfo.email);
    $("label#phone").text(userInfo.phone);
    showNode.toggle();
    modifyNode.toggle();
}

$("#submitButton").click(submitOnclick);
$("#modifyButton").click(modifyOnclick);
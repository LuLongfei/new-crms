addClass();

function addClass() {
    var isAdd = window.location.href.indexOf("isAddClass");
    if(isAdd > 0) {
        var s = '                    <div class="block" id="五班" onclick="classInfo(\'五班\')">\n' +
            '                        <div class="blockFont">五班</div>\n' +
            '                    </div>\n'
        $("#classAdd").before(s);
    }
}
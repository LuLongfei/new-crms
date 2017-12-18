addSeminar();

function addSeminar() {
    var isAdd = window.location.href.indexOf("isAddSeminar");
    if(isAdd > 0) {
        var s = '                <div class="block" id = "讨论课3" onclick="seminar(\'seminar3\')">\n' +
            '                    <div class="blockFont" id="seminar3">讨论课3</div>\n' +
            '                </div>\n'
        $("#seminarAdd").before(s);
    }
}
function dialogConfirm(title, msg) {
    document.getElementById("js_dialog_1_title").innerHTML = title;
    document.getElementById("js_dialog_1_msg").innerHTML = msg;
    $("#iosDialog1").fadeIn(200);
}
function dialogMsg(msg) {
    document.getElementById("js_dialog_2_msg").innerHTML = msg;
    $("#iosDialog2").fadeIn(200);
}
$(function () {
    $('#dialogs').on('click', '.weui-dialog__btn', function () {
        $(this).parents('.js_dialog').fadeOut(200);
        return false;
    });
});
String.prototype.format = function () {
    var args = arguments;
    return this.replace(/\{(\d+)\}/g,
        function (m, i) {
            return args[i];
        });
}
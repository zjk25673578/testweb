layui.use(["layer"], function () {

    $("table tr").hover(function () {
        $(this).css({"background": "#ffff66"});
    }, function () {
        $(this).removeAttr("style");
    });

    $("table tr").click(function () {
        $(this).toggleClass("fixed-color")
    });
});

function delete_confirm() {
    var r = confirm("确定 ?");
    return r;
}

function clearKeywords() {
    $("#keywords").val(null);
}

function clearSelections() {
    $(".fixed-color").removeClass("fixed-color");
}
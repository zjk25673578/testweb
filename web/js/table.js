layui.use(["layer"], function () {
    var layer = layui.layer;

    var $tr = $("table tr");

    $tr.hover(function () {
        $(this).css({"background": "#ffff66"});
    }, function () {
        $(this).removeAttr("style");
    });

    $tr.click(function () {
        $(this).toggleClass("fixed-color")
    });
});

function delete_confirm(url) {
    layer.confirm('确定删除吗 ? 这个操作无法撤回 !', {
        offset: "40%",
        btn: ["确定", "取消"],
        yes: function (index) {
            window.location.href = url;
            layer.close(index);
        }
    });
}

function clearKeywords() {
    $("#keywords").val(null);
}

function clearSelections() {
    $(".fixed-color").removeClass("fixed-color");
}
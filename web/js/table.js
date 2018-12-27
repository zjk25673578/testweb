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

function refreshTable(url) {
    layer.confirm('确定执行这个操作吗 ? 这将刷新所有的表, 但是原有的信息不会更改', {
        offset: "40%",
        btn: ["确定", "取消"],
        yes: function (index) {
            window.location.href = url;
            layer.close(index);
        }
    });
}

function exportTable(url) {
    layer.confirm('这将导出当前选中的表的sql语句 !', {
        offset: "40%",
        btn: ["确定", "取消"],
        yes: function (index) {
            var id = "";
            var $selections = $(".fixed-color");
            for (var i = 0; i < $selections.length; i++) {
                id += $selections.eq(i).find("td").eq(0).attr("ids");
                if (i !== $selections.length - 1) {
                    id += ",";
                }
            }
            // window.location.href = url;
            alert(id);
            layer.close(index);
        }
    });
}

function clearKeywords() {
    $("#colname").val(null);
    $("#tabname").val(null);
}

function clearSelections() {
    $(".fixed-color").removeClass("fixed-color");
}
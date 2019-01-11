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
    layer.confirm('这将导出当前选中的表的word文档<br>若未选中, 将导出所有', {
        offset: "40%",
        btn: ["确定", "取消"],
        yes: function (index) {
            var ids = "";
            var $selections = $(".fixed-color");
            for (var i = 0; i < $selections.length; i++) {
                ids += $selections.eq(i).find("td").eq(0).attr("ids");
                if (i !== $selections.length - 1) {
                    ids += ",";
                }
            }
            if (ids.trim().length > 0) {
                window.location.href = url + "?ids=" + ids;
            } else {
                var count = $("#tbody").find("tr").length;
                layer.confirm('<img src="' + _ctx + '/res/layui/images/face/43.gif" alt="[黑线]"> 真要导出全部的表啊 ? ! 真的很慢的 !<br>预计用时: ' + count * 2.5 + '秒', {
                    offset: "40%",
                    btn: ["导吧, 慢慢等...", "取消"],
                    yes: function (idx) {
                        window.location.href = url;
                        layer.close(idx);
                    }
                });
            }
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
layui.use(["layer"], function () {
    var layer = layui.layer;

    var $tr = $("table tr");

    // 鼠标移入表格行背景颜色该表
    $tr.hover(function () {
        $(this).css({"background": "#ffff66"});
    }, function () {
        $(this).removeAttr("style");
    });

    // 点击表格行事件
    $tr.click(function () {
        $(this).toggleClass("fixed-color")
    });
});

// 删除确认
function delete_confirm(url) {
    layer.confirm('确定删除吗 ? 这个操作无法撤回 !', {
        offset: "40%",
        btn: ["确定", "取消"],
        icon: 7,
        yes: function (index) {
            window.location.href = url;
            layer.close(index);
        }
    });
}

// 表格列表页的刷新数据确认
function refreshTable(url) {
    layer.confirm('确定执行这个操作吗 ? 这将刷新所有的表, 但是原有的信息不会更改', {
        offset: "40%",
        btn: ["确定", "取消"],
        icon: 3,
        yes: function (index) {
            window.location.href = url;
            layer.close(index);
        }
    });
}

// 导出数据表确认
function exportTable(url) {
    var ids = "";
    var $selections = $(".fixed-color");
    var msg;
    if ($selections.length === 0) {
        msg = '未选中任何数据, 导出所有的表吗 ?';
    } else if ($selections.length <= 10) {
        var tnames = "将导出以下表: <br>";
        for (var i = 0; i < $selections.length; i++) {
            var tableName = $selections.eq(i).find("td").eq(2).text();
            tnames += tableName;
            if (i !== $selections.length - 1) {
                tnames += "<br>";
            }
        }
        msg = tnames;
    } else {
        msg = "将导出(<font color='red'>" + $selections.length + "</font>)张表";
    }
    layer.confirm(msg, {
        offset: "40%",
        btn: ["确定", "取消"],
        icon: 7,
        yes: function (index) {
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
                layer.confirm('<img src="' + _ctx + '/res/layui/images/face/43.gif" alt="[黑线]"> 真要导出全部的表啊 ? ! 真的很慢的 !<br>预计用时: ' + Math.floor(count * 1.3) + '秒', {
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

// 清除查询输入框值
function clearKeywords() {
    $("#colname").val(null);
    $("#tabname").val(null);
}

// 取消选择行, Clear按钮的点击事件
function clearSelections() {
    $(".fixed-color").removeClass("fixed-color");
}

// 全部选中, All按钮的点击事件
function allSelector() {
    $("#tbody").find("tr").addClass("fixed-color");
}
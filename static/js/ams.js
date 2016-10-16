$(function () {


});


// 加载数据表
function get_table_data() {
    $("#query").click(function () {
        //get_table_data2();
        $('#dg').datagrid({
            title: '设备列表模式',
            iconCls: 'icon-a_detail',
            fit: true,
            fitColumns: true,
            rownumbers: true,
            pagination: true,
            singleSelect: true,
        })
        var jsonstr = '{"total":1,"rows":[{"id":"M000005","name":"检测设备","sortid":3,"valid":"1","handler":"系统管理员"}]}';
        var data = $.parseJSON(jsonstr);
        $('#dg').datagrid('loadData', data);
    });
}

// 加载数据表--停用
function get_table_data2() {
    var str = {
        id: $("#id").val(),
        name: $("#name").val(),
        model: $("#model").val(),
        acceptUser: $("#acceptUser").val(),
        user: $("#user").val(),
        brand: $("#brand").val(),
        acceptdate: $("#acceptdate").datebox('getValue'),
        status: $("#status").combobox('getValue'),
    }
    $.ajax({
        type: "get",
        url: "/assets/user/ajax/",
        data: str,
        success: function (data) {
            $(".middle").empty();
            $(".middle").html("123123");
            alert("1232");
            //var data = $.parseJSON(data);
            //$('#dg').datagrid('loadData',data);
        },
        error: function () {
            alert('error');
        }
    })
}


// È«Ñ¡
function all_select() {

    //if($(this).checked){
    //    $("input[name='checkbox']").each(function(){
    //       $(this).attr("checked",'true');
    //    });
    //}
    //$("#row :checkbox").attr("checked",'true');
    $("td input[name='checkbox']").attr("checked", $(this).attr("checked"));
}


// Ë«»÷ÏÔÊ¾ÏêÇé²âÊÔ
function showDetail() {
    $("tr#row").dblclick(function () {
        var id = $(this).children('td').eq(1).text();
        ajax_showDetail(id);
    });
}

// ¼ÓÔØÏÔÊ¾ÏêÇéÊý¾Ý
function ajax_showDetail(id) {
    $.ajax({
        url: "/assets/query/showdetail/",
        data: {id: id},
        success: function (data) {
            $("#showhtml").html(data);
            $("#showhtml").css('display', 'block');
            $("#showdetailhtml").css('display', 'none');
            //$("#dlg").css({
            //    "width":"550px",
            //    "height":"220px",
            //});
            $("#dlg").dialog({
                title: "×Ê²úÏêÏ¸ÐÅÏ¢",
            });
            $("#dlg").dialog('open');
        }
    });
}

/// ¼ÓÔØÏÔÊ¾±ä¸üÊý¾Ý
function ajax_showChangeDetail(id) {
    $.ajax({
        url: "/assets/query/showchangedetail/",
        data: {id: id},
        success: function (data) {
            $("#showdetailhtml").html(data);
            $("#showhtml").css('display', 'none');
            $("#showdetailhtml").css('display', 'block');
            //$("#dlg").css({
            //    "width":"900px",
            //    "height":"350px",
            //});
            //$("#showdetailhtml").css({
            //    "width":"800px",
            //
            //});
            $("#dlg").dialog({
                title: "×Ê²ú±ä¸üÃ÷Ï¸",
            });
            $("#dlg").dialog('open');
        }
    });
}

// ¸´Ñ¡¿òµ¥Ñ¡
function chksingle() {
    $("tr td input[type=checkbox]").click(function () {
        if ($(this).prop('checked')) {
            $("td input[name='checkbox']").prop('checked', false);
            $(this).prop('checked', true);
        }
    });
}


function chkselected() {
    $("#row").click(function () {
        if ($(this).cells[0].children[0].prop('checked')) {
            $("td input[name='checkbox']").prop('checked', false);
            $(this).cells[0].children[0].prop('checked', true);
        }

    })
}


// ²âÊÔÓÃ
function test_change_btn() {
    var flag = ""
    $("td input[name='checkbox'][checked]").each(function () {
        flag = $(this).parent().next().text();
        if (flag != "") {
            return false;
        }
    });
    if (flag != "") {
        alert(flag);
        $('#changebtn').dialog('open');
    }
    flag = "";
}


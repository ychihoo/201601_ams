$(function () {
    get_table_data();
});


// ????????±í
function get_table_data() {
    $("#query").click(function () {
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
                //var html = "<table class="tab" cellpadding="0" cellspacing="0" border="1px">"+
                "<tr><th>ID</th><th>????</th></tr>";
                //$.each(data,function(i,d){
                //    html += "<tr><td>" + d["id"] + "</td><td>"+ d["brand_name"]+"</td></tr>";
                //
                //});
                //html+="</table>"
                $(".middle").html(data);
            }
        });
    });
}


// ????
function all_select() {

    //if($(this).checked){
    //    $("input[name='checkbox']").each(function(){
    //       $(this).attr("checked",'true');
    //    });
    //}
    //$("#row :checkbox").attr("checked",'true');
    $("td input[name='checkbox']").attr("checked", $(this).attr("checked"));
}


// ???÷?????ê?é????
function showDetail() {
    $("tr#row").dblclick(function () {
        var id = $(this).children('td').eq(1).text();
        ajax_showDetail(id);
    });
}

// ?????????ê?é????
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
                title: "资产详细信息",
            });
            $("#dlg").dialog('open');
        }
    });
}

/// ????????±??ü????
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
                title: "资产变更记录",
            });
            $("#dlg").dialog('open');
        }
    });
}

// ?????ò????
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


// ??????
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


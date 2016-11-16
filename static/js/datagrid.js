$(function () {
    loadtable();
    loadRepairTable();
    // display 查询按钮
    $('#query').click(function () {
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
        loadData(str);
    })
})

// 加载assets-datagrid
function loadtable(str) {
    $('#dg').datagrid({
        //idField: '产品ID',
        title: '资产信息数据表',
        //striped: true,
        singleSelect: true,
        height: get_dg_height(),
        //height:500,
        //fitColumns: true,
        rownumbers: true,
        //nowrap: false,
        pagination: true,
        emptyMsg:'没有检索到相关信息',
        pageSize: 30,
        pageList: [30,50,100],
        showFooter: true,
        columns: [[
            {field: 'ck', checkbox: true},
            {field: 'sid', title: '资产编号', width: 100, align: 'left', sortable: true},
            {field: 'sname', title: '资产名称', width: 100, align: 'left'},
            {field: 'sbrand', title: '品牌', width: 100, align: 'left'},
            {field: 'smodel', title: '型号', width: 120, align: 'left'},
            {field: 'sconfiguration', title: '配置', width: 150, align: 'left'},
            {field: 'scategory', title: '类别', width: 80, align: 'center'},
            {field: 'squantity', title: '数量', width: 40, align: 'center'},
            {field: 'sbuydate', title: '购买日期', width: 80, align: 'center'},
            {field: 'sacceptdept', title: '领用部门', width: 120, align: 'center'},
            {field: 'sacceptuser', title: '领用人', width: 90, align: 'center'},
            {field: 'suser', title: '使用(保管)人', width: 90, align: 'center'},
            {field: 'sacceptdate', title: '领用日期', width: 80, align: 'center'},
            {field: 'sflag', title: '资产状态', width: 80, align: 'center'}
        ]],
        onDblClickRow: function (index, row) {
            ajax_showDetail(row.sid);
        },
    });
}

// 获取datagrid选中的id
function get_checkedID() {
    //var dgid = "#"+dgid;
    var checkedRow = $('#dg').datagrid('getChecked');
    if (checkedRow.length == "0") {
        $.messager.alert("提示", "请选择！", "warning");
    }
    else {
        var id = checkedRow[0].sid;
        return id;
    }
}

// 载入display数据至datagrid
function loadData(str) {
    $('#dg').datagrid({
        url: '/assets/query/ajax/',
        method: 'get',
        queryParams: str,
    })
    //$.ajax({
    //    type: "get",
    //    url: "/assets/query/ajax/",
    //    data: str,
    //    success: function (data) {
    //        //var data = $.parseJSON(data);
    //        $('#dg').datagrid('loadData', data);
    //        if (data.total == '0') {
    //            $.messager.alert('提示', '没有检索到您要的数据！', 'info');
    //        }
    //    },
    //    error: function () {
    //        $.messager.alert('error', '加载错误，请重新尝试！', 'warning');
    //    }
    //});
}

// 加载display详情数据
function ajax_showDetail(id) {
    $.ajax({
        url: "/assets/query/showdetail/",
        data: {id: id},
        success: function (data) {
            $("#showhtml").html(data);
            $("#dlg").dialog({
                title: "资产编号:" + id + " — 详情",
            });
            $("#dlg").dialog('open');
        }
    });
}

// 初始化变更子表格datagrid
function loadchangetable() {
    $('#cdg').datagrid({
        rownumbers: true,
        singleSelect: true,
        height: 310,
        //nowrap: false,
        columns: [[
            {field: 'saction', title: '动作', width: 70, align: 'center', sortable: true},
            {field: 'sacceptDept', title: '领用部门', width: 100, align: 'center', sortable: true},
            {field: 'sacceptUser', title: '领用人', width: 70, align: 'center'},
            {field: 'suser', title: '使用人', width: 70, align: 'center'},
            {field: 'schangeDate', title: '变更(领用)日期', width: 100, align: 'center'},
            {field: 'slocation', title: '资产存放地', width: 100, align: 'center'},
            {field: 'sflag', title: '资产状态', width: 70, align: 'center'},
            {field: 'sreason', title: '变更(领用)原因', width: 120, align: 'center'},
            {field: 'scomment', title: '备注', width: 80, align: 'center'},
            {field: 'soperator', title: '操作人', width: 70, align: 'center'},
            {field: 'soperDate', title: '操作时间', width: 100, align: 'center'},
        ]],
    });
}

// 将变更明细数据载入datagrid
function ajax_showChangeDetail(id) {
    var t = "资产编号：" + id + " — 变更明细表";
    loadchangetable();
    $('#dlg2').window({title: t});
    $.ajax({
        url: "/assets/query/showchangedetail/",
        data: {id: id},
        success: function (data) {
            $('#cdg').datagrid('loadData', data);
        }
    });
}

// 判断上传的文件是否是指定图片格式
function isPicture(fileName) {
    if (fileName != null && fileName != "") {
        //lastIndexOf如果没有搜索到则返回为-1
        if (fileName.lastIndexOf(".") != -1) {
            var fileType = (fileName.substring(fileName.lastIndexOf(".") + 1, fileName.length)).toLowerCase();
            var suppotFile = new Array();
            suppotFile[0] = "jpg";
            suppotFile[1] = "gif";
            suppotFile[2] = "bmp";
            suppotFile[3] = "png";
            var flag = 0; //表示没有匹配类型
            for (var i = 0; i < suppotFile.length; i++) {
                if (suppotFile[i] == fileType) {
                    flag += 1;
                }
            }
            return flag;
        }
    }
}

// 初始化维修记录表
function loadRepairTable() {
    $('#repair_dg').datagrid({
        title: '维修记录数据表',
        singleSelect: true,
        rownumbers: true,
        pagination: true,
        height: get_dg_height(),
        pageSize: 30,
        pageList: [30, 50, 100],
        emptyMsg: '没有检索到您要的数据',
        showFooter: true,
        frozenColumns: [[
            {field: 'sid', title: '资产编号', width: 100, align: 'left', sortable: true},
            {field: 'sname', title: '资产名称', width: 100, align: 'left'},
            {field: 'smodel', title: '型号', width: 100, align: 'left'},
        ]],
        columns: [[
            {field: 'sdate', title: '维修日期', width: 100, align: 'center'},
            {field: 'sreason', title: '维修事由', width: 300, align: 'center'},
            {field: 'scontent', title: '维修内容', width: 300, align: 'center'},
            {field: 'soperator', title: '送修人', width: 100, align: 'center'},
            {field: 'sprice', title: '维修费用', width: 80, align: 'center'},
            {field: 'scomment', title: '备注', width: 150, align: 'center'},
        ]],
    });
}

// 初始化添加维修记录datagrid
function loadRepairID() {
    $('#fid').combogrid({
        toolbar: '#tb',
        panelWidth: 500,
        panelHeight: 260,
        rownumbers: true,
        singleSelect: true,
        fitColumns: true,
        idField: 'sid',
        textField: 'sid',
        columns: [[
            {field: 'sid', title: '资产编号', width: 100, align: 'left'},
            {field: 'sname', title: '资产名称', width: 100, align: 'left'},
            {field: 'sbrand', title: '品牌', width: 80, align: 'left'},
            {field: 'smodel', title: '型号', width: 100, align: 'left'},
            {field: 'sflag', title: '资产状态', width: 80, align: 'center'}
        ]],
    });
}


// 初始化用户表
function loadUserTable() {
    $('#user_dg').datagrid({
        title: '用户数据表',
        height: get_dg_height(),
        singleSelect: true,
        rownumbers: true,
        pagination: true,
        pageSize: 30,
        pageList: [30, 50, 100],
        emptyMsg: '没有检索到您要的数据',
        showFooter: true,
        columns: [[
            {field: 'ck', checkbox: true},
            {field: 'status', title: '账户状态', width: 80, align: 'center'},
            {field: 'account', title: '登录名', width: 150, align: 'center'},
            {field: 'username', title: '用户姓名', width: 150, align: 'center'},
            {field: 'dept', title: '所属部门', width: 200, align: 'center'},
            {field: 'position', title: '职务', width: 100, align: 'center'},
            {field: 'role', title: '角色组', width: 150, align: 'center'},
            {field: 'tel', title: '电话', width: 100, align: 'center'},
            {field: 'email', title: '邮箱', width: 200, align: 'center'},
            {field: 'lastlogin', title: '最近一次登录时间', width: 120, align: 'center'},
            {field: 'lastIP', title: '最近一次登录地址', width: 120, align: 'center'},
        ]],
        rowStyler: function (index, row) {
            if (row.status == '禁用') {
                return 'background-color:#bfbfbf';
            }
        },
        onSelect: function (index, row) {
            if (row.status == '禁用') {
                $('#disUserBtn').linkbutton('disable');
                $('#enUserBtn').linkbutton('enable');
            }
            else {
                $('#disUserBtn').linkbutton('enable');
                $('#enUserBtn').linkbutton('disable');
            }
        }
    });
}


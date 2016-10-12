$(function(){
    $("#div_top").css("height",get_page_height());

});


function get_page_height(){
    var h = (document.body.scrollHeight - 300)/2;
    return h;
}

function get_dg_height(){
    var h = document.body.scrollHeight-180  ;
    //var h=window.parent.frames["mainFrame"].document.getElementById("dg");
    //h.style.height="500px";
    return h;
}

// 文本长度
function valid_max_length(vid, max_length)
{
    var v = "#"+vid;
    $(v).textbox({
        onChange: function(n, o){
            if (n.length > max_length){
                $(v).textbox('setValue', n.substring(0,max_length));
            }
        }
    })
}

//手机号码验证
function valid_mobile(vid){
    var v = "#"+vid;
    var num = /^1\d{10}/;
    if (!num.test($(v).textbox('getValue'))){
        $.messager.alert('提示', '请输入正确的手机号码', 'warning');
        return;
    }
}

function valid_input_iddddd(vid)
{
    var v = "#"+vid;
    $(v).textbox({
        onChange: function(n, o){
            //var reg = /^[0-9a-zA-Z.-_#]+$/;
            var reg=/^[a-zA-Z]+$/;
            if (!reg.test(n)){
                $.messager.alert("","资产编号由首个字符为数字或字母、下划线、小数点、#、-组成",'error');
                //alert('12323');
            }
        }
    })
}



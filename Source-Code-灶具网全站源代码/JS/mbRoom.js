
///评论与转发链接的转换  显示与隐藏
function addAsk(content, id, val) {
    var divcon = document.getElementById("cona_" + id);
    var conts = document.getElementsByTagName("div");
    var tips = document.getElementById("divConta" + id);
    if (divcon.style.display != "none") {
	 
            divcon.style.display = "none";
            document.getElementById("txtAnswer" + id).focus();
		  document.getElementById("txtAnswer" + id).value = val;
            tips.innerHTML = "<font color='gray'>" + content + "</font>";
        }
 
    else {
 
        divcon.style.display = "";
        document.getElementById("txtAnswer" + id).focus();
        document.getElementById("txtAnswer" + id).value = val;
        tips.innerHTML = "<font color='gray'>" + content + "</font>";
    }
}

///添加回复
function GetAsk(obj) {
    var content = document.getElementById("txtAnswer" + obj).value;
    var divv = document.getElementById("cona_" + obj).style;
    if (content == "" || content == "") {
        alert("请输入回复信息");
    }
    else {
        ajax.get(
		"/t/DataCommon.aspx?oper=huiAsk&id=" + obj + "&con=" + encodeURI(content),
		function (obj) {
		    var res = obj.responseText;
		    if (res == "true") {
		        alert("回复成功！");
		        divv.display = "none";
		    }
		}
	);
    }
}

function delAsk(id, url) {   //删除
    ajax.get(
		"/t/DataCommon.aspx?oper=delAsk&id=" + id,
		function (obj) {
		    var res = obj.responseText;
		    if (res == "true") {
		        window.location.href = url;
		    }
		}
	);
}
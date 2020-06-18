var i=0;
function sdiv(istr){
 $$('Ajax_sInfo').style.top = 180;
$$('Ajax_Out').style.height=document.documentElement.scrollHeight;
 $$('Ajax_sInfo').style.left = (document.documentElement.clientWidth-800)/2;  

 //document.documentElement.clientWidth/2-(700/1.5)
if (istr){ 
Element.show("Ajax_Out");
Element.show("Ajax_sInfo");
if (i<60){
i=i+5;
//$$('Ajax_sInfo').style.top = document.documentElement.scrollTop+(i);
setTimeout("sdiv("+istr+");",0);
}else{ 
i=0;
}
}else{  
Element.hide("Ajax_Out");
Element.hide("Ajax_sInfo");
}
}

function goreg(url){   
 
sdiv(true);
$$('Ajax_sInfo').innerHTML='  <span class="aj_clost" onclick="sdiv(false)"></span> <table cellpadding="0" cellspacing="0" align=center style=" background:url(images/loading2.gif) no-repeat"><tr><td  align=center><iframe src="'+url+'" scrolling="no" width="490" height="430" frameborder="0" allowtransparency="true"></iframe></td></tr></table>';

}
//显示处理ajax的string
document.write("<div id='Ajax_Out' style=' display:none;'></div><div id='Ajax_sInfo'  style=' display:none;'></div>");

 
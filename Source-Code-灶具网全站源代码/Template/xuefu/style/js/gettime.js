
function gettime(id,time){ 
var today = new Date(); 
// todayw =today.getFullYear()+ "/"+(today.getMonth()+1)+"/"+today.getDate()+" "+today.getHours()+":"+today.getMinutes()+":"+today.getSeconds(); 
time=time.substring(20); 
var endtime = new Date(time.replace('-', '/')).getTime();
var timeold = endtime - today.getTime();
 var sectimeold = timeold / 1000;
 var secondsold = Math.floor(sectimeold);
secondsold = Math.floor(sectimeold);
msPerDay = 24 * 60 * 60 * 1000;
e_daysold = timeold / msPerDay;
daysold = Math.floor(e_daysold);   //结束时间的天数
e_hrsold = (e_daysold - daysold) * 24;
hrsold = Math.floor(e_hrsold);    //小时数
e_minsold = (e_hrsold - hrsold) * 60;
minsold = Math.floor((e_hrsold - hrsold) * 60);  //分数
seconds = Math.round((e_minsold - minsold) * 60);  //秒数	
if (daysold < 0 || (hrsold <= 0 && minsold <= 0 && seconds <= 0)) {   
document.getElementById("sytime"+ id).innerHTML='团购结束！';

if($(".focus") != null){
	$(".focus").text('抱歉，您来晚了，团购已经结束啦。'); 
	}
if($(".deal-price-buy") != null){ 
	$('.deal-price-buy').attr("className","deal-price-end") 
		}
		if($(".deal-timeleft") != null){ 
	$(".deal-timeleft").toggleClass("deal-off");
		} 
	
	$('.deal-buy-on').attr("className","deal-buy-success");
	$(".deal-buy-ended").text(time); 
}
 else {  
	if (hrsold < 10) { hrsold = "0" + hrsold }
	if (minsold < 10) { minsold = "0" + minsold }
	if (seconds < 10) { seconds = "0" + seconds }
	if (document.getElementById("sytime" + id) != null) {
		document.getElementById("sytime" + id).innerHTML = "剩余时间:<b> "+daysold+" </b>天<b> "+ hrsold +" </b>时<b> " + minsold + " </b>分<b> " + seconds + " </b>秒"; 
	} 
	if($(".deal-buy-ended") != null){ 
	$(".deal-buy-ended").text(daysold+" 天 "+ hrsold +"  时 " + minsold + " 分 " + seconds + " 秒");
		} 
	if($(".focus") != null){
	$(".focus").text('团购正在进行中，抓紧抢购吧！');
	}
} 
} 

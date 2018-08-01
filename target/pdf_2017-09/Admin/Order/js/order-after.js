var order_id=GetQueryString("order_id");
var user_id=GetQueryString("user_id");
var style=GetQueryString("style");
var printed=GetQueryString("printed");
var quantity=GetQueryString("quantity");
var client_name=GetQueryString("client_name");
var end_time=GetQueryString("end_time");
var order_time=GetQueryString("order_time");
var delivery_time=GetQueryString("delivery_time");
var explain=GetQueryString("explain");
var remark=GetQueryString("remark");
//alert(11111);
function GetQueryString(name)
{
     var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
     var r = window.location.search.substr(1).match(reg);
     if(r!=null)return  unescape(r[2]); return null;
}
$(function(){
	showOrderMessage();
});
/*修改订单*/
function afterOrder(){
	var client_name = $("#client_name").val();          //客户名称
	var date01 = $("#date01").val();     //接单时间
	var date03 = $("#date03").val(); //接单截止时间
	var date02 = $("#date02").val();  //交货时间
	var explain = $("#explain").val();//订单说明
	var remark = $("#remark").val(); //备注
	var quantity = $("#quantity").val();
	var style = $("#style").val();
	var printed = -1;
	if($("#printed")[0].checked){
		printed = 1;
	}else if($("#printed1")[0].checked){
		printed = 0;
	}
	if( client_name==""){
		alert("客户名称不能为空")
		return false;
	}
	if(explain==""){
		alert("订单说明不能为空")
		return false;	
	}
	if(style==""){
		alert("款式不能为空")
		return false;	
	}
	if( date02 =="" && date03==""&&date01 ==""){
		alert("交货时间、订单时间和订单生产截止时间不能为空")
		return;
	}
	var reg=/^\+?[1-9][0-9]*$/;	
	if(!reg.test($("#quantity").val())){
		alert("请输入正确的数字");
		return false;
	}
	if($(":radio:checked").length == 0 ){
		alert("未选择是否有印花");
		return;
	}
	var flag=0;
	$.ajax({
		type:"post",
		url:"../../order.jhtm?method=editOrder",
		datatype:"json",
		async:false,
		data:{
			order_id:order_id,
			user_id:user_id,
			style:style,
			printed:printed,
			quantity:quantity,
			client_name:client_name,
			end_time:date03,
			order_time:date01,
			delivery_time:date02,
			explain:explain,
			remark:remark,
			
		},
		success:function(json){
			//alert(json);
			console.log(json);
			if(json.result==flag){
				alert("修改失败");
			}else{
				alert("修改成功");
				parent.location.reload(); //刷新父窗口中的网页

				window.close();//关闭当前窗窗口
			}
	    	  
		}
	});
}
function showOrderMessage(){
//alert(1111111111)
	$("#client_name").val(client_name);          //客户名称
	$("#date01").val(order_time);     //接单时间
	$("#date03").val(end_time); //接单截止时间
	$("#date02").val(delivery_time);  //交货时间
	$("#explain").val(explain);//订单说明
	$("#remark").val(remark); //备注
	$("#quantity").val(quantity);
	$("#style").val(style);
	if(printed==1){
		$('input:radio[name="printed"]:checked').val();
	}else{
		$('input:radio[name="printed"]:checked').val();
	}
}
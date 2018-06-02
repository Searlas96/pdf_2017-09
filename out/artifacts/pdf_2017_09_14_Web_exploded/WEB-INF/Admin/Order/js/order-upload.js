/**
 * 
 */
var file_id = GetQueryString("file_id");
//alert(file_id);
function validate_form()
{
	   var path = document.getElementById("file_path").value;
       var pos1 = path.lastIndexOf("\\");
       var pos2 = path.lastIndexOf(".");
       var pos = path.substring(pos1 + 1, pos2);
       //alert(path.substring(pos1+1,pos2));
	if(pos!=file_id){
		alert("文件名不一样");
		return false;
	  }else{
		  return true;
	  }
}
function GetQueryString(name)
{
     var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
     var r = window.location.search.substr(1).match(reg);
     if(r!=null)return  unescape(r[2]); return null;
}
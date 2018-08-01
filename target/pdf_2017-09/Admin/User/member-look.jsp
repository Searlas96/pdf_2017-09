<%@ page import="com.pdf.entity.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
	User user = (User) request.getSession().getAttribute("user");
	
%>
<html>
<head>
<meta href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<LINK rel="Bookmark" href="/favicon.ico" >
<LINK rel="Shortcut Icon" href="/favicon.ico" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<script type="text/javascript" src="lib/PIE_IE678.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="<%=basePath%>Admin/Mode/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>Admin/Mode/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>Admin/Mode/lib/Hui-iconfont/1.0.7/iconfont.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>Admin/Mode/lib/icheck/icheck.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>Admin/Mode/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>Admin/Mode/static/h-ui.admin/css/style.css" />
<link rel="stylesheet" type="text/css" href="css/jquery.bigcolorpicker.css" />
<link rel="stylesheet" href="<%=basePath%>Admin/Mode/plugins/layui/css/layui.css" media="all" />

<!--[if IE 6]>
<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>用户修改¨</title>
<link href="../../Admin/Mode/lib/webuploader/0.1.5/webuploader.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="page-container">
	<form action="../../useredit.jhtm"   method="post" class="layui-form" target="no_flush" id="form-user-edit">
		<div class="layui-form-item" style="display:none">
			<label class="layui-form-label"><span style="color:red;font-size: 20px">*</span>用户编号</label>
			<div class="layui-input-inline">
				<input type="title" name="user_id"   class="layui-input" id="user_id"  readonly>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label"><span style="color:red;font-size: 20px">*</span>用户账号</label>
			<div class="layui-input-inline">
				<input type="title" name="account" lay-verify="required" autocomplete="off"  class="layui-input" id="account">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label"><span style="color:red;font-size: 20px">*</span>用户密码</label>
			<div class="layui-input-inline">
					<input type="title" name="password" lay-verify="required" autocomplete="off"  class="layui-input" id="password">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">用户邮箱</label>
			<div class="layui-input-inline">
					<input type="title" name="mail" class="layui-input" id="mail">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label"><span style="color:red;font-size: 20px">*</span>画笔颜色</label>
			<div class="layui-input-inline">
			    <input type="type" id="c1" name="color" lay-verify="required" autocomplete="off" style="line-height:34px;width:188px;"/>
			</div>
		</div> 
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label"><span style="color:red;font-size: 20px">*</span>用户昵称</label>
				<div class="layui-input-inline">
					<input type="title" name="nickname" lay-verify="required" autocomplete="off" class="layui-input" id="userNickname">
				</div>
			</div>
		</div>
		<div class="layui-form-item"  style="display:none">
			<div class="layui-inline">
				<label class="layui-form-label"><span style="color:red;font-size: 20px">*</span>用户角色</label>
				<div style="width:150px;margin-left:1px;float:left;">
				    <div class="layui-input-inline">
						<input type="title" name="role_id"   class="layui-input" id="role_id"  readonly>
					</div>
		   </div> 
			</div>
		</div>
		<div class="layui-form-item">
		    <label class="layui-form-label"><span style="color:red;font-size: 20px">*</span>用户性别</label>	 
		      <input id="male" type="radio" name="sex" value="1" title="男" checked="checked"/>
		      <input id="female" type="radio" name="sex" value="0" title="女"  />
		</div>
		<!-- 按钮-->		
				<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit="" lay-filter="demo1" id="submit">立即提交</button>
			</div>
		</div>
	</form>
	
	<iframe name="no_flush" style="display: none"></iframe>
	
</div>
<script type="text/javascript" src="<%=basePath%>Admin/Mode/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>Admin/Mode/lib/layer/2.1/layer.js"></script> 
<script type="text/javascript" src="<%=basePath%>Admin/Mode/plugins/layui/layui.js"></script>
<script type="text/javascript" src="<%=basePath%>Admin/Mode/plugins/layui/lay/modules/form.js"></script>
<script type="text/javascript" src="js/jquery-1.12.3.min.js"></script>
<script type="text/javascript" src="js/jquery.bigcolorpicker.min.js"></script>
<script type="text/javascript" src="<%=basePath%>Admin/Mode/lib/icheck/jquery.icheck.min.js"></script> 
<script type="text/javascript" src="<%=basePath%>Admin/Mode/lib/jquery.validation/1.14.0/jquery.validate.min.js"></script> 
<script type="text/javascript" src="<%=basePath%>Admin/Mode/lib/jquery.validation/1.14.0/validate-methods.js"></script> 
<script type="text/javascript" src="<%=basePath%>Admin/Mode/lib/jquery.validation/1.14.0/messages_zh.min.js"></script> 
<script type="text/javascript" src="<%=basePath%>Admin/Mode/static/h-ui/js/H-ui.js"></script> 
<script type="text/javascript" src="<%=basePath%>Admin/Mode/static/h-ui.admin/js/H-ui.admin.js"></script> 
<script type="text/javascript" src="js/member_edit.js"></script>
<script type="text/javascript">
var user_id ;
$(function(){
	$("#c1").bigColorpicker("c1");
	user_id = getUrlName("user_id");
	var role_id = getUrlName("role_id");
	//alert(user_id);alert(role_id)
	$("#user_id").val(user_id);
	$("#role_id").val(role_id);
});
//获得url参数
function getUrlName(name){
     var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
     var r = window.location.search.substr(1).match(reg);
     if(r!=null)return  unescape(r[2]); return null;
}


</script>
</body>
</html>
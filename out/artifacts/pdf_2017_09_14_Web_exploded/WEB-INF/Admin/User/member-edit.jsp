<%@ page import="com.pdf.entity.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
	User user = (User) request.getSession().getAttribute("user");
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<script type="text/javascript" src="Admin/User/edit.js"></script>

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
<script type="text/javascript" src="../../Admin/Mode//js/ajaxfileupload.js"></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<!--/meta 作为公共模版分离出去-->


<title>编辑页</title>
<link href="../../Admin/Mode/lib/webuploader/0.1.5/webuploader.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="page-container">
	<form action="../../useredit.jhtm"   method="post" class="layui-form" target="no_flush" id="form-user-edit">
		<div class="layui-form-item" style="display:none">
			<label class="layui-form-label"><span style="color:red;font-size: 20px">*</span>用户编号</label>
			<div class="layui-input-inline">
				<input type="title" name="user_id"  lay-verify="required" autocomplete="off" class="layui-input" id="user_id" value="<%=user.getUser_id() %>" readonly>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label"><span style="color:red;font-size: 20px">*</span>用户账号</label>
			<div class="layui-input-inline">
				<input type="title" name="account" lay-verify="required" autocomplete="off" class="layui-input" id="account">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label"><span style="color:red;font-size: 20px">*</span>用户密码</label>
			<div class="layui-input-inline">
					<input type="title" name="password" lay-verify="required" autocomplete="off" class="layui-input" id="password">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">用户邮箱</label>
			<div class="layui-input-inline">
					<input type="title" name="mail"  autocomplete="off" class="layui-input" id="mail">
			</div>
		</div>
		<!-- <div class="layui-form-item">
			<label class="layui-form-label">用户状态</label>
			<div class="layui-input-inline">
					<input type="title" name="user_state" lay-verify="required" autocomplete="off" class="layui-input" id="user_state"  value="1" readonly>
			</div>
		</div> -->
		<div class="layui-form-item">
			<label class="layui-form-label"><span style="color:red;font-size: 20px">*</span>画笔颜色</label>
			<div class="layui-input-inline">
			    <input type="type" id="c1" name="color" lay-verify="required" style="line-height:34px;width:188px;"/>
			</div>
			
			<!-- <div class="layui-input-inline">
					<input type="title" name="color" lay-verify="required" autocomplete="off" class="layui-input" id="color">
			</div> -->
		</div> 
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label"><span style="color:red;font-size: 20px">*</span>用户昵称</label>
				<div class="layui-input-inline">
					<input type="title" name="nickname" lay-verify="required" autocomplete="off" class="layui-input" id="userNickname">
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label"><span style="color:red;font-size: 20px">*</span>用户角色</label>
				<div style="width:150px;margin-left:1px;float:left;">
		      <select name="role_id" id="selectAge"> 
		            <option value="<%=user.getRole_id() %>"></option>
			        <option value="1">录入员</option>   
			        <option value="2">编辑员</option>   
			        <option value="3">管理员</option>             
			        <option value="4">普通用户</option>             
     		  </select>
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
				<button type="reset" class="layui-btn layui-btn-primary">重置</button>
			</div>
		</div>
	</form>
	
	<iframe name="no_flush" style="display: none"></iframe>
	
</div>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="<%=basePath%>Admin/Mode/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>Admin/Mode/lib/layer/2.1/layer.js"></script> 
<script type="text/javascript" src="<%=basePath%>Admin/Mode/plugins/layui/layui.js"></script>
<script type="text/javascript" src="js/jquery-1.12.3.min.js"></script>
<script type="text/javascript" src="js/jquery.bigcolorpicker.min.js"></script>
<script type="text/javascript" src="<%=basePath%>Admin/Mode/plugins/layui/lay/modules/form.js"></script>
<script type="text/javascript" src="<%=basePath%>Admin/Mode/lib/icheck/jquery.icheck.min.js"></script> 
<script type="text/javascript" src="<%=basePath%>Admin/Mode/lib/jquery.validation/1.14.0/jquery.validate.min.js"></script> 
<script type="text/javascript" src="<%=basePath%>Admin/Mode/lib/jquery.validation/1.14.0/validate-methods.js"></script> 
<script type="text/javascript" src="<%=basePath%>Admin/Mode/lib/jquery.validation/1.14.0/messages_zh.min.js"></script> 
<script type="text/javascript" src="<%=basePath%>Admin/Mode/static/h-ui/js/H-ui.js"></script> 
<script type="text/javascript" src="<%=basePath%>Admin/Mode/static/h-ui.admin/js/H-ui.admin.js"></script> 
<script type="text/javascript" src="js/member_edit.js"></script>
<!--/_footer /作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript">
var user_id ;
$(function(){
	$("#c1").bigColorpicker("c1");
	user_id = getUrlName("user_id");
	//alert(user_id)
	$("#user_id").val(user_id);
	//document.getElementById('user_id').value=user_id;
	//$("#user_state").val(1);
	 /* $("#resubmit").click(function(){
		 $("input[name='account']").val();
		 $("input[ name='password']").val();
		 $("input[ name='mail']").val();
		 $("input[ name='color']").val();
		 $("input[ name='nickname']").val();
	}) */
/* 	//让当前表单调用validate方法，实验表单颜证功能
	$("#form-user-edit").validate({
		debug:true, //调试模式，计时谭政成功也不会跳转目标页面
		//onkeyup:null, //当丢失焦点时才触发验证请求
		rules:{  //配置验证规则，key就是被验证的dom对象，value就是调用验证的方法
			nickname:{
				required:true,  //必填。如果验证方法不需要参数，则配置为true
                rangelength:[2,15],
                remote:{
                    url:"../../useredit.jthm",
                    type:"post"
                }
			},
			password:{
				required:true,
				rangelength:[6,12]
			},
			/* sex:{
				required:true,
			}, */
			/* account:{
				required:true,
			},
			color:{
				required:true,
			},
			/* mail:{
				 required:true,
                 email:true
			}, */
			/*role_id:{
				required:true,
			}
			
		},
		messages:{
			nickname:{
                required:"请输入用户名",
                rangelength:$.validator.format("用户名长度在必须为：{2}-{15}之间"),
                remote:"该用户名已存在！"
            },
            password:{
                required:"请输入密码",
                rangelength:$.validator.format("字段长度必须为：{6}-{12}之间")
            },*/
            /* sex:{
            	required:"请选择性别",
            }, */
            /*account:{
            	required:"请输入账号"
            },
            color:{
            	required:"请选择画笔颜色"
            },*/
           /*  mail:{
                required:"请填写邮件",
                email:"邮箱格式不正确"
            }, */
           /* role_id:{
                required:"请选择角色"
            }
        }
    }); */
});
//获得url参数
function getUrlName(name){
     var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
     var r = window.location.search.substr(1).match(reg);
     if(r!=null)return  unescape(r[2]); return null;
}
/* 
function validate_required(field,alerttxt)
{onSubmit="return validate_form(this)"
  with (field)
  {
 	if (value==null||value==""){	
	  field.setAttribute('class', 'asd');
      return false;
   	}
  	else {return true;window.location.reload();}
  }
}

function validate_form(thisform)
{
with (thisform)
{
  var flag = 0;

  if (validate_required(userNickname,"userNickname must be filled out!")==false){
		alert("用户昵称能为空!");
		flag = 1;
  }
  if (validate_required(password,"password must be filled out!")==false){
		alert("密码不能为空!");
		flag = 1;
  }
  if (validate_required(account,"account must be filled out!")==false){
		alert("账号不能为空!");
		flag = 1;
  }
/*   if (validate_required(mail,"mail must be filled out!")==false){
		alert("邮箱不能为空!");
		flag = 1;
  } */
 /* if (validate_required(role_id,"role_id must be filled out!")==false){
		alert("请选择用户角色!");
		flag = 1;
  }
  if(flag == 1) {
	  return false;
  } else {
	  return true;
  }
 }
} */
</script>
</body>
</html>
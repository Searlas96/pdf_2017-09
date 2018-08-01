<%@page import="com.pdf.entity.File" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
    String file_id = request.getParameter("file_id");
    String file_path = request.getParameter("file_path");
   // int locked=GetQueryString("locked");
    File file=new File();
    int locked=file.getLocked();
%>
<!DOCTYPE HTML>
<html>
<head>
<meta href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<LINK rel="Bookmark" href="/favicon.ico" >
<LINK rel="Shortcut Icon" href="/favicon.ico" />
<!--[if lt IE 9]>
<script type="text/javascript" src="../../Admin/Mode/lib/html5.js"></script>
<script type="text/javascript" src="../../Admin/Mode/lib/respond.min.js"></script>
<script type="text/javascript" src="../../Admin/Mode/lib/PIE_IE678.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="../../Admin/Mode/static/h-ui/css/H-ui.min.css" /> 
<link rel="stylesheet" type="text/css" href="../../Admin/Mode/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="../../Admin/Mode/lib/Hui-iconfont/1.0.7/iconfont.css" />
<link rel="stylesheet" type="text/css" href="../../Admin/Mode/lib/icheck/icheck.css" />
<link rel="stylesheet" type="text/css" href="../../Admin/Mode/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="../../Admin/Mode/static/h-ui.admin/css/style.css" />
<link rel="stylesheet" href="../../Admin/Mode/plugins/layui/css/layui.css" media="all" />
<link type="text/css" rel="stylesheet" href="jedate/skin/jedate.css">
<!--[if IE 6]>
<script type="text/javascript" src="../../Admin/Mode/lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>上传 </title>
<meta name="keywords" content="H-ui.admin v2.3,H-ui">
<meta name="description" content="H-ui.admin v2.3">
</head>
<body>
<article class="page-container">
	<form class="form form-horizontal" action="../../fileupload.jhtm" enctype="multipart/form-data"  method="post" onSubmit="return validate_form()" id="order-upload" >
		  <div class="piv">			
			   <span>当前文件:<b><%=file_path %></b></span>
		 </div>
		 <div class="piv-1" >
			 <input class="" id="file_path" type="file" accept="application/pdf" name="file_path" />
		</div>
		 <div class="piv-2">
			<input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;上传 &nbsp;&nbsp;">
		</div>
	</form>	
</article>

<!--_footer--> 
<script type="text/javascript" src="../../Admin/Mode/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="../../Admin/Mode/lib/layer/2.1/layer.js"></script> 
<script type="text/javascript" src="../../Admin/Mode/plugins/layui/layui.js"></script>
<script type="text/javascript" src="../../Admin/Mode/plugins/layui/lay/modules/form.js"></script>
<script type="text/javascript" src="../../Admin/Mode/lib/icheck/jquery.icheck.min.js"></script> 
<script type="text/javascript" src="js/order-upload.js"></script>
<script type="text/javascript" src="../../Admin/Mode/lib/jquery.validation/1.14.0/jquery.validate.min.js"></script> 
<script type="text/javascript" src="../../Admin/Mode/lib/jquery.validation/1.14.0/validate-methods.js"></script> 
<script type="text/javascript" src="../../Admin/Mode/lib/jquery.validation/1.14.0/messages_zh.min.js"></script> 
<script type="text/javascript" src="../../Admin/Mode/static/h-ui/js/H-ui.js"></script> 
<script type="text/javascript" src="../../Admin/Mode/static/h-ui.admin/js/H-ui.admin.js"></script>


<!--/_footer /--> 

</body>
</html>
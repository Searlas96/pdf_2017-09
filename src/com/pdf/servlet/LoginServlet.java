package com.pdf.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.pdf.entity.User;
import com.pdf.service.UserService;
import com.pdf.serviceImpl.UserServiceImpl;



@SuppressWarnings("serial")
public class LoginServlet extends BaseServlet{
	private static UserService userInstance = UserServiceImpl.getInstance();
	
	public void login() throws IOException{
		String account = getReqParam("account");
		String password = getReqParam("password");
		User user = new User(account, password);
		user = userInstance.Login(user);
		System.out.println(user);
        JSONObject jsonObject = new JSONObject();
		if(user != null){
			System.out.println("--------userId----"+user.getUser_id());
			
			HttpSession session = request.getSession();
			if (session.getAttribute("user") != null)
    			session.removeAttribute("user");
			session.setAttribute("user", user);
			jsonObject.put("user_id", user.getUser_id());
			jsonObject.put("result", "登陆成功");
			jsonObject.put("flag", 1);
			System.out.println("success");
			jsonObject.put("data",JSON.toJSON(user));
		}else{
			jsonObject.put("result", "用户名/密码错误或用户不存在");
			jsonObject.put("flag", 0);
			System.out.println("fail");
		}
		output(jsonObject);
	}
	@SuppressWarnings("rawtypes")
	public void logout(HttpServletRequest request,HttpServletResponse response) throws IOException{
		System.out.println("Servlet-logout");
//		boolean flag = true;
		Enumeration em = request.getSession().getAttributeNames();
	    while(em.hasMoreElements()){
	    	request.getSession().removeAttribute(em.nextElement().toString());
	    }
	    response.sendRedirect("/pdf_2017-09-14/Admin/Login/login.jsp");
//	    PrintWriter out = response.getWriter();
//	    out.print(flag);
//	    out.flush();
//	    out.close();
	}

	
}

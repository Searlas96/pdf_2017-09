package com.pdf.servlet;

import com.alibaba.fastjson.JSONObject;
import com.google.gson.JsonObject;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Method;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public abstract class BaseServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected HttpServletRequest request;

	protected HttpServletResponse response;
       
    public BaseServlet() {
        super();
    }

    /**
     * 通过反射来实现动态方法的调用
     */
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
	    response.setContentType("text/html;charset=utf-8");
	    this.request = request;
	    this.response = response;
		String method = request.getParameter("method");
		System.out.println(method);
		if(method == null || method.trim().isEmpty()) {
			
	        throw new RuntimeException("您没有传递method参数！无法确定您想要调用的方法！");
	    }

		try {
			Method func = this.getClass().getMethod(method);
			System.out.println("访问servlet---"+this.getClass().getName());
			func.invoke(this);
		} catch (Exception e) {
			throw new RuntimeException(e);
		} 
	}

	protected String getReqParam(String key) {
	    return request.getParameter(key);
    }

	protected void output(JSONObject json) {
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}
		out.println(json);
		out.flush();
		out.close();
	}
}

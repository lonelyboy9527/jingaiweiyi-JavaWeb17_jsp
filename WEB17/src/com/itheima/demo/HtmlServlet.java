package com.itheima.demo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HtmlServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public HtmlServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		
		PrintWriter writer = response.getWriter();
		//动态响应html页面
		writer.write("<!DOCTYPE html>");
		writer.write("<html>");
		writer.write("<head>");
		writer.write("<meta charset='UTF-8'>");
		writer.write("<title>Insert title here</title>");
		writer.write("</head>");
		writer.write("<body>");
		writer.write("<h1>哈啊哈，第一个，这个页面很蛋疼<h1>");
		writer.write("</body>");
		writer.write("</html>");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);

	}
}

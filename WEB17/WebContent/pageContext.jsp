<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		//使用pageContext向request域存东西
		request.setAttribute("name", "zhangsan");
		
		pageContext.setAttribute("name", "xixi");									// 向pageContext域写
		pageContext.setAttribute("name", "lisi", PageContext.REQUEST_SCOPE); 		// 向request域写
		pageContext.setAttribute("name", "wangwu", PageContext.SESSION_SCOPE);		// 向session域写
		pageContext.setAttribute("name", "tianqi", PageContext.APPLICATION_SCOPE);	// 向servlet域写
	
	%>
	
	<%=request.getAttribute("name")%>
	<%=pageContext.getAttribute("name", PageContext.REQUEST_SCOPE)%>
	<%=pageContext.getAttribute("name", PageContext.SESSION_SCOPE)%>
	<%=pageContext.getAttribute("name", PageContext.APPLICATION_SCOPE)%>
	
	<!-- findAttribute从所有域寻找，范围从小到大搜索域范围中name，找到了就停止 -->
	<!-- page域<request<session<servlet -->
	<%=pageContext.findAttribute("name")%>
	
	
	<%
		//获得其他8大内置对象 ...
		pageContext.getRequest();
		pageContext.getResponse();
		pageContext.getOut();
		
		
	
	%>
	
	
</body>
</html>
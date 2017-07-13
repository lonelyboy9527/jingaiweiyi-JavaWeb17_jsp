<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="/error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%@ include file="/demo.jsp" %>

	<!-- html的注释 -->
	<%  
		//单行注释
		int i = 10;
		/*
			多行注释
		*/
		System.out.println(i);
	
		//int j = 1/0; //会跳转到errorPage
	%>	
	<%-- jsp注释 --%>
	<%=1+1 %>
	
	<%!
		String str = "nihao haha";
	%>
	<%=str %>
	<h1>aadjfasd</h1>
</body>
</html>
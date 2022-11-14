<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl_03_choose</title>
</head>
<body>
	<%
		int avg = 85;
	
		if(avg >= 90)
			out.print("A");
		else if (avg >= 80)
			out.print("B");
		else if (avg >= 70)
			out.print("C");
		else if (avg >= 60)
			out.print("D");
		else
			out.print("F");
	%>
</body>
</html>
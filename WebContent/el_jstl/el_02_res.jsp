<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el_02_res.jspe</title>
</head>
<body>
<!-- data=홍길동&chk=서울&chk=부산 -->

<% // scriptlet (스크립트 기호 <% )
	//getParameter : 하나의 값만 넘어올때
	String data = request.getParameter("data");
	out.print("<p>" + data + "</p>");
%>

<p> <%=data%> </p> <!-- 표현식 -->

<p> ${param.data} </p>

<%
	//getParameterValues : 여러개의 값이 넘어올때
	String[] chk = request.getParameterValues("chk");
	if(chk != null){
		for(String sn : chk)
			out.print("<p>" + sn + "</p>");
	}
%>

<p>${paramValues.chk[0]}</p>
<p>${paramValues.chk[1]}</p>
<p>${paramValues.chk[2]}</p>

</body>
</html>
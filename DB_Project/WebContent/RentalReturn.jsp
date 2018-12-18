<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ page import="DB.DB" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String flag = request.getParameter("flag");
		String bid = request.getParameter("bid");
		String msg ="";
		
		if(flag.equals("0")) {
			//flag = 0은 대여의 경우
			if(session.getAttribute("userID") == null) {
				System.out.println(session.getAttribute("userID"));
				msg = "./search.jsp?msg=notlogin";			
			}
			else {
				DB db = new DB();
				int result = db.rental((String)session.getAttribute("userID"), bid);
				if(result == -1) {
					msg = "./search.jsp?msg=duplicate";
				}
				else {
					msg = "./search.jsp?msg=rentalsuccess";
				}
			}
		}
		else {
			//flag = 1은 반납의 경우
			DB db = new DB();
			db.returnto((String)session.getAttribute("userID"), bid);
			msg = "./myPage.jsp?msg=returnsuccess";
		}
		
		response.sendRedirect(msg);
	%>
</body>
</html>
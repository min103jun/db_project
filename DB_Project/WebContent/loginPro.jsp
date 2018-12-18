<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="DB.DB" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Data.userInfo" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>login</title>
</head>
<body>
	<%
		//request.setCharacterEncoding("euc=kr"); 
		
		String id= request.getParameter("id");
	    String pw = request.getParameter("password");
	    
	    DB db = new DB();
		int success = db.login(id, pw);
		
		String msg = "";
		
		if(success == 1) {
			session.setAttribute("userID", id);
			ArrayList<userInfo> result = db.savesession(id);
			session.setAttribute("userName", result.get(0).getName());
			session.setAttribute("userMail", result.get(0).getMail());
			msg = "./index.jsp";
		}
		else {
			msg = "./login.jsp?msg=error";
		}
		
		response.sendRedirect(msg);
	%>
</body>
</html>
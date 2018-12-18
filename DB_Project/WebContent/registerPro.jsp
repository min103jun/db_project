<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>

<%@ page import="DB.DB" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta charset="UTF-8">
<script type="text/javascript" src="registerPro.jsp" charset="UTF-8"></script>
<html>
<head>
<title>register</title>
</head>
<body>
	<%
			
			String id= request.getParameter("id");
			String name = request.getParameter("name");
			if(name != null) 
				name = new String(name.getBytes("8859_1"), "UTF-8");
			String mail = request.getParameter("mail");
		    String pw = request.getParameter("password");
		    
			DB db = new DB();
			int success = db.register(id, name, mail, pw);
			
			String msg = "";
			
			if(success == 1) {
				msg = "./login.jsp?";
			}
			else {
				msg = "./register.jsp?msg=error";	
			}
			
			response.sendRedirect(msg);
	%>
</body>
</html>
<%@ page language="java" import="employee.Employee,employee.EmployeeDAO" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

int id = Integer.parseInt(request.getParameter("id"));
int status = EmployeeDAO.delete(id);
if(status!=0){
	response.sendRedirect("EmployeeList.jsp");
}

%>
</body>
</html>
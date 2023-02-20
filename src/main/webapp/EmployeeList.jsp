<%@ page language="java" import="com.employee.Employee,com.employee.EmployeeDAO,java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

for(Employee e:(List<Employee>)EmployeeDAO.getAllEmployee())
{
	out.println(e.getFname()+" "+e.getLname()+"<br>");
}
%>
</body>
</html>
<%@ page language="java" import="employee.Employee,employee.EmployeeDAO" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<input name ="fullName" type="text">
<%


String fName=request.getParameter("fName");
String lName=request.getParameter("lName");
//int id=Integer.parseInt(request.getParameter("id"));
String FullName = request.getParameter("fullName");
Employee e = new Employee();
if((List<Employee>)EmployeeDAO.search()==e.getFName()){
	response.sendRedirect("EmployeeList.jsp");
}

%>
</body>
</html>
<%@ page language="java" import="employee.Employee,employee.EmployeeDAO,java.util.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

</head>
<body>
<%
out.print("<table align='center' class='table bg-warning'><tr><th>First Name</th><th>Last Name</th><th>City</th><th>Country</th></tr>");
for(Employee e:(List<Employee>)EmployeeDAO.getAllEmployee())
{
	out.print("<tr>");
	out.println("<td>"+e.getFName()+"</td><td> "+e.getLName()+"</td><td> "+e.getCity()+"</td><td>"+e.getCountry()+"</td>");
	out.print("<td><a class='btn btn-danger' href='delete.jsp?id="+e.getId()+"'>Delete</a></td>");
	out.print("<td><a class='btn btn-warning' href='update.jsp?id="+e.getId()+"'>Update</a></td>");
	out.print("</tr>");
}
out.print("</table>");
%>
<a href="index.jsp">Home Page</a>
</body>
</html>
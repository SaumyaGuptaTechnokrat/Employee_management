<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="Mystyle.css">

</head>
<body>
<h1>Employee Management App</h1>
<div class="form_container">
<form action="addRecord.jsp" method="post" >
	
		<p>First Name:</p><input name="fName" type="text"><br>
		<p>Last Name:</p><input name="lName" type="text"><br>
		<p>Age:</p><input name="age" type="number"><br>
		<p>Gender:</p>
		<label>Male:</label><input name="Gender" type="radio" value="M">
		<label>Female:</label><input type="radio" name="Gender" value="F"> 
		<p>Salary:</p><input name="salary" type="text"><br>
		<p>DOJ:</p><input name="Doj" placeholder="YYYY-MM-DD" type="text"><br>
		<p>City:</p><input name="City" type="text"><br>
		<p>Country:</p><select name="Country">
		<option value="US">US<option/>
		<option value="India">INDIA<option/>
		<option value="UK">UK<option/>
		<option value="JAPAN">JAPAN<option/>
		</select>
		<br>
		 <input type="submit" id="Submit" value="Save">
</form>
</div>

</body>
</html>
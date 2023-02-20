package com.employee;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

public class EmployeeDAO {

	public static int save(Employee e) throws ClassNotFoundException, SQLException {
		
		Connection con=ConnectionProvider.getConnection();
		PreparedStatement ps=con.prepareStatement("insert into `employee`(`first_name`,`last_name`,`age`,`gender`,`salary`,`doj`,`country`,`city`,`dep`) values(?,?,?,?,?,?,?,?,?);");
		ps.setString(1, e.getFname());
		ps.setString(2, e.getLname());
		ps.setInt(3, e.getAge());
		ps.setString(4, e.getGender());
		ps.setFloat(5, e.getSalary());
		ps.setString(6, e.getDoj());
		ps.setString(7, e.getCountry());
		ps.setString(8, e.getCity());
		ps.setString(9, e.getDepartment());
		
		
		int status=ps.executeUpdate();
		return status;
	}
	
	
	public static List<Employee> getAllEmployee() throws ClassNotFoundException, SQLException
	{
		
		List<Employee> empList=new ArrayList<Employee>();
		Connection con=ConnectionProvider.getConnection();
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("select * from employee;");
		
		while(rs.next())
		{
			
			Employee e=new Employee();
			e.setId(rs.getInt("emp_id"));
			e.setFname(rs.getString("first_name"));
			e.setLname(rs.getString("last_name"));
			e.setAge(rs.getInt("age"));
			e.setGender(rs.getString("gender"));
			e.setDoj(rs.getString("doj"));
			e.setCountry(rs.getString("country"));
			e.setCity(rs.getString("city"));
			e.setDepartment(rs.getString("dep"));
			
			empList.add(e);
			
		}
		
		return empList;
	}
	
	
	public static void main(String args[]) throws ClassNotFoundException, SQLException {
		Employee e=new Employee("ajay","kumar",24,"M",45000,"2023-02-08","India","Lucknow","IT");
		
		  int status=EmployeeDAO.save(e);
		
	}
	
}

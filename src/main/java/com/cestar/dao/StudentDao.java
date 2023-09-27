package com.cestar.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.cestar.model.Student;

public class StudentDao {
	
	public Connection setupConnection() {
		Connection con = null;
		
		String url = "jdbc:mysql://localhost:3306/Student_Form" ;//Connection string
		String user = "root"; // username
		String pwd = "" ;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, user, pwd);
			System.out.println("Connection successful");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return con;
		
	}
	public int insertRec(Student info_from_form_data) {
		
		int status = 0;
		// Get the connection by calling the method setUpConnection
		Connection con = setupConnection();
		//Write the SQL string needed
		String sql = "insert into Student (name, email, password) values (?, ?, ?)";
		// for query with ?, we use prepared statements to set the values for ? marks
		
		try {
			
			PreparedStatement pstmt = con.prepareStatement(sql);
			//Use setter methods to set the values of the ? marks
	
			pstmt.setString(1, info_from_form_data.getName());
			pstmt.setString(2, info_from_form_data.getEmail());
			pstmt.setString(3, info_from_form_data.getPassword());
			
			
			//After setting values for ?, we use executeUpdate method
			status = pstmt.executeUpdate();
			if (status > 0) {
				System.out.println("record inserted sucessfully");
			}
			else {
				System.out.println("record not inserted sucessfully");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
		
	}
	
	public Student getRecord(String email_to_get) {
	    Student std_to_get = null;
	    Connection con = setupConnection();

	    String sql = "SELECT * FROM student WHERE email = ?";

	    PreparedStatement pstmt;
	    try {
	        pstmt = con.prepareStatement(sql);
	        pstmt.setString(1, email_to_get); // Set the email address as the parameter
	        ResultSet rs = pstmt.executeQuery();
	        if (rs.next()) {
	        	std_to_get = new Student(rs.getString("name"), rs.getString("email"), rs.getString("password"));

	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return std_to_get;
	}


}

package com.cestar.model;

public class Student {
	private String name;
	private String email;
	private String password;
	
	// Getters and Setters method
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Student(String name, String email, String password) {
	
	
		this.name = name;
		this.email = email;
		this.password = password;
	}
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	

	
	//A toString method
	@Override
	public String toString() {
		return "Student [ name=" + name + "\n]";
	}
	
		
		

}

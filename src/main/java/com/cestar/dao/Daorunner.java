package com.cestar.dao;


import com.cestar.model.Student;

public class Daorunner {
	
		
		//To test the EmpDao class

		public static void main(String[] args) {
			// TODO Auto-generated method stub
			StudentDao obj = new StudentDao();
			obj.setupConnection();
			
			Student std = new Student("Ola", "ola@gmail.com", "Ola123");
			
			obj.insertRec(std);
//			obj.displayRec();
		}

	


}

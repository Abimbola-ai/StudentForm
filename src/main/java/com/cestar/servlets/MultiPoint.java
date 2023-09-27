package com.cestar.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cestar.dao.StudentDao;
import com.cestar.model.Student;

/**
 * Servlet implementation class MultiPoint
 */
@WebServlet("/")
public class MultiPoint extends HttpServlet {
	private static final long serialVersionUID = 1L;
	StudentDao dao = new StudentDao();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MultiPoint() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		//Create a url to access the servlet
		String url = request.getServletPath();
		
		switch(url) {
		
		case "/signin":{
			signin(request, response);
			break;
		}
		
		case "/welcome":{
			welcome(request, response);
			break;
		}
		


		}
		

		
	}

	
    protected void welcome(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String userEmail = (String) session.getAttribute("userEmail");
        System.out.println("User Email from Session: " + userEmail);

        if (userEmail != null) {
            // Create a StudentDao instance and use it to retrieve the student data
            
            Student student = dao.getRecord(userEmail);
            System.out.println(student);

            // Set the student's name attribute in the request
            request.setAttribute("userName", student.getName());

            // Forward the request to the request.jsp page
            request.getRequestDispatcher("register.jsp").forward(request, response);
        } else {
            // Handle the case where userEmail is not found in the session (e.g., user not signed in)
            // Redirect to an appropriate page or show an error message
        }
    }


	private void signin(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String name = request.getParameter("inputname");
		String email = request.getParameter("inputemail");
		String password = request.getParameter("inputpassword");
		
		Student info_from_form_data = new Student(name, email, password);
		StudentDao obj = new StudentDao();
		int result = obj.insertRec(info_from_form_data);
		HttpSession session = request.getSession();
		session.setAttribute("userEmail", email);
		try {
			welcome(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

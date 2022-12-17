package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.student.DatabaseStudent;
import com.studentdatabase.StudentInfo;

/**
 * Servlet implementation class InsertController
 */
@WebServlet("/InsertController")
public class InsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String stId = request.getParameter("id");
		String stName = request.getParameter("name");
		Integer stYear = Integer.parseInt(request.getParameter("year"));
		Double stCgp = Double.parseDouble(request.getParameter("cgp"));
		StudentInfo st = new StudentInfo(stId,stName,stYear,stCgp);
		try {
			DatabaseStudent.saveStudent(st);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.getRequestDispatcher("Insertsubmit.jsp").include(request,response);
		
		
	}

}

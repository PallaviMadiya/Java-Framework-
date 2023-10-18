package controller;

import java.io.File;
import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dao.StudentDao;
import model.Standard;
import model.Student;

/**
 * Servlet implementation class StudentController
 */
@WebServlet("/StudentController")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 512, maxFileSize = 1024 * 1024 * 512, maxRequestSize = 1024 * 1024 * 512)
public class StudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		System.out.println("Action: "+action);
		if(action.equalsIgnoreCase("register")) {
			String savePath = "D:\\eclipse-workspace5\\StudentApplication\\src\\main\\webapp\\img";
			File fileSaveDir = new File(savePath);
			if (!fileSaveDir.exists()) {
				fileSaveDir.mkdir();
			}
			Part file1 = request.getPart("image");
			String fileName = extractfilename(file1);
			file1.write(savePath + File.separator + fileName);
			String filePath = savePath + File.separator + fileName;
	
			String savePath2 = "D:\\eclipse-workspace5\\StudentApplication\\src\\main\\webapp\\img";
			File imgSaveDir = new File(savePath2);
			if (!imgSaveDir.exists()) {
				imgSaveDir.mkdir();
			}
			
			Student s = new Student();
			s.setId(Integer.parseInt(request.getParameter("id")));
			s.setFname(request.getParameter("fname"));
			s.setLname(request.getParameter("lname"));
			s.setDob(request.getParameter("dob"));
			s.setImage(fileName);
			String date = LocalDate.now().toString();
			System.out.println(date);
			s.setCreatedDate(date);
			String sts = "inactive";
			s.setStatus(sts);
			StudentDao.addStudent(s);
			response.sendRedirect("index.jsp");
			
		}
		
		else if(action.equalsIgnoreCase("addStandard")) {
			Standard s = new Standard();
			s.setName(request.getParameter("name"));
			s.setStatus(request.getParameter("status"));
			
			StudentDao.addStandard(s);
			response.sendRedirect("standard.jsp");
		}
	}

	String extractfilename(Part part) {
	    final String partHeader = part.getHeader("content-disposition");
	    for (String content : part.getHeader("content-disposition").split(";")) {
	        if (content.trim().startsWith("filename")) {
	            return content.substring(
	                    content.indexOf('=') + 1).trim().replace("\"", "");
	        }
	    }
	    return null;   
	}  
}

package project.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import project.service.ProjectService;
import project.vo.Project;

/**
 * Servlet implementation class ProjectFindServlet
 */
@WebServlet("/pfind")
public class ProjectFindServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProjectFindServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String pcode=request.getParameter("pcode");
		String what=request.getParameter("what");
		
		Project project=new ProjectService().projectFind(pcode,what);		
		
		if(project!=null) 
		{
			RequestDispatcher view=request.getRequestDispatcher("/Floracion/views/project.jsp");
			request.setAttribute("project", project);
			view.forward(request, response);
		}
		else 
		{
			System.out.println("여기 안오길 빌어라");
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

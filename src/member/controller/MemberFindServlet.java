package member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.service.MemberService;
import member.vo.Member;

/**
 * Servlet implementation class MemberFindServlet
 */
@WebServlet("/mfind")
public class MemberFindServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberFindServlet() {
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
		String email=request.getParameter("email");
		String radio=request.getParameter("radio");
		
		Member member=new MemberService().findMember(email,radio);
		System.out.println(member);
		RequestDispatcher view=null;
		
		if(member!=null) 
		{
			view=request.getRequestDispatcher("/views/Member/editSign.jsp");
			
			request.setAttribute("member", member);
			view.forward(request, response);
		}
		else 
		{
			view=request.getRequestDispatcher("/views/Member/signIn.jsp");
			
			request.setAttribute("email", email);
			view.forward(request, response);			
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

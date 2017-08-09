package member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.service.MemberService;
import member.vo.Member;

/**
 * Servlet implementation class MemberLeaveServlet
 */
@WebServlet("/mleave")
public class MemberLeaveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberLeaveServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("text/html; charset=utf-8");
		
		HttpSession session=request.getSession();
				
		Member member=(Member) session.getAttribute("member");
		
		int result=new MemberService().choiceLeaveMember(member);
		
		System.out.println(new MemberService().findMember(member.getEmail(), member.getMbcode().substring(0, 1)));
		
		if(result>=1) 
		{
			session.setAttribute("member", new MemberService().findMember(member.getEmail(), member.getMbcode().substring(0, 1)));
			response.sendRedirect("/Floracion/views/Member/editSign.jsp?leave='t'");
		}
		else 
		{
			System.out.println("과연 여기 올까...?");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		doGet(request, response);
	}

}

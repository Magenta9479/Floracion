package member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.json.simple.JSONObject;
import member.service.MemberService;
import member.vo.Bloomer;
import member.vo.Member;



/**
 * Servlet implementation class MemberLoginServlet
 */
@WebServlet("/mlogin")
public class MemberLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static int login=0;
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MemberLoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		login++;
		String radio = request.getParameter("radio");
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		Member member = new MemberService().login(email, pwd,radio);
		HttpSession session = request.getSession();
		if(login>3)login=1;
		if (member != null) {
			session.setAttribute("member", member);
			// 메인 페이지가 세션에서 member 객체 퍼가기, bloomer인지 honeybee인지 instanceof로 구분하기
			response.sendRedirect("/Floracion/main.jsp");
		} else {
			response.sendRedirect("/Floracion/views/Member/logIn.jsp?login="+login);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

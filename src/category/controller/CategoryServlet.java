package category.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import category.vo.Category;

/**
 * Servlet implementation class CategoryServlet
 */
@WebServlet("/cservlet")
public class CategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CategoryServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		int num = Integer.parseInt(request.getParameter("num"));
		String cateName;
		String cateVideo;
		String cateCont1;
		String cateCont2;

		switch (num) {
		// 예술
		case 1:
			cateName = "Art";
			cateVideo = "C://Users//Magenta//git//Floracion//web//img/art.mp4";
			cateCont1 = "내용1";
			cateCont2 = "내용2";
			Category cat = new Category();
			cat.setCateName(cateName);
			break;
		// 출판
		case 2:
			break;
		// 디자인
		case 3:
			break;
		// 패션
		case 4:
			break;
		// 자기계발
		case 5:
			break;
		// 전문기술
		case 6:
			break;
		// 운동
		case 7:
			break;
		// 기술
		case 8:
			break;
		// 게임
		case 9:
			break;
		// 여행
		case 10:
			break;
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

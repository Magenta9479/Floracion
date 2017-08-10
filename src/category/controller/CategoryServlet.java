package category.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import category.vo.Category;
import project.service.ProjectService;
import project.vo.Project;

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
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		ArrayList<Project> pbList = new ArrayList<Project>();
		int num = Integer.parseInt(request.getParameter("num"));
		RequestDispatcher view = null;
		Category cat = null;
		String cateName;
		String cateVideo;
		String cateCont1;
		String cateCont2;

		switch (num) {
		// 예술
		case 1:
			cateName = "Art";
			cateVideo = "C://Users//Magenta//git//Floracion//web//img/art.mp4";
			cateCont1 = "느닷없이 어느 날, 자기 자신이 마땅치 않고 타인에게 짜증나며,<br>" + "무엇 하나 마음에 차는 게 없을 때가 누구에게나 있는 법이다.\n"
					+ "예술도 그것과 조금도 다를 바 없다. 기분이 나쁠 때엔 조급해 하지 \n" + "말 일이다. 충만이나 힘이 도망가지 않는다. 나쁠 때에 흠뻑 쉬어\n"
					+ "놓으면 좋을 때엔 한층 더 좋아지는 법이다. -괴테";
			cateCont2 = "예술적 작품을 창조하기 위해서는 역동적인 힘이 있어야 하는데 \n" + "거기에 사랑보다 더 큰 영향력이 있는 힘은 없다. -이골 스트라빈스키";
			cat = new Category();
			cat.setCateName(cateName);
			cat.setCateVideo(cateVideo);
			cat.setCateCont1(cateCont1);
			cat.setCateCont2(cateCont2);
			pbList = new ProjectService().selectCatList(1, num);


			view = request.getRequestDispatcher("/views/category/sub_category.jsp");

			request.setAttribute("pbList", pbList);
			request.setAttribute("category", cat);
			view.forward(request, response);
			break;
		// 출판
		case 2:
			cateName = "Publishing";
			cateVideo = "C://Users//Magenta//git//Floracion//web//img/art.mp4";
			cateCont1 = "사람은 책을 만들고 책은 사람을 만든다. - 신용호";
			cateCont2 = "독서는 정신적으로 충실한 사람을 만든다.\n" + "사색은 사려깊은 사람을 만든다.\n" + "그리고 논술은 확실한 사람을 만든다. - 벤자민 플랭클린";
			cat = new Category();
			cat.setCateName(cateName);
			cat.setCateVideo(cateVideo);
			cat.setCateCont1(cateCont1);
			cat.setCateCont2(cateCont2);
			pbList = new ProjectService().selectCatList(1, num);

			view = request.getRequestDispatcher("/views/category/sub_category.jsp");

			request.setAttribute("pbList", pbList);
			request.setAttribute("category", cat);
			view.forward(request, response);
			break;
		// 디자인
		case 3:
			cateName = "Design";
			cateVideo = "C://Users//Magenta//git//Floracion//web//img/art.mp4";
			cateCont1 = "너무 기발한 디자인보다는 집중하는 디자인이 좋은 디자인이다. - 재스퍼 모리슨";
			cateCont2 = "예술적 작품을 창조하기 위해서는 역동적인 힘이 있어야 하는데 \n" + "제대로 적용된 디자인은 우리 삶의 질을 높이고 직업을 만들어내며\n"
					+ "사람들을 행복하게 만든다.";
			cat = new Category();
			cat.setCateName(cateName);
			cat.setCateVideo(cateVideo);
			cat.setCateCont1(cateCont1);
			cat.setCateCont2(cateCont2);
			pbList = new ProjectService().selectCatList(1, num);

			view = request.getRequestDispatcher("/views/category/sub_category.jsp");

			request.setAttribute("pbList", pbList);
			request.setAttribute("category", cat);
			view.forward(request, response);
		// 패션
		case 4:
			cateName = "Fashion";
			cateVideo = "C://Users//Magenta//git//Floracion//web//img/art.mp4";
			cateCont1 = "내가 곧 스타일이다.\n" + "패션은 지나가도, 스타일은 남는다. - COCO CHANEL";
			cateCont2 = "패션은 느낌입니다.\n" + "이유가 있어선 안되죠 - Christian Dior";
			cat = new Category();
			cat.setCateName(cateName);
			cat.setCateVideo(cateVideo);
			cat.setCateCont1(cateCont1);
			cat.setCateCont2(cateCont2);
			pbList = new ProjectService().selectCatList(1, num);

			view = request.getRequestDispatcher("/views/category/sub_category.jsp");

			request.setAttribute("pbList", pbList);
			request.setAttribute("category", cat);
			view.forward(request, response);
		// 자기계발
		case 5:
			cateName = "Self Improvement";
			cateVideo = "C://Users//Magenta//git//Floracion//web//img/art.mp4";
			cateCont1 = "당신이 할 수 있다고 생각하든 할 수 없다고 생각하든, 당신의 생각은 옳다. - 헨리포드";
			cateCont2 = "중요한 것은 목표를 이루는 것이 아니라, \n" + "그 과정에서 무엇을 배우며 얼마나 성장하느냐이다. - 앤드류 매튜스";
			cat = new Category();
			cat.setCateName(cateName);
			cat.setCateVideo(cateVideo);
			cat.setCateCont1(cateCont1);
			cat.setCateCont2(cateCont2);
			pbList = new ProjectService().selectCatList(1, num);

			view = request.getRequestDispatcher("/views/category/sub_category.jsp");

			request.setAttribute("pbList", pbList);
			request.setAttribute("category", cat);
			view.forward(request, response);
		// 전문기술
		case 6:
			cateName = "Craftmanship";
			cateVideo = "C://Users//Magenta//git//Floracion//web//img/art.mp4";
			cateCont1 = "나는 추론 능력을 가진 수학자는 거의 보지 못 했다. -Platon";
			cateCont2 = "기술의 진보는 마치 병적인 범죄자의 손에 든 도끼와 같다 - Albert Einstein";
			cat = new Category();
			cat.setCateName(cateName);
			cat.setCateVideo(cateVideo);
			cat.setCateCont1(cateCont1);
			cat.setCateCont2(cateCont2);
			pbList = new ProjectService().selectCatList(1, num);

			view = request.getRequestDispatcher("/views/category/sub_category.jsp");

			request.setAttribute("pbList", pbList);
			request.setAttribute("category", cat);
			view.forward(request, response);
		// 운동
		case 7:
			cateName = "Sports";
			cateVideo = "C://Users//Magenta//git//Floracion//web//img/art.mp4";
			cateCont1 = "간단합니다.흔들리면 그것은 지방입니다 - 아놀드 슈왈제네거";
			cateCont2 = "당신이 스쿼트를 하지 않는다면,\n" + "당신은 결코 자신의 무한한 잠재력에 도달할 수 없다 - 폴 앤더슨";
			cat = new Category();
			cat.setCateName(cateName);
			cat.setCateVideo(cateVideo);
			cat.setCateCont1(cateCont1);
			cat.setCateCont2(cateCont2);
			pbList = new ProjectService().selectCatList(1, num);

			view = request.getRequestDispatcher("/views/category/sub_category.jsp");

			request.setAttribute("pbList", pbList);
			request.setAttribute("category", cat);
			view.forward(request, response);
		// 기술
		case 8:
			cateName = "Tech";
			cateVideo = "C://Users//Magenta//git//Floracion//web//img/art.mp4";
			cateCont1 = "가장 어려운 기술은 살아가는 기술이다 - 메이지";
			cateCont2 = "윈도우를 버리지 못하겠으면 컴퓨터를 절대 신뢰하지 말아라. -스티브 워즈니악";
			cat = new Category();
			cat.setCateName(cateName);
			cat.setCateVideo(cateVideo);
			cat.setCateCont1(cateCont1);
			cat.setCateCont2(cateCont2);
			pbList = new ProjectService().selectCatList(1, num);

			view = request.getRequestDispatcher("/views/category/sub_category.jsp");

			request.setAttribute("pbList", pbList);
			request.setAttribute("category", cat);
			view.forward(request, response);
		// 게임
		case 9:
			cateName = "Game";
			cateVideo = "C://Users//Magenta//git//Floracion//web//img/art.mp4";
			cateCont1 = "진실은 아무것도 없으며, 모든것이 허용된다. - 어쌔신크리드";
			cateCont2 = "예창의성에서 가장 중요한 것은 불확실에 대해 도전하는 것입니다. - 빌로퍼(디아블로, 스타크래프트 개발자)";
			cat = new Category();
			cat.setCateName(cateName);
			cat.setCateVideo(cateVideo);
			cat.setCateCont1(cateCont1);
			cat.setCateCont2(cateCont2);
			pbList = new ProjectService().selectCatList(1, num);
			view = request.getRequestDispatcher("/views/category/sub_category.jsp");

			request.setAttribute("pbList", pbList);
			request.setAttribute("category", cat);
			view.forward(request, response);
		// 여행
		case 10:
			cateName = "Travel";
			cateVideo = "C://Users//Magenta//git//Floracion//web//img/art.mp4";
			cateCont1 = "단지 도착만을 하기 위한 여행이라면 그 여행은 불쌍한 여행이다. - 아서 콜턴";
			cateCont2 = "예술적 작품을 창조하기 위해서는 역동적인 힘이 있어야 하는데\n" + "거기에 사랑보다 더 큰 영향력이 있는 힘은 없다. -이골 스트라빈스키";
			cat = new Category();
			cat.setCateName(cateName);
			cat.setCateVideo(cateVideo);
			cat.setCateCont1(cateCont1);
			cat.setCateCont2(cateCont2);
			pbList = new ProjectService().selectCatList(1, num);
			view = request.getRequestDispatcher("/views/category/sub_category.jsp");

			request.setAttribute("pbList", pbList);
			request.setAttribute("category", cat);
			view.forward(request, response);
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

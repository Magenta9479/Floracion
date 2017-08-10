package project.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import javafx.application.Application;
import member.service.MemberService;
import member.vo.Member;
import project.service.ProjectBriefService;
import project.service.ProjectService;
import project.vo.Project;
import project.vo.ProjectBrief;

/**
 * Servlet implementation class Project_create
 */
@WebServlet("/pcreate")
public class Project_create extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Project_create() {
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
		response.setContentType("text/html; charset=utf-8");
		System.out.println("서블릿 접속");
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("member");
		int result = 0;
		int result2 = 0;
		String pCode="";
		String path = "C://Users//Magenta//Desktop//Buen-camino//web//uploadFile//" + member.getMbcode();
		File dir = new File(path);
		if (!dir.exists()) {
			dir.mkdirs();
		} else {
			for (int i = 1; i < 100; i++) {
				String path2 = path + i;
				dir = new File(path);
				if (!dir.exists()) {
					dir.mkdirs();
					break;
				}
			}
		}
		int maxSize = 1024 * 1024 * 10;
		String encType = "UTF-8";
		MultipartRequest multipartRequest = new MultipartRequest(request, path, maxSize, encType,
				new DefaultFileRenamePolicy());
		String name = multipartRequest.getParameter("pName");
		System.out.println(name);
		String content = multipartRequest.getParameter("pText");
		String sDate = multipartRequest.getParameter("pSDate");
		String eDate = multipartRequest.getParameter("pEDate");
		int gMoney = Integer.parseInt(multipartRequest.getParameter("pGMoney"));
		String pCategory = multipartRequest.getParameter("category");
		System.out.println("multipartRequest 가져오기 성공");

		Project project = new Project();
		project.setName(name);
		project.setContent(content);
		project.setLeader(member.getMbcode());
		project.setStart(java.sql.Date.valueOf(sDate));
		project.setEnd(java.sql.Date.valueOf(eDate));
		project.setgMoney(gMoney);
		project.setCategory(pCategory);

		result = new ProjectService().insetProject(project);

		String pImg = multipartRequest.getFilesystemName("pImage");
		String pVideo = multipartRequest.getFilesystemName("pVideo");

		File imgFile = multipartRequest.getFile("pImg");
		File videoFile = multipartRequest.getFile("pVideo");

		ProjectBrief projectBrief = new ProjectBrief();
		projectBrief.setContent(content);
		projectBrief.setMainImage(pImg);
		projectBrief.setMainVideo(pVideo);

		pCode = new ProjectService().getPCode();
		
		String mbCode = member.getMbcode();
		int result3 = new ProjectService().insertParList(pCode,mbCode);
		
		result2 = new ProjectBriefService().insertProjectBrief(projectBrief,pCode);

		if (result != 0 && result2 != 0) {
			response.sendRedirect("/Floracion/main.jsp?id=1&num=1");
		} else {
			System.out.println("실패다!!");
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

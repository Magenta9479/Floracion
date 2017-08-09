package board.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import board.service.BoardService;
import board.vo.Board;

/**
 * Servlet implementation class FreeBoardListServlet
 */
@WebServlet("/flist")
public class FreeBoardListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FreeBoardListServlet() {
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
		
		int page=Integer.parseInt(request.getParameter("page"));
		
		ArrayList<Board> list =new  BoardService().fboardList(page);
		
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray(); 	
		
		for(Board b:list){ 		
			//한 사람의 정보를 저장할 json 객체 	
			JSONObject job = new JSONObject(); 	
			job.put("bcode", b.getBcode()); 	
			job.put("pcode", b.getPcode()); 	
			job.put("writer", b.getWriter()); 	
			
			//json에서 한글 깨짐을 막으려면, java.net.URLEncoder 클래스의 encode() 메소드로 인코딩 처리 	
			job.put("title", URLEncoder.encode(b.getTitle() , "UTF-8").replace('+',' '));
			job.put("content", URLEncoder.encode(b.getContent() , "UTF-8"));
			job.put("ndate", b.getNdate().toString()); 
			
			jarr.add(job);
	    }

	    json.put("list", jarr);
	   
	    response.setContentType("application/json"); 
	    PrintWriter out = response.getWriter();
	    out.print(json.toJSONString());
	    out.flush();
	    out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

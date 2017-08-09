package board.service;

import java.sql.Connection;
import java.util.ArrayList;

import board.dao.BoardDao;
import board.vo.Board;
import static common.JDBCTemplate.*;

public class BoardService 
{

	public ArrayList<Board> noticeList(int page)
	{
		Connection con=getConnection();

		ArrayList<Board> list=new BoardDao().noticeList(con,page);
		
		close(con);
		return list;
	}

	public ArrayList<Board> fboardList(int page)
	{
		Connection con=getConnection();

		ArrayList<Board> list=new BoardDao().fboardList(con,page);
		
		close(con);
		return list;
	}
	
}

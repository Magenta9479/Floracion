package board.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import board.vo.Board;

public class BoardDao 
{

	public ArrayList<Board> noticeList(Connection con, int page) 
	{
		ArrayList<Board> list=new ArrayList<Board>();
		
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		
		String query="SELECT * \n" + 
				"FROM (SELECT T.*,ROWNUM\n" + 
				"FROM (SELECT * FROM CONNOTICE ORDER BY NDATE) T)\n" + 
				"WHERE ROWNUM BETWEEN ? AND ?";
		
		try 
		{
			pstmt=con.prepareStatement(query);
			pstmt.setInt(1, page);
			pstmt.setInt(2, page+9);
			
			rset=pstmt.executeQuery();
			while(rset.next()) 
			{
				Board board=new Board();
				board.setBcode(rset.getString("BCODE"));
				board.setPcode(rset.getString("PCODE"));
				board.setTitle(rset.getString("TITLE"));
				board.setContent(rset.getString("CONTENT"));
				board.setNdate(rset.getDate("NDATE"));
				board.setWriter(rset.getString("WRITER"));
				
				list.add(board);
			}
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		
		
		return list;
	}

	public ArrayList<Board> fboardList(Connection con, int page) 
	{
ArrayList<Board> list=new ArrayList<Board>();
		
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		
		String query="SELECT * \n" + 
				"FROM (SELECT T.*,ROWNUM\n" + 
				"FROM (SELECT * FROM CONNOTICE ORDER BY NDATE) T)\n" + 
				"WHERE ROWNUM BETWEEN ? AND ?";
		
		try 
		{
			pstmt=con.prepareStatement(query);
			pstmt.setInt(1, page);
			pstmt.setInt(2, page+9);
			
			rset=pstmt.executeQuery();
			while(rset.next()) 
			{
				Board board=new Board();
				board.setBcode(rset.getString("BCODE"));
				board.setPcode(rset.getString("PCODE"));
				board.setTitle(rset.getString("TITLE"));
				board.setContent(rset.getString("CONTENT"));
				board.setNdate(rset.getDate("NDATE"));
				board.setWriter(rset.getString("WRITER"));
				
				list.add(board);
			}
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		
		
		return list;
	}

}

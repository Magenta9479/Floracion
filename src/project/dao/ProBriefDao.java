package project.dao;

import static common.JDBCTemplate.close;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import project.vo.ProjectBrief;

public class ProBriefDao 
{

	public int insertProjectBrief(Connection con, ProjectBrief projectBrief, String pCode) {
		System.out.println("Project DAO 접속 성공");
		int result = 0;
		PreparedStatement pstmt = null;
		String query = null;

		try {
			query = "INSERT INTO PLANBRIEF VALUES(?,?,?,null,null,null,null,?,null,null)";

			pstmt = con.prepareStatement(query);
			pstmt.setString(1, pCode);
			pstmt.setString(2, projectBrief.getContent());
			pstmt.setString(3, projectBrief.getMainImage());
			pstmt.setString(4, projectBrief.getMainVideo());

			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("프로젝트 INSERT 실패");ㅇ
		} finally {
			close(pstmt);
		}
		return result;
	}

	public ArrayList<ProjectBrief> selectList(Connection con) {
		
		ResultSet rset = null;
		Statement stmt = null;
		String query = "SELECT "
		return null;
	}

}

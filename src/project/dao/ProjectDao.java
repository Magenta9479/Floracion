package project.dao;

import static common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import member.vo.Bloomer;
import project.vo.Project;

public class ProjectDao {

	public int insertProject(Connection con, Project project) {
		// TODO Auto-generated method stub
		System.out.println("Project DAO 접속 성공");
		int result = 0;
		PreparedStatement pstmt = null;
		String query = null;

		try {
			query = "INSERT INTO PLANPROJECT VALUES(PROJECTCODE('1'),?,?,?,?,?,null,?,?,?)";

			pstmt = con.prepareStatement(query);
			pstmt.setString(1, project.getName());
			pstmt.setString(2, project.getContent());
			pstmt.setDate(3, project.getStart());
			pstmt.setDate(4, project.getEnd());
			pstmt.setInt(5, project.getgMoney());
			pstmt.setString(6, project.getLeader());
			pstmt.setString(7, "N");
			pstmt.setString(8, project.getCategory());

			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("프로젝트 INSERT 실패");
		} finally {
			close(pstmt);
		}
		return result;
	}

	public String getPCode(Connection con) {
		// TODO Auto-generated method stub
		String PCode=null;
		System.out.println("Project DAO 접속 성공");
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "select PCODE from (SELECT * FROM PLANPROJECT order by PCODE DESC) WHERE ROWNUM = 1";
		ResultSet rset = null;
		try {
			pstmt = con.prepareStatement(query);
			rset = pstmt.executeQuery();
			
			if (rset.next()) {
				PCode = rset.getString("PCODE");
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("프로젝트 PCODE 불러오기 실패");
		} finally {
			close(pstmt);
		}
		return PCode;
	}
}

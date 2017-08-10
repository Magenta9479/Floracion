package project.dao;

import static common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import member.vo.Bloomer;
import project.vo.Project;
import project.vo.ProjectBrief;

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
		String PCode = null;
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

	public ArrayList<Project> selectList(Connection con, int num) {
		ArrayList<Project> pbList = new ArrayList<Project>();
		Project project = null;
		ResultSet rset = null;
		Statement stmt = null;
		String query = null;
		if (num == 1) // 예정 프로젝트
		{
			query = "select PLANPROJECT.PCODE,NAME, PLANPROJECT.CONTENT, CMONEY,GMONEY,MAINIMAGE, LEADCODE, CATEGORY "
					+ "FROM PLANPROJECT " + "INNER JOIN PLANBRIEF " + "ON PLANPROJECT.PCODE = PLANBRIEF.PCODE";
		} else if (num == 2) // 진행 프로젝트
		{
			query = "select CONPROJECT.PCODE,NAME, CONPROJECT.CONTENT, CMONEY,GMONEY,MAINIMAGE, LEADCODE, CATEGORY "
					+ "FROM CONPROJECT " + "INNER JOIN CONBRIEF " + "ON CONPROJECT.PCODE = CONBRIEF.PCODE";
		} else // 종료 프로젝트
		{
			query = "select ENDPROJECT.PCODE,NAME, ENDPROJECT.CONTENT, CMONEY,GMONEY,MAINIMAGE,LEADCODE, CATEGORY "
					+ "FROM ENDPROJECT " + "INNER JOIN ENDBRIEF " + "ON ENDPROJECT.PCODE = ENDBRIEF.PCODE";
		}
		try {

			stmt = con.createStatement();
			rset = stmt.executeQuery(query);

			while (rset.next()) {
				project = new Project();
				project.setPcode(rset.getString("PCODE"));
				project.setName(rset.getString("NAME"));
				project.setContent(rset.getString("CONTENT"));
				project.setcMoney(rset.getInt("CMONEY"));
				project.setgMoney(rset.getInt("GMONEY"));
				project.setMainImage(rset.getString("MAINIMAGE"));
				project.setLeader(rset.getString("LEADCODE"));
				project.setCategory(rset.getString("CATEGORY"));

				if (num == 1) // 예정 프로젝트
				{
					project.setWhat("P");
				} else if (num == 2) // 진행 프로젝트
				{
					project.setWhat("C");
				} else // 종료 프로젝트
				{
					project.setWhat("E");
				}

				pbList.add(project);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				// rset.close();
				close(rset);
				// stmt.close();
				close(stmt);

			} catch (Exception e) {
				e.printStackTrace();
			}

		}
		return pbList;
	}

	public Project projectFind(Connection con, String pcode, String what) {
		Project project = null;
		PreparedStatement pstmt = null;
		ResultSet rset1 = null;
		ResultSet rset2 = null;
		String query1 = null;
		String query2 = null;

		if (what.equals("C")) {
			query1 = "SELECT * FROM CONPROJECT WHERE PCODE=?";
			query2 = "SELECT * FROM CONBRIEF WHERE PCODE=?";
		} else if (what.equals("P")) {
			query1 = "SELECT * FROM PLANPROJECT WHERE PCODE=?";
			query2 = "SELECT * FROM PLANBRIEF WHERE PCODE=?";
		} else {
			query1 = "SELECT * FROM ENDPROJECT WHERE PCODE=?";
			query2 = "SELECT * FROM ENDBRIEF WHERE PCODE=?";
		}

		try {
			pstmt = con.prepareStatement(query1);
			pstmt.setString(1, pcode);

			rset1 = pstmt.executeQuery();

			pstmt = con.prepareStatement(query2);
			pstmt.setString(1, pcode);

			rset2 = pstmt.executeQuery();

			if (rset1.next() && rset2.next()) {
				project = new Project();
				project.setPcode(rset1.getString("PCODE"));
				project.setName(rset1.getString("NAME"));
				project.setContent(rset1.getString("CONTENT"));
				project.setStart(rset1.getDate("SDATE"));
				project.setEnd(rset1.getDate("EDATE"));
				project.setgMoney(rset1.getInt("GMONEY"));
				project.setcMoney(rset1.getInt("CMONEY"));
				project.setPermit(rset1.getString("PERMIT"));
				project.setLeader(rset1.getString("LEADCODE"));
				project.setCategory(rset1.getString("CATEGORY"));

				project.setContent2(rset2.getString("CONTENT"));
				project.setMainImage(rset2.getString("MAINIMAGE"));
				project.setImage1(rset2.getString("IMAGE1"));
				project.setImage2(rset2.getString("IMAGE2"));
				project.setImage3(rset2.getString("IMAGE3"));
				project.setImage4(rset2.getString("IMAGE4"));
				project.setMainVideo(rset2.getString("MAINVIDEO"));
				project.setVideo1(rset2.getString("VIDEO1"));
				project.setVideo2(rset2.getString("VIDEO2"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return project;
	}

	public int insertParList(Connection con, String pCode, String mbCode) {
		// TODO Auto-generated method stub
		int result3 = 0;
		PreparedStatement pstmt = null;
		String query = "INSERT INTO PLANPARLIST VALUES(?,?)";

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, pCode);
			pstmt.setString(2, mbCode);
			result3 = pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("멤버 참여 실패!");
			e.printStackTrace();
		} finally {
			try {
				close(pstmt);
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return result3;
	}

	public Boolean selectParList(Connection con, String mbCode) {
		// TODO Auto-generated method stub
		Boolean flag = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "select * from (select * from PLANPARLIST UNION  select * from CONPARLIST) where MCODE=?";
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, mbCode);
			rset = pstmt.executeQuery();
			if (rset.next())
				flag = true;
			else
				flag = false;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				close(rset);
				close(pstmt);
			} catch (Exception e2) {
			}
		}
		return flag;
	}
}

package project.service;

import java.sql.Connection;
import java.util.ArrayList;

import static common.JDBCTemplate.*;

import project.dao.ProBriefDao;
import project.dao.ProjectDao;
import project.vo.Project;
import project.vo.ProjectBrief;

public class ProjectService {

	public int insetProject(Project project) {
		// TODO Auto-generated method stub
		int result = 0;
		System.out.println("프로젝트 서비스 접속 성공");
		Connection con = getConnection();

		result = new ProjectDao().insertProject(con, project);

		if (result > 0)
			commit(con);
		else
			rollback(con);

		close(con);

		return result;
	}

	public String getPCode() {
		// TODO Auto-generated method stub
		String pCode = "";
		Connection con = getConnection();

		pCode = new ProjectDao().getPCode(con);

		return pCode;
	}

	public ArrayList<Project> selectList(int num) {
		ArrayList<Project> pbList = null;
		Connection con = getConnection();

		pbList = new ProjectDao().selectList(con,num);
		close(con);

		return pbList;
	}

	public Project projectFind(String pcode, String what) {
		Project project = null;

		Connection con = getConnection();

		project = new ProjectDao().projectFind(con, pcode, what);

		close(con);
		return project;
	}

	public int insertParList(String pCode, String mbCode) {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		int result3 = new ProjectDao().insertParList(con,pCode,mbCode);
		close(con);
		return result3;
	}

	public Boolean selectParList(String mbCode) {
		// TODO Auto-generated method stub
		Boolean flag = null;
		Connection con = getConnection();
		flag = new ProjectDao().selectParList(con, mbCode);
		close(con);
		return flag;
	}
}

package project.service;

import java.sql.Connection;
import java.util.ArrayList;

import static common.JDBCTemplate.*;

import project.dao.ProBriefDao;
import project.dao.ProjectDao;
import project.vo.ProjectBrief;

public class ProjectBriefService {

	public int insertProjectBrief(ProjectBrief projectBrief, String pCode) {
		// TODO Auto-generated method stub
		int result = 0;
		Connection con = getConnection();

		result = new ProBriefDao().insertProjectBrief(con, projectBrief,pCode);

		if (result > 0)
			commit(con);
		else
			rollback(con);

		close(con);

		return result;
	}

	public ArrayList<ProjectBrief> selectList() {
		// TODO Auto-generated method stub
		ArrayList<ProjectBrief>pbList = null;
		Connection con = getConnection();
		
		pbList = new ProBriefDao().selectList(con);
		
		return null;
	}

}

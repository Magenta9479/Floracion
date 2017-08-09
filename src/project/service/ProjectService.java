package project.service;

import java.sql.Connection;
import static common.JDBCTemplate.*;

import project.dao.ProjectDao;
import project.vo.Project;

public class ProjectService 
{

	public int insetProject(Project project) {
		// TODO Auto-generated method stub
		int result = 0;

		Connection con = getConnection();
		
		result = new ProjectDao().insertProject(con, project);
		
		if(result>0)commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}

	public String getPCode() {
		// TODO Auto-generated method stub
		String pCode="";
		
		Connection con = getConnection();
		
		pCode = new ProjectDao().getPCode(con);
		
		return pCode;
	}

	public Project projectFind(String pcode, String what)
	{
		Project project=null;
		
		Connection con=getConnection();
		
		project=new ProjectDao().projectFind(con,pcode,what);
		
		close(con);
		return project;
	}

}

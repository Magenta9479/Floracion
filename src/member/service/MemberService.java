package member.service;

import member.dao.MemberDao;
import member.vo.Member;
import static common.JDBCTemplate.*;

import java.sql.*;

public class MemberService 
{
	public int insertMember(Member member) 
	{
		int result=0;

		Connection con=getConnection();
		
		result=new MemberDao().insertMember(con,member);
		
		if(result>0)commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}

	public Member login(String email, String pwd, String radio)
	{
		System.out.println("!!!!");
		Member member=null;
		System.out.println("radio in service : "+radio);
		Connection con=getConnection();
		
		member=new MemberDao().login(con,email,pwd,radio);
		
		close(con);
		System.out.println("!!!!");
		return member;
	}

	public Member findMember(String email, String radio)
	{
		Member member=null;
		
		Connection con=getConnection();
		
		member=new MemberDao().findMember(con,email,radio);
		
		close(con);
		
		return member;
	}

	public int editMember(String email, String psw, String nick, String phone, char c) 
	{
		int result=0;

		Connection con=getConnection();
		
		result=new MemberDao().editMember(con,email,psw,nick,phone,c);
		System.out.println("result in service"+result);
		
		if(result>0) {commit(con);System.out.println("@!@@@");}		
		else rollback(con);
		
		close(con);
		
		return result;
	}

	public int insertCate(Member member, String cate1, String cate2, String cate3) 
	{
		int result=0;

		Connection con=getConnection();
		
		result=new MemberDao().insertCate(con,member,cate1,cate2,cate3);
		
		if(result>0)commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}
	
}

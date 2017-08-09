package member.dao;

import java.sql.*;

import member.vo.*;

import static common.JDBCTemplate.*;

public class MemberDao {
	public MemberDao() {
	}

	public int insertMember(Connection con, Member member) {
		int result = -1;
		PreparedStatement pstmt = null;
		String query = null;

		try {
			if (member instanceof Bloomer) {
				Bloomer b = (Bloomer) member;

				query = "INSERT INTO BLOOMER VALUES(MemberCode('B'),?,?,?,?,NULL,SYSDATE,NULL,?,?,?)";

				pstmt = con.prepareStatement(query);
				pstmt.setString(1, b.getEmail());
				pstmt.setString(2, b.getPwd());
				pstmt.setString(3, b.getNick());
				pstmt.setString(4, b.getPhone());
				pstmt.setString(5, b.getCategory1());
				pstmt.setString(6, b.getCategory2());
				pstmt.setString(7, b.getCategory3());

				result = pstmt.executeUpdate();
			} else {
				HoneyBee h = (HoneyBee) member;
				query = "INSERT INTO HONEYBEE VALUES(MemberCode('H'),?,?,?,?,SYSDATE,NULL,?,?,?)";

				pstmt = con.prepareStatement(query);
				pstmt.setString(1, h.getEmail());
				pstmt.setString(2, h.getPwd());
				pstmt.setString(3, h.getNick());
				pstmt.setString(4, h.getPhone());
				pstmt.setString(5, h.getCategory1());
				pstmt.setString(6, h.getCategory2());
				pstmt.setString(7, h.getCategory3());

				result = pstmt.executeUpdate();
			}
		} catch (Exception e) {// 오류 나는 조건은 이메일 중복뿐
								// System.out.println(e.getMessage());
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}

	public int updateMember(Member member) {
		int result = -1;
		PreparedStatement pstmt = null;
		String query = null;

		Connection con = getConnection();
		try {
			if (member instanceof Bloomer) {
				query = "UPDATE BLOOMER SET PWD=?,PHONE=? WHERE MBCODE=?";

				pstmt = con.prepareStatement(query);
				pstmt.setString(1, member.getPwd());
				pstmt.setString(2, member.getPhone());
				pstmt.setString(3, member.getMbcode());

				result = pstmt.executeUpdate();
			} else {
				query = "UPDATE BLOOMER SET PWD=?,PHONE=? WHERE MBCODE=?";

				pstmt = con.prepareStatement(query);
				pstmt.setString(1, member.getPwd());
				pstmt.setString(2, member.getPhone());
				pstmt.setString(3, member.getMbcode());

				result = pstmt.executeUpdate();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	public int updateCateGory(Member member) {
		int result = -1;
		PreparedStatement pstmt = null;
		String query = null;

		Connection con = getConnection();
		try {
			if (member instanceof Bloomer) {
				query = "UPDATE BLOOMER SET CATEGORY1=?,CATEGOR2=?,CATEGORY3=? WHERE MBCODE=?";

				pstmt = con.prepareStatement(query);
				pstmt.setString(1, member.getCategory1());
				pstmt.setString(2, member.getCategory2());
				pstmt.setString(3, member.getCategory3());
				pstmt.setString(4, member.getMbcode());

				result = pstmt.executeUpdate();
			} else {
				query = "UPDATE BLOOMER SET CATEGORY1=?,CATEGOR2=?,CATEGORY3=? WHERE MBCODE=?";

				pstmt = con.prepareStatement(query);
				pstmt.setString(1, member.getCategory1());
				pstmt.setString(2, member.getCategory2());
				pstmt.setString(3, member.getCategory3());
				pstmt.setString(4, member.getMbcode());

				result = pstmt.executeUpdate();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	public int leaveMember(String mcode) {
		int result = -1;
		PreparedStatement pstmt = null;
		String query = null;

		Connection con = getConnection();
		try {
			if (mcode.contains("B")) {
				query = "UPDATE BLOOMER SET LEAVEDAY=SYSDATE WHERE MBCODE=?";

				pstmt = con.prepareStatement(query);
				pstmt.setString(1, mcode);

				result = pstmt.executeUpdate();
			} else {
				query = "UPDATE BLOOMER SET LEAVEDAY=SYSDATE WHERE MHCODE=?";

				pstmt = con.prepareStatement(query);
				pstmt.setString(1, mcode);

				result = pstmt.executeUpdate();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	public int cancelLeaveMember(String mcode) {
		int result = -1;
		PreparedStatement pstmt = null;
		String query = null;

		Connection con = getConnection();
		try {
			if (mcode.contains("B")) {
				query = "UPDATE BLOOMER SET LEAVEDAY=NULL WHERE MBCODE=?";

				pstmt = con.prepareStatement(query);
				pstmt.setString(1, mcode);

				result = pstmt.executeUpdate();
			} else {
				query = "UPDATE BLOOMER SET LEAVEDAY=NULL WHERE MHCODE=?";

				pstmt = con.prepareStatement(query);
				pstmt.setString(1, mcode);

				result = pstmt.executeUpdate();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	public int deleteMember() {
		int result = -1;
		int result1 = -1;
		int result2 = -1;

		PreparedStatement pstmt = null;
		String query = null;

		Connection con = getConnection();
		try {
			query = "INSERT INTO LEAVEMEMBER SELECT ID,MHCODE,NICK,ENROLLDAY,LEAVEDAY FROM HONEYBEE WHERE SYSDATE-LEAVEDAY>=3";

			pstmt = con.prepareStatement(query);

			result1 = pstmt.executeUpdate();

			query = "DELETE FROM HONEYBEE WHERE SYSDATE-LEAVEDAY>=3";

			pstmt = con.prepareStatement(query);

			query = "INSERT INTO LEAVEMEMBER SELECT ID,MHCODE,NICK,ENROLLDAY,LEAVEDAY FROM BLOOMER WHERE SYSDATE-LEAVEDAY>=3";

			pstmt = con.prepareStatement(query);

			result2 = pstmt.executeUpdate();

			query = "DELETE FROM BLOOMER WHERE SYSDATE-LEAVEDAY>=3";

			pstmt = con.prepareStatement(query);

			result = (result1 < 0 ? 0 : result1) + (result2 < 0 ? 0 : result2);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	public Member login(Connection con, String email, String pwd, String radio) {
		Member member = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = null;
		try {
			if (radio.equals("B")) {
				query = "SELECT * FROM BLOOMER WHERE EMAIL=? AND PWD=?";
				pstmt = con.prepareStatement(query);
				pstmt.setString(1, email);
				pstmt.setString(2, pwd);
				rset = pstmt.executeQuery();

				if (rset.next()) {
					member = new Bloomer();
					member.setMbcode(rset.getString("MBCODE"));
					member.setEmail(rset.getString("EMAIL"));
					member.setPwd(rset.getString("EMAIL"));
					member.setNick(rset.getString("NICK"));
					member.setPhone(rset.getString("PHONE"));
					((Bloomer) member).setLeader(rset.getString("LEADER"));
					member.setEnrollDay(rset.getDate("ENROLLDAY"));
					member.setLeaveDay(rset.getDate("LEAVEDAY"));
					member.setCategory1(rset.getString("CATEGORY1"));
					member.setCategory2(rset.getString("CATEGORY2"));
					member.setCategory3(rset.getString("CATEGORY3"));
				}
			} else {
				System.out.println("123123");
				query = "SELECT * FROM HONEYBEE WHERE EMAIL=? AND PWD=?";
				pstmt = con.prepareStatement(query);
				pstmt.setString(1, email);
				pstmt.setString(2, pwd);

				rset = pstmt.executeQuery();

				if (rset.next()) {
					member = new HoneyBee();
					member.setEmail(rset.getString("EMAIL"));
					member.setPwd(rset.getString("EMAIL"));
					member.setNick(rset.getString("NICK"));
					member.setPhone(rset.getString("PHONE"));
					member.setEnrollDay(rset.getDate("ENROLLDAY"));
					member.setLeaveDay(rset.getDate("LEAVEDAY"));
					member.setCategory1(rset.getString("CATEGORY1"));
					member.setCategory2(rset.getString("CATEGORY2"));
					member.setCategory3(rset.getString("CATEGORY3"));
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		System.out.println("rororrl");
		return member;
	}

	public Member findMember(Connection con, String email, String radio) {
		Member member = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String query = null;
		
		try {
			if (radio.equals("B")) {
				query = "SELECT * FROM BLOOMER WHERE EMAIL=?";
				pstmt = con.prepareStatement(query);
				pstmt.setString(1, email);

				rset = pstmt.executeQuery();

				if (rset.next()) {
					member = new Bloomer();
					member.setMbcode(rset.getString("MBCODE"));
					member.setEmail(rset.getString("EMAIL"));
					member.setPwd(rset.getString("PWD"));
					member.setNick(rset.getString("NICK"));
					member.setPhone(rset.getString("PHONE"));
					((Bloomer) member).setLeader(rset.getString("LEADER"));
					member.setEnrollDay(rset.getDate("ENROLLDAY"));
					member.setLeaveDay(rset.getDate("LEAVEDAY"));
					member.setCategory1(rset.getString("CATEGORY1"));
					member.setCategory2(rset.getString("CATEGORY2"));
					member.setCategory3(rset.getString("CATEGORY3"));
				}
			} else {
				query = "SELECT * FROM HONEYBEE WHERE EMAIL=?";
				pstmt = con.prepareStatement(query);
				pstmt.setString(1, email);

				rset = pstmt.executeQuery();

				if (rset.next()) {
					member = new HoneyBee();
					member.setMbcode(rset.getString("MHCODE"));
					member.setEmail(rset.getString("EMAIL"));
					member.setPwd(rset.getString("EMAIL"));
					member.setNick(rset.getString("NICK"));
					member.setPhone(rset.getString("PHONE"));
					member.setEnrollDay(rset.getDate("ENROLLDAY"));
					member.setLeaveDay(rset.getDate("LEAVEDAY"));
					member.setCategory1(rset.getString("CATEGORY1"));
					member.setCategory2(rset.getString("CATEGORY2"));
					member.setCategory3(rset.getString("CATEGORY3"));
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return member;
	}

	public int editMember(Connection con, String email, String psw, String nick, String phone, char c) {
		int result = -1;
		PreparedStatement pstmt = null;
		String query = null;

		try {
			if (c == 'B') {
				query = "UPDATE BLOOMER SET PWD=?,NICK=?,PHONE=? WHERE EMAIL=?";

				pstmt = con.prepareStatement(query);
				pstmt.setString(1, psw);
				pstmt.setString(2, nick);
				pstmt.setString(3, phone);
				pstmt.setString(4, email);
				
				result = pstmt.executeUpdate();
			} else {
				query = "UPDATE HONEYBEE SET PWD=?,NICK=?,PHONE=? WHERE EMAIL=?";

				pstmt = con.prepareStatement(query);
				pstmt.setString(1, psw);
				pstmt.setString(2, nick);
				pstmt.setString(3, phone);
				pstmt.setString(4, email);

				result = pstmt.executeUpdate();
			}
		} catch (Exception e) {// 오류 나는 조건은 이메일 중복뿐
								// System.out.println(e.getMessage());
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int insertCate(Connection con, Member member, String cate1, String cate2, String cate3)
	{
		int result = -1;
		PreparedStatement pstmt = null;
		String query = null;

		try {
			if (member instanceof Bloomer) {
				Bloomer b = (Bloomer) member;

				query = "UPDATE BLOOMER SET CATEGORY1=?,CATEGORY2=?,CATEGORY3=? WHERE EMAIL=?";

				pstmt = con.prepareStatement(query);
				pstmt.setString(1, cate1);
				pstmt.setString(2, cate2);
				pstmt.setString(3, cate3);
				pstmt.setString(4, member.getEmail());

				result = pstmt.executeUpdate();
			} else {
				HoneyBee h = (HoneyBee) member;
				query = "UPDATE HONEYBEE SET CATEGORY1=?,CATEGORY2=?,CATEGORY3=? WHERE EMAIL=?";

				pstmt = con.prepareStatement(query);
				pstmt.setString(1, cate1);
				pstmt.setString(2, cate2);
				pstmt.setString(3, cate3);
				pstmt.setString(4, member.getEmail());
				
				result = pstmt.executeUpdate();
			}
		} catch (Exception e) {			
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}

	public int leaveMember(Connection con, Member member)
	{
		int result1 = -1;
		int result2=-1;
		PreparedStatement pstmt = null;
		String query1 = null;
		String query2 = null;

		try {
			if (member instanceof Bloomer) {
				Bloomer b = (Bloomer) member;

				query1 = "INSERT INTO LEAVEMEMBER (EMAIL,MCODE,NICK,ENROLLDAY,LEAVEDAY,FLAG)"+
						"SELECT EMAIL,MBCODE,NICK,ENROLLDAY,LEAVEDAY,'B'"+
						"FROM BLOOMER WHERE EMAIL=?";
				query2="DELETE BLOOMER WHERE EMAIL=?";

				pstmt = con.prepareStatement(query1);
				pstmt.setString(1, member.getEmail());

				result1 = pstmt.executeUpdate();
				
				pstmt = con.prepareStatement(query2);
				pstmt.setString(1, member.getEmail());

				result2 = pstmt.executeUpdate();
			} else {
				HoneyBee h = (HoneyBee) member;
				
				query1 = "INSERT INTO LEAVEMEMBER (EMAIL,MCODE,NICK,ENROLLDAY,LEAVEDAY,FLAG)"+
						"SELECT EMAIL,MHCODE,NICK,ENROLLDAY,LEAVEDAY,'H'"+
						"FROM HONEYBEE WHERE EMAIL=?";
				query2="DELETE HONEYBEE WHERE EMAIL=?";

				pstmt = con.prepareStatement(query1);
				pstmt.setString(1, member.getEmail());

				result1 = pstmt.executeUpdate();
				
				pstmt = con.prepareStatement(query2);
				pstmt.setString(1, member.getEmail());

				result2 = pstmt.executeUpdate();
			}
		} catch (Exception e) {			
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result1+result2;
	}

	public int choiceLeaveMember(Connection con, Member member) 
	{
		int result = -1;
		PreparedStatement pstmt = null;
		String query = null;

		try {
			if (member instanceof Bloomer) {
				query = "UPDATE BLOOMER SET LEAVEDAY=SYSDATE WHERE EMAIL=?";

				pstmt = con.prepareStatement(query);
				pstmt.setString(1, member.getEmail());
				
				result = pstmt.executeUpdate();
			} else {
				query = "UPDATE HONEYBEE SET LEAVEDAY=SYSDATE WHERE EMAIL=?";

				pstmt = con.prepareStatement(query);
				pstmt.setString(1, member.getEmail());

				result = pstmt.executeUpdate();
			}
		} catch (Exception e)
		{
				e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int cancleLeave(Connection con, Member member)
	{
		int result = -1;
		PreparedStatement pstmt = null;
		String query = null;

		try {
			if (member instanceof Bloomer) {
				query = "UPDATE BLOOMER SET LEAVEDAY=NULL WHERE EMAIL=?";

				pstmt = con.prepareStatement(query);
				pstmt.setString(1, member.getEmail());
				
				result = pstmt.executeUpdate();
			} else {
				query = "UPDATE HONEYBEE SET LEAVEDAY=NULL WHERE EMAIL=?";

				pstmt = con.prepareStatement(query);
				pstmt.setString(1, member.getEmail());

				result = pstmt.executeUpdate();
			}
		} catch (Exception e)
		{
				e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
}

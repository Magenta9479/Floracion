package member.vo;

import java.sql.Date;

public abstract class Member 
{//테이블에 카테고리 추가하기
	private String mbcode;
	private String  pwd;
	private String  nick;
	private String  email;
	private String  phone;
	private Date enrollDay;
	private Date leaveDay;
	private String category1;
	private String category2;
	private String category3;
	private Boolean flag;

	public Boolean getFlag() {
		return flag;
	}

	public void setFlag(Boolean flag) {
		this.flag = flag;
	}

	public Member(){}
	
	public Member(String mbcode, String id, String pwd, String nick, String email, String phone, Date enrollDay,
			Date leaveDay, String category1, String category2, String category3)
	{
		super();
		this.mbcode = mbcode;
		this.pwd = pwd;
		this.nick = nick;
		this.email = email;
		this.phone = phone;
		this.enrollDay = enrollDay;
		this.leaveDay = leaveDay;
		this.category1 = category1;
		this.category2 = category2;
		this.category3 = category3;
	}

	@Override
	public String toString()
	{
		return "Member [mbcode=" + mbcode + ", pwd=" + pwd + ", nick=" + nick + ", email=" + email
				+ ", phone=" + phone + ", enrollDay=" + enrollDay + ", leaveDay=" + leaveDay + ", category1="
				+ category1 + ", category2=" + category2 + ", category3=" + category3 + "]";
	}

	public String getMbcode() 
	{
		return mbcode;
	}

	public void setMbcode(String mbcode) 
	{
		this.mbcode = mbcode;
	}



	public String getPwd() 
	{
		return pwd;
	}

	public void setPwd(String pwd) 
	{
		this.pwd = pwd;
	}

	public String getNick() 
	{
		return nick;
	}

	public void setNick(String nick) 
	{
		this.nick = nick;
	}

	public String getEmail() 
	{
		return email;
	}

	public void setEmail(String email) 
	{
		this.email = email;
	}

	public String getPhone() 
	{
		return phone;
	}

	public void setPhone(String phone) 
	{
		this.phone = phone;
	}

	public Date getEnrollDay() 
	{
		return enrollDay;
	}

	public void setEnrollDay(Date enrollDay) 
	{
		this.enrollDay = enrollDay;
	}

	public Date getLeaveDay() 
	{
		return leaveDay;
	}

	public void setLeaveDay(Date leaveDay)
	{
		this.leaveDay = leaveDay;
	}

	public String getCategory1() 
	{
		return category1;
	}

	public void setCategory1(String category1) 
	{
		this.category1 = category1;
	}

	public String getCategory2() 
	{
		return category2;
	}

	public void setCategory2(String category2) 
	{
		this.category2 = category2;
	}

	public String getCategory3()
	{
		return category3;
	}

	public void setCategory3(String category3)
	{
		this.category3 = category3;
	}
	
	
			
}

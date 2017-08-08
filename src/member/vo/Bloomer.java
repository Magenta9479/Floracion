package member.vo;

import java.sql.Date;

public class Bloomer extends Member
{
	private String  leader;
	
	public Bloomer(){}
	
	public Bloomer(String mbcode, String id, String pwd, String nick, String email, String phone, String leader,
			Date enrollDay,Date leaveDay,String category1, String category2, String category3)
	{
		super(mbcode,id,pwd,nick,email,phone,enrollDay,leaveDay,category1,category2,category3);
		this.leader = leader;
	}
	
	
	@Override
	public String toString()
	{
		return "Bloomer [mbcode=" + this.getMbcode() +", pwd=" + this.getPwd() + ", nick=" + this.getNick() + 
				", email=" + this.getEmail()+ ", phone=" + this.getPhone() + ", leader=" + this.getLeader() + ", enrollDay=" + this.getEnrollDay() +
				", leaveDay=" + this.getLeaveDay()+ "]";
	}

	public String getLeader() 
	{
		return leader;
	}

	public void setLeader(String leader) 
	{
		this.leader = leader;
	}
}

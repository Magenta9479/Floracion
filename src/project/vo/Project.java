package project.vo;

import java.sql.Date;

public class Project
{
	private String pcode;
	private String name;
	private Date start;
	private Date end;
	private String leader;
	private String what;//프로젝트 구분자
	
	public Project() {}
	
	public Project(String pcode, String name, Date start, Date end, String leader, String what) 
	{
		super();
		this.pcode = pcode;
		this.name = name;
		this.start = start;
		this.end = end;
		this.leader = leader;
		this.what = what;
	}

	@Override
	public String toString() 
	{
		return "Project [pcode=" + pcode + ", name=" + name + ", start=" + start + ", end=" + end + ", leader=" + leader
				+ ", what=" + what + "]";
	}

	public String getPcode()
	{
		return pcode;
	}

	public void setPcode(String pcode) 
	{
		this.pcode = pcode;
	}

	public String getName()
	{
		return name;
	}

	public void setName(String name)
	{
		this.name = name;
	}

	public Date getStart() 
	{
		return start;
	}

	public void setStart(Date start)
	{
		this.start = start;
	}

	public Date getEnd()
	{
		return end;
	}

	public void setEnd(Date end) 
	{
		this.end = end;
	}

	public String getLeader()
	{
		return leader;
	}

	public void setLeader(String leader)
	{
		this.leader = leader;
	}

	public String getWhat()
	{
		return what;
	}

	public void setWhat(String what) 
	{
		this.what = what;
	}
	
	
}	

package project.vo;

import java.sql.Date;

public class Event
{
	private String pcode;
	private int index;
	private Date start;
	private Date end;
	private String title;
	private String content;
	
	public Event() {}
	
	public Event(String pcode, int index, Date start, Date end, String title, String content)
	{
		super();
		this.pcode = pcode;
		this.index = index;
		this.start = start;
		this.end = end;
		this.title = title;
		this.content = content;
	}

	@Override
	public String toString() 
	{
		return "Event [pcode=" + pcode + ", index=" + index + ", start=" + start + ", end=" + end + ", title=" + title
				+ ", content=" + content + "]";
	}

	public String getPcode() 
	{
		return pcode;
	}

	public void setPcode(String pcode)
	{
		this.pcode = pcode;
	}

	public int getIndex()
	{
		return index;
	}

	public void setIndex(int index) 
	{
		this.index = index;
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

	public String getTitle() 
	{
		return title;
	}

	public void setTitle(String title)
	{
		this.title = title;
	}

	public String getContent()
	{
		return content;
	}

	public void setContent(String content)
	{
		this.content = content;
	}
	
	

}

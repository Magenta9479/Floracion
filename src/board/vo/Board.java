package board.vo;

import java.sql.Date;

public class Board 
{
	private String bcode;
	private String pcode;
	private String writer;
	private String title;
	private String content;
	private Date ndate;
	
	public Board() {}
	
	public Board(String bcode, String pcode, String writer, String title, String content, Date ndate)
	{
		super();
		this.bcode = bcode;
		this.pcode = pcode;
		this.writer = writer;
		this.title = title;
		this.content = content;
		this.ndate = ndate;
	}

	@Override
	public String toString()
	{
		return "Board [bcode=" + bcode + ", pcode=" + pcode + ", writer=" + writer + ", title=" + title + ", content="
				+ content + ", ndate=" + ndate + "]";
	}

	public String getBcode() 
	{
		return bcode;
	}

	public void setBcode(String bcode) 
	{
		this.bcode = bcode;
	}

	public String getPcode() 
	{
		return pcode;
	}

	public void setPcode(String pcode) 
	{
		this.pcode = pcode;
	}

	public String getWriter() 
	{
		return writer;
	}

	public void setWriter(String writer) 
	{
		this.writer = writer;
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

	public Date getNdate() 
	{
		return ndate;
	}

	public void setNdate(Date ndate) 
	{
		this.ndate = ndate;
	}	

	
	
}

package board.vo;

import java.sql.Date;

public class Comment
{
	private String bcode;
	private int index;
	private int toIndex;
	private String writer;
	private String title;
	private String content;
	private Date cdate;
	
	public Comment() {}
	
	public Comment(String bcode, int index, int toIndex, String writer, String title, String content, Date cdate)
	{
		super();
		this.bcode = bcode;
		this.index = index;
		this.toIndex = toIndex;
		this.writer = writer;
		this.title = title;
		this.content = content;
		this.cdate = cdate;
	}

	@Override
	public String toString() 
	{
		return "Comment [bcode=" + bcode + ", index=" + index + ", toIndex=" + toIndex + ", writer=" + writer
				+ ", title=" + title + ", content=" + content + ", cdate=" + cdate + "]";
	}

	public String getBcode()
	{
		return bcode;
	}

	public void setBcode(String bcode)
	{
		this.bcode = bcode;
	}

	public int getIndex() 
	{
		return index;
	}

	public void setIndex(int index)
	{
		this.index = index;
	}

	public int getToIndex() 
	{
		return toIndex;
	}

	public void setToIndex(int toIndex)
	{
		this.toIndex = toIndex;
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

	public Date getCdate()
	{
		return cdate;
	}

	public void setCdate(Date cdate) 
	{
		this.cdate = cdate;
	}
	
	
}

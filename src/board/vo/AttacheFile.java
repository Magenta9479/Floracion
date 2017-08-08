package board.vo;

public class AttacheFile
{
	private String bcode;
	private String link1;
	private String link2;
	private String link3;
	
	public AttacheFile() {}

	public AttacheFile(String bcode, String link1, String link2, String link3) 
	{
		super();
		this.bcode = bcode;
		this.link1 = link1;
		this.link2 = link2;
		this.link3 = link3;
	}

	@Override
	public String toString() 
	{
		return "AttacheFile [bcode=" + bcode + ", link1=" + link1 + ", link2=" + link2 + ", link3=" + link3 + "]";
	}

	public String getBcode() 
	{
		return bcode;
	}

	public void setBcode(String bcode)
	{
		this.bcode = bcode;
	}

	public String getLink1()
	{
		return link1;
	}

	public void setLink1(String link1)
	{
		this.link1 = link1;
	}

	public String getLink2()
	{
		return link2;
	}

	public void setLink2(String link2)
	{
		this.link2 = link2;
	}

	public String getLink3()
	{
		return link3;
	}

	public void setLink3(String link3)
	{
		this.link3 = link3;
	}
	
	

	
}

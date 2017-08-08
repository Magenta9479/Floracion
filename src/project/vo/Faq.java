package project.vo;

public class Faq
{
	private String pcode;
	private int index;
	private String question;
	private String answer;
	
	public Faq() {}
	
	public Faq(String pcode, int index, String question, String answer)
	{
		super();
		this.pcode = pcode;
		this.index = index;
		this.question = question;
		this.answer = answer;
	}

	@Override
	public String toString()
	{
		return "ProjectBrief [pcode=" + pcode + ", index=" + index + ", question=" + question + ", answer=" + answer
				+ "]";
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

	public String getQuestion()
	{
		return question;
	}

	public void setQuestion(String question)
	{
		this.question = question;
	}

	public String getAnswer() 
	{
		return answer;
	}

	public void setAnswer(String answer)
	{
		this.answer = answer;
	}
}

package project.vo;

import java.sql.Date;

public class Project {
	private String pcode;
	private String name;
	private String content;
	private Date start;
	private Date end;
	private int gMoney;
	private int cMoney;
	private String permit;
	private String leader;
	private String category;

	public int getgMoney() {
		return gMoney;
	}

	public void setgMoney(int gMoney) {
		this.gMoney = gMoney;
	}

	public int getcMoney() {
		return cMoney;
	}

	public void setcMoney(int cMoney) {
		this.cMoney = cMoney;
	}

	public String getPermit() {
		return permit;
	}

	public void setPermit(String permit) {
		this.permit = permit;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	private String what;// 프로젝트 구분자

	public Project() {
	}

	public Project(String pcode, String name, String content, Date start, Date end, String leader, String what) {
		super();
		this.pcode = pcode;
		this.name = name;
		this.content = content;
		this.start = start;
		this.end = end;
		this.leader = leader;
		this.what = what;
	}

	@Override
	public String toString() {
		return "Project [pcode=" + pcode + ", name=" + name + ", start=" + start + ", end=" + end + ", leader=" + leader
				+ ", what=" + what + "]";
	}

	public String getPcode() {
		return pcode;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public void setPcode(String pcode) {
		this.pcode = pcode;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getStart() {
		return start;
	}

	public void setStart(Date start) {
		this.start = start;
	}

	public Date getEnd() {
		return end;
	}

	public void setEnd(Date end) {
		this.end = end;
	}

	public String getLeader() {
		return leader;
	}

	public void setLeader(String leader) {
		this.leader = leader;
	}

	public String getWhat() {
		return what;
	}

	public void setWhat(String what) {
		this.what = what;
	}

}

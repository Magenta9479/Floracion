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
	
	private String content2;
	private String mainImage;
	private String image1;
	private String image2;
	private String image3;
	private String image4;
	private String mainVideo;
	private String video1;
	private String video2;
	
	private String what;

	public Project() {}
	
		
	public Project(String pcode, String name, String content, Date start, Date end, int gMoney, int cMoney,
			String permit, String leader, String category, String content2, String mainImage, String image1,
			String image2, String image3, String image4, String mainVideo, String video1, String video2, String what) {
		super();
		this.pcode = pcode;
		this.name = name;
		this.content = content;
		this.start = start;
		this.end = end;
		this.gMoney = gMoney;
		this.cMoney = cMoney;
		this.permit = permit;
		this.leader = leader;
		this.category = category;
		this.content2 = content2;
		this.mainImage = mainImage;
		this.image1 = image1;
		this.image2 = image2;
		this.image3 = image3;
		this.image4 = image4;
		this.mainVideo = mainVideo;
		this.video1 = video1;
		this.video2 = video2;
		this.what = what;
	}

	@Override
	public String toString() {
		return "Project [pcode=" + pcode + ", name=" + name + ", content=" + content + ", start=" + start + ", end="
				+ end + ", gMoney=" + gMoney + ", cMoney=" + cMoney + ", permit=" + permit + ", leader=" + leader
				+ ", category=" + category + ", content2=" + content2 + ", mainImage=" + mainImage + ", image1="
				+ image1 + ", image2=" + image2 + ", image3=" + image3 + ", image4=" + image4 + ", mainVideo="
				+ mainVideo + ", video1=" + video1 + ", video2=" + video2 + ", what=" + what + "]";
	}


	public String getPcode() {
		return pcode;
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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
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

	public String getLeader() {
		return leader;
	}

	public void setLeader(String leader) {
		this.leader = leader;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getContent2() {
		return content2;
	}

	public void setContent2(String content2) {
		this.content2 = content2;
	}

	public String getMainImage() {
		return mainImage;
	}

	public void setMainImage(String mainImage) {
		this.mainImage = mainImage;
	}

	public String getImage1() {
		return image1;
	}

	public void setImage1(String image1) {
		this.image1 = image1;
	}

	public String getImage2() {
		return image2;
	}

	public void setImage2(String image2) {
		this.image2 = image2;
	}

	public String getImage3() {
		return image3;
	}

	public void setImage3(String image3) {
		this.image3 = image3;
	}

	public String getImage4() {
		return image4;
	}

	public void setImage4(String image4) {
		this.image4 = image4;
	}

	public String getMainVideo() {
		return mainVideo;
	}

	public void setMainVideo(String mainVideo) {
		this.mainVideo = mainVideo;
	}

	public String getVideo1() {
		return video1;
	}

	public void setVideo1(String video1) {
		this.video1 = video1;
	}

	public String getVideo2() {
		return video2;
	}

	public void setVideo2(String video2) {
		this.video2 = video2;
	}

	public String getWhat() {
		return what;
	}

	public void setWhat(String what) {
		this.what = what;
	}

	
}

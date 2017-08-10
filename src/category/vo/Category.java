package category.vo;

public class Category {

	private String cateName;
	private String cateVideo;
	private String cateCont1;
	private String cateCont2;
	
	
public Category() {
}	

	public Category(String cateName, String cateCont1, String cateCont2) {
		super();
		this.cateName = cateName;
		this.cateCont1 = cateCont1;
		this.cateCont2 = cateCont2;
	}

	public String getCateName() {
		return cateName;
	}

	public void setCateName(String cateName) {
		this.cateName = cateName;
	}

	public String getCateCont1() {
		return cateCont1;
	}

	public void setCateCont1(String cateCont1) {
		this.cateCont1 = cateCont1;
	}

	public String getCateCont2() {
		return cateCont2;
	}

	public void setCateCont2(String cateCont2) {
		this.cateCont2 = cateCont2;
	}

	public String getCateVideo() {
		return cateVideo;
	}

	public void setCateVideo(String cateVideo) {
		this.cateVideo = cateVideo;
	}
	

	
}

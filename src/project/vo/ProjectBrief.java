package project.vo;

public class ProjectBrief
{
	private String pcode;
	private String content;
	private String mainImage;
	private String image1;
	private String image2;
	private String image3;
	private String image4;
	private String mainVideo;
	private String video1;
	private String video2;

	public ProjectBrief() {}
	
	public ProjectBrief(String pcode, String content, String mainImage, String mainVideo)
	{
		super();
		this.pcode = pcode;
		this.content = content;
		this.mainImage = mainImage;
		this.mainVideo = mainVideo;
	}

	public ProjectBrief(String pcode, String content, String mainImage, String image1, String image2, String image3,
			String image4, String mainVideo, String video1, String video2) 
	{
		super();
		this.pcode = pcode;
		this.content = content;
		this.mainImage = mainImage;
		this.image1 = image1;
		this.image2 = image2;
		this.image3 = image3;
		this.image4 = image4;
		this.mainVideo = mainVideo;
		this.video1 = video1;
		this.video2 = video2;
	}

	@Override
	public String toString() 
	{
		return "ProjectBrief [pcode=" + pcode + ", content=" + content + ", mainImage=" + mainImage + ", image1="
				+ image1 + ", image2=" + image2 + ", image3=" + image3 + ", image4=" + image4 + ", mainVideo="
				+ mainVideo + ", video1=" + video1 + ", video2=" + video2 + "]";
	}

	public String getPcode() 
	{
		return pcode;
	}

	public void setPcode(String pcode) 
	{
		this.pcode = pcode;
	}

	public String getContent() 
	{
		return content;
	}

	public void setContent(String content)
	{
		this.content = content;
	}

	public String getMainImage()
	{
		return mainImage;
	}

	public void setMainImage(String mainImage) 
	{
		this.mainImage = mainImage;
	}

	public String getImage1()
	{
		return image1;
	}

	public void setImage1(String image1)
	{
		this.image1 = image1;
	}

	public String getImage2()
	{
		return image2;
	}

	public void setImage2(String image2)
	{
		this.image2 = image2;
	}

	public String getImage3()
	{
		return image3;
	}

	public void setImage3(String image3)
	{
		this.image3 = image3;
	}

	public String getImage4() 
	{
		return image4;
	}

	public void setImage4(String image4)
	{
		this.image4 = image4;
	}

	public String getMainVideo()
	{
		return mainVideo;
	}

	public void setMainVideo(String mainVideo) 
	{
		this.mainVideo = mainVideo;
	}

	public String getVideo1()
{
		return video1;
	}

	public void setVideo1(String video1)
	{
		this.video1 = video1;
	}

	public String getVideo2()
	{
		return video2;
	}

	public void setVideo2(String video2) 
	{
		this.video2 = video2;
	}

	

}

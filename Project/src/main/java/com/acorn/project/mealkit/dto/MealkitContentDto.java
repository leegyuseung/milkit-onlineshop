package com.acorn.project.mealkit.dto;

public class MealkitContentDto {
	private String productId2;
	private String writer;
	private String title;
	private String content;
	private int viewCount;
	
	public MealkitContentDto() {}

	public MealkitContentDto(String productId2, String writer, String title, String content, int viewCount) {
		super();
		this.productId2 = productId2;
		this.writer = writer;
		this.title = title;
		this.content = content;
		this.viewCount = viewCount;
	}

	public String getProductId2() {
		return productId2;
	}

	public void setProductId2(String productId2) {
		this.productId2 = productId2;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getViewCount() {
		return viewCount;
	}

	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}
	
	
}

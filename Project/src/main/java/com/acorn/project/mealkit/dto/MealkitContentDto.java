package com.acorn.project.mealkit.dto;

public class MealkitContentDto {
	private String title;
	private String content;
	private String productId2;
	
	public MealkitContentDto() {}

	public MealkitContentDto(String title, String content, String productId2) {
		super();
		this.title = title;
		this.content = content;
		this.productId2 = productId2;
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

	public String getProductId2() {
		return productId2;
	}

	public void setProductId2(String productId2) {
		this.productId2 = productId2;
	}

	
}
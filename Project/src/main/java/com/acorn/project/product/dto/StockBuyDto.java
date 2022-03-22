package com.acorn.project.product.dto;

public class StockBuyDto {
	private int amount;
	private String productId;
	
	public StockBuyDto() {}

	public StockBuyDto(int amount, String productId) {
		super();
		this.amount = amount;
		this.productId = productId;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}
	
	

}

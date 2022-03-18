package com.acorn.project.order.dto;

public class OrderDetailDto {
/*
 * orderId NUMBER(35),
	orderId_detail NUMBER (35),
	productId varchar2(100),
	amount_detail NUMBER(20)
 */	
	
	private String userId;
	private int orderId;
	private int orderId_detail;
	private String productId;
	private int amount_detail;
	
	public OrderDetailDto() {}

	public OrderDetailDto(String userId, int orderId, int orderId_detail, String productId, int amount_detail) {
		super();
		this.userId = userId;
		this.orderId = orderId;
		this.orderId_detail = orderId_detail;
		this.productId = productId;
		this.amount_detail = amount_detail;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public int getOrderId_detail() {
		return orderId_detail;
	}

	public void setOrderId_detail(int orderId_detail) {
		this.orderId_detail = orderId_detail;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public int getAmount_detail() {
		return amount_detail;
	}

	public void setAmount_detail(int amount_detail) {
		this.amount_detail = amount_detail;
	}
	
	
}


package com.acorn.project.order.dto;
/*
 * orderId NUMBER(35),
	userId varchar2(100),
	userAddr varchar2(100),
	userPostal varchar2(100),
	userAddrDetail varchar2(100),
	tel NUMBER(20),
	amount NUMBER(20),
	orderDate Date
 */
public class OrderDto {
	
	private int orderId;
	private String userId;
	private String userAddr;
	private String userPostal;
	private String userArrdDetail;
	private int tel;
	private int amount;
	private String orderDate;
	
	public OrderDto() {}

	public OrderDto(int orderId, String userId, String userAddr, String userPostal, String userArrdDetail, int tel,
			int amount, String orderDate) {
		super();
		this.orderId = orderId;
		this.userId = userId;
		this.userAddr = userAddr;
		this.userPostal = userPostal;
		this.userArrdDetail = userArrdDetail;
		this.tel = tel;
		this.amount = amount;
		this.orderDate = orderDate;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserAddr() {
		return userAddr;
	}

	public void setUserAddr(String userAddr) {
		this.userAddr = userAddr;
	}

	public String getUserPostal() {
		return userPostal;
	}

	public void setUserPostal(String userPostal) {
		this.userPostal = userPostal;
	}

	public String getUserArrdDetail() {
		return userArrdDetail;
	}

	public void setUserArrdDetail(String userArrdDetail) {
		this.userArrdDetail = userArrdDetail;
	}

	public int getTel() {
		return tel;
	}

	public void setTel(int tel) {
		this.tel = tel;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	
}


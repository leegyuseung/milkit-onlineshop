package com.acorn.project.order.dto;
/*
 * orderId NUMBER(35),
	userId varchar2(100),
	userAddr varchar2(100),
	userPostal varchar2(100),
	userAddrDetail varchar2(100),
	tel NUMBER(20),
	totalPrice NUMBER(20),
	orderDate Date
 */
public class OrderDto {
	
	private int orderId;
	private String userId;
	private String userAddr;
	private String userPostal;
	private String userAddrDetail;
	private int tel;
	private int totalPrice;
	private String orderDate;
	
	public OrderDto() {}

	public OrderDto(int orderId, String userId, String userAddr, String userPostal, String userAddrDetail, int tel,
			int totalPrice, String orderDate) {
		super();
		this.orderId = orderId;
		this.userId = userId;
		this.userAddr = userAddr;
		this.userPostal = userPostal;
		this.userAddrDetail = userAddrDetail;
		this.tel = tel;
		this.totalPrice = totalPrice;
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

	public String getuserAddrDetail() {
		return userAddrDetail;
	}

	public void setuserAddrDetail(String userAddrDetail) {
		this.userAddrDetail = userAddrDetail;
	}

	public int getTel() {
		return tel;
	}

	public void setTel(int tel) {
		this.tel = tel;
	}

	public int gettotalPrice() {
		return totalPrice;
	}

	public void settotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	
}


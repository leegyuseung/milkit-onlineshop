package com.acorn.project.order.dto;


/*
 * orderId NUMBER(35),
	userId varchar2(100),
	userAddr varchar2(100),
	userPostal varchar2(100),
	userAddrDetail varchar2(100),
	tel NUMBER(20),
	totalPrice NUMBER(20),
	orderDate String
 */
public class OrderDto {
	
	private int orderId;
	private String receiver;
	private String userId;
	private String userAddr;
	private String userPostal;
	private String userAddrDetail;
	private String tel;
	private int totalPrice;
	private String orderDate;
	private String delivery;
	
	public OrderDto() {}

	public OrderDto(int orderId, String receiver, String userId, String userAddr, String userPostal,
			String userAddrDetail, String tel, int totalPrice, String orderDate, String delivery) {
		super();
		this.orderId = orderId;
		this.receiver = receiver;
		this.userId = userId;
		this.userAddr = userAddr;
		this.userPostal = userPostal;
		this.userAddrDetail = userAddrDetail;
		this.tel = tel;
		this.totalPrice = totalPrice;
		this.orderDate = orderDate;
		this.delivery = delivery;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public String getReceiver() {
		return receiver;
	}

	public void setReceiver(String receiver) {
		this.receiver = receiver;
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

	public String getUserAddrDetail() {
		return userAddrDetail;
	}

	public void setUserAddrDetail(String userAddrDetail) {
		this.userAddrDetail = userAddrDetail;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getorderDate() {
		return orderDate;
	}

	public void setorderDate(String orderDate) {
		this.orderDate = orderDate;
	}

	public String getDelivery() {
		return delivery;
	}

	public void setDelivery(String delivery) {
		this.delivery = delivery;
	}
	
}

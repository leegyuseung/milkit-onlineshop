package com.acorn.project.order.dto;

public class OrderListDto {
	
	private int orderId;
	private String receiver;
	private String userId;
	private String userAddr;
	private String userPostal;
	private String userAddrDetail;
	private int tel;
	private int totalPrice;
	private String orderDate;
	private String delivery;
	
	private int orderId_Detail;
	private String productId;
	private int amount_detail;
	
	private String productName;
	private String imagePath;
	private int price;
	
	public OrderListDto() {}

	public OrderListDto(int orderId, String receiver, String userId, String userAddr, String userPostal,
			String userAddrDetail, int tel, int totalPrice, String orderDate, String delivery, int orderId_Detail,
			String productId, int amount_detail, String productName, String imagePath, int price) {
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
		this.orderId_Detail = orderId_Detail;
		this.productId = productId;
		this.amount_detail = amount_detail;
		this.productName = productName;
		this.imagePath = imagePath;
		this.price = price;
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

	public int getTel() {
		return tel;
	}

	public void setTel(int tel) {
		this.tel = tel;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}

	public String getDelivery() {
		return delivery;
	}

	public void setDelivery(String delivery) {
		this.delivery = delivery;
	}

	public int getOrderId_Detail() {
		return orderId_Detail;
	}

	public void setOrderId_Detail(int orderId_Detail) {
		this.orderId_Detail = orderId_Detail;
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

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
}
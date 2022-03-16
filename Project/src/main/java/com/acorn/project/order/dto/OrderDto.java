package com.acorn.project.order.dto;

public class OrderDto {
	private String productId;
	private String productName;
	private int price;
	private int quantity;
	private String imagePath;
	private String userId;
	private String userName;
	private String email;
	private int tel;
	private String userAddress;
	private String orderDate;
	private int orderNumber;
	private int totalPrice;
	private String billingDate;
	public OrderDto(String productId, String productName, int price, int quantity, String imagePath, String userId,
			String userName, String email, int tel, String userAddress, String orderDate, int orderNumber,
			int totalPrice, String billingDate) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.price = price;
		this.quantity = quantity;
		this.imagePath = imagePath;
		this.userId = userId;
		this.userName = userName;
		this.email = email;
		this.tel = tel;
		this.userAddress = userAddress;
		this.orderDate = orderDate;
		this.orderNumber = orderNumber;
		this.totalPrice = totalPrice;
		this.billingDate = billingDate;
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getTel() {
		return tel;
	}
	public void setTel(int tel) {
		this.tel = tel;
	}
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public int getOrderNumber() {
		return orderNumber;
	}
	public void setOrderNumber(int orderNumber) {
		this.orderNumber = orderNumber;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getBillingDate() {
		return billingDate;
	}
	public void setBillingDate(String billingDate) {
		this.billingDate = billingDate;
	}
	
	
}

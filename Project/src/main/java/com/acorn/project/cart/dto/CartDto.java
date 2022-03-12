package com.acorn.project.cart.dto;

public class CartDto {
	private int cart_id;
	private String id;
	private String name;
	private String productId;
	private String productName;
	private int price;
	private int money;
	private int amount;
	
	public CartDto() {
		
	}

	public CartDto(int cart_id, String id, String name, String productId, String productName, int price, int money,
			int amount) {
		super();
		this.cart_id = cart_id;
		this.id = id;
		this.name = name;
		this.productId = productId;
		this.productName = productName;
		this.price = price;
		this.money = money;
		this.amount = amount;
	}

	public int getCart_id() {
		return cart_id;
	}

	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public int getMoney() {
		return money;
	}

	public void setMoney(int money) {
		this.money = money;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	
}



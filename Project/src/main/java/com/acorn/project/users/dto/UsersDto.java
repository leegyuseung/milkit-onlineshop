package com.acorn.project.users.dto;

public class UsersDto {
	private String name;
	private String id;
	private String pwd;
	private String email;
	private String address;
	private String regdate;
	private int usertype;
	private String newPwd;
	
	public UsersDto() {}

	public UsersDto(String name, String id, String pwd, String email, String address, String regdate, int usertype,
			String newPwd) {
		super();
		this.name = name;
		this.id = id;
		this.pwd = pwd;
		this.email = email;
		this.address = address;
		this.regdate = regdate;
		this.usertype = usertype;
		this.newPwd = newPwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public int getUsertype() {
		return usertype;
	}

	public void setUsertype(int usertype) {
		this.usertype = usertype;
	}

	public String getNewPwd() {
		return newPwd;
	}

	public void setNewPwd(String newPwd) {
		this.newPwd = newPwd;
	}
}
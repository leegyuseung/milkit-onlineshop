package com.acorn.project.users.dao;

import com.acorn.project.users.dto.UsersDto;

public interface UsersDao {
	public boolean isExist(String inputId);
	public void insert(UsersDto dto);
	public UsersDto getData(String id);
	public void updatePwd(UsersDto dto);
	public void update(UsersDto dto);
	public void delete(String id);

}

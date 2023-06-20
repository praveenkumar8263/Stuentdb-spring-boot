package com.code.service;

import java.util.List;

import com.code.model.UserData;

public interface UserServices {
	
	UserData createUser(UserData data);

	void deleteUser(int id);
	
	List<UserData> getAllData();
	
	UserData getByID(int id);
	
	UserData updateData();
}

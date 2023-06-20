package com.code.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.code.model.UserData;
import com.code.repository.UserRepo;

@Service
public class UserServiceImp implements UserServices{

	@Autowired
	private UserRepo userRepo;

	@Override
	public UserData createUser(UserData data) {
		return userRepo.save(data);
	}

	@Override
	public void deleteUser(int id) {
		
		UserData data=userRepo.getReferenceById(id);
		userRepo.delete(data);
		userRepo.deleteById(id);
	}

	@Override
	public List<UserData> getAllData() {
		
		return userRepo.findAll();
	}

	@Override
	public UserData getByID(int id) {
		return userRepo.getById(id);
	}

	@Override
	public UserData updateData() {
		
		return null;
	}

	

}

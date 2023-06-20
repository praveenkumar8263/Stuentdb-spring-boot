package com.code.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import com.code.model.UserData;

public interface UserRepo extends JpaRepository<UserData, Integer> 
{
	
}

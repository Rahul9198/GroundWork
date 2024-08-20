package com.groundwork.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.groundwork.entites.User;

public interface UserRepo extends JpaRepository<User, Integer> {

	public User findByEmail(String emaill);

	public User findByVerificationCode(String code);
	
}

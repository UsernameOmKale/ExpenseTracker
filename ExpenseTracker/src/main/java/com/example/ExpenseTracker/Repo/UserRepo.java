package com.example.ExpenseTracker.Repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.ExpenseTracker.Entity.UserEntity;

public interface UserRepo extends JpaRepository<UserEntity, Integer> {

	public UserEntity findByUsernameAndPassword(String username, String password);

}

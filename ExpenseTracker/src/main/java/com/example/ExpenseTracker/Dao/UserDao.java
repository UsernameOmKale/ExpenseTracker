package com.example.ExpenseTracker.Dao;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.ExpenseTracker.Entity.UserEntity;
import com.example.ExpenseTracker.Repo.UserRepo;

@Repository
public class UserDao {
	
	@Autowired
	UserRepo userRepo;

	public UserEntity saveData(UserEntity userEntity) {
		return userRepo.save(userEntity);
        		
	}

	public UserEntity finduser(String username, String password) {
		return userRepo.findByUsernameAndPassword(username,password);
	}

	public UserEntity updateUserData(int uid, UserEntity userEntity) {
		 Optional<UserEntity> optional = userRepo.findById(uid);
		 
		 if(optional.isPresent()) {
			 UserEntity userEntity2 = optional.get();
			 
			 if(userEntity.getName() != null) {
				 userEntity2.setName(userEntity.getName());
			 }
			 if(userEntity.getEmail() != null) {
				 userEntity2.setEmail(userEntity.getEmail());
			 }
			 if(userEntity.getUsername() != null) {
				 userEntity2.setUsername(userEntity.getUsername());
			 }
			 if(userEntity.getPassword() != null) {
				 userEntity2.setPassword(userEntity.getPassword());
			 }
			 
			 
			return userRepo.save(userEntity2);
		 }
		return null ;
		
	}

	public UserEntity FindById(int id) {
		return userRepo.findById(id).get();
	}

}

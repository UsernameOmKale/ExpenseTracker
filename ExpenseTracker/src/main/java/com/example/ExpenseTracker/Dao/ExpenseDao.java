package com.example.ExpenseTracker.Dao;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.ExpenseTracker.Entity.ExpenseEntity;
import com.example.ExpenseTracker.Entity.UserEntity;
import com.example.ExpenseTracker.Repo.ExpenseRepo;

@Repository
public class ExpenseDao {
	
	@Autowired
	ExpenseRepo expenseRepo;

	public ExpenseEntity saveData(ExpenseEntity expenseEntity) {
		return expenseRepo.save(expenseEntity);
		
	}

	public List<ExpenseEntity> FindAll() {
		return expenseRepo.findAll();
	}

	public ExpenseEntity findexpense(int eid) {
		return expenseRepo.findById(eid).get();
	}

	public ExpenseEntity updateExpenseData(int eid, ExpenseEntity expenseEntity) {
		Optional<ExpenseEntity> optional = expenseRepo.findById(eid);
		
		ExpenseEntity expenseEntity2 = optional.get();
		if(expenseEntity.getExpenseName() != null) {
			expenseEntity2.setExpenseName(expenseEntity.getExpenseName());
		 }
		if(expenseEntity.getExpenseAmount() != null) {
			expenseEntity2.setExpenseAmount(expenseEntity.getExpenseAmount());
		 }
		if(expenseEntity.getExpenseDescription() != null) {
			expenseEntity2.setExpenseDescription(expenseEntity.getExpenseDescription());
		 }
		if(expenseEntity.getExpenseDate() != null) {
			expenseEntity2.setExpenseDate(expenseEntity.getExpenseDate());
		 }
		return expenseEntity2;
		 
		
	}

	public void Delete(int eid) {
	    ExpenseEntity expense = expenseRepo.findById(eid).get();
	    expenseRepo.delete(expense);
	}
	
	

}

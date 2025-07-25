package com.example.ExpenseTracker.Repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.ExpenseTracker.Entity.ExpenseEntity;

public interface ExpenseRepo extends JpaRepository<ExpenseEntity, Integer> {

}

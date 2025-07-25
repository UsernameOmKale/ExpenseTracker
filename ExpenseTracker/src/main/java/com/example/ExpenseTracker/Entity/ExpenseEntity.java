package com.example.ExpenseTracker.Entity;

import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Version;

@Entity
public class ExpenseEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int eid;
	
	private String expenseName;
	
	private String expenseAmount;
	
	private LocalDate expenseDate;
	
	private String expenseDescription;

	public int getEid() {
		return eid;
	}

	public void setEid(int eid) {
		this.eid = eid;
	}

	public String getExpenseName() {
		return expenseName;
	}

	public void setExpenseName(String expenseName) {
		this.expenseName = expenseName;
	}

	public String getExpenseAmount() {
		return expenseAmount;
	}

	public void setExpenseAmount(String expenseAmount) {
		this.expenseAmount = expenseAmount;
	}

	public LocalDate getExpenseDate() {
		return expenseDate;
	}

	public void setExpenseDate(LocalDate expenseDate) {
		this.expenseDate = expenseDate;
	}

	public String getExpenseDescription() {
		return expenseDescription;
	}

	public void setExpenseDescription(String expenseDescription) {
		this.expenseDescription = expenseDescription;
	}

	@Override
	public String toString() {
		return "ExpenseEntity [eid=" + eid + ", expenseName=" + expenseName + ", expenseAmount=" + expenseAmount
				+ ", expenseDate=" + expenseDate + ", expenseDescription=" + expenseDescription + ", getId()=" + getEid()
				+ ", getExpenseName()=" + getExpenseName() + ", getExpenseAmount()=" + getExpenseAmount()
				+ ", getExpenseDate()=" + getExpenseDate() + ", getExpenseDescription()=" + getExpenseDescription()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}

	public ExpenseEntity() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	

}

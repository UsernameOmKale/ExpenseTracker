package com.example.ExpenseTracker.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.ExpenseTracker.Dao.ExpenseDao;
import com.example.ExpenseTracker.Dao.UserDao;
import com.example.ExpenseTracker.Entity.ExpenseEntity;
import com.example.ExpenseTracker.Entity.UserEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;


@Controller
public class ExpenseController {
	
	@Autowired
	UserDao userDao;
	
	@Autowired
	ExpenseDao expenseDao;
	
	@GetMapping("/home")
    public String home(@RequestParam int id , Model model) {
		 UserEntity updatedUserFromDB = userDao.FindById(id);
	 	    model.addAttribute("user", updatedUserFromDB);
			return "home";
    }
	
	 @GetMapping("/addExpensepage")
	    public String addExpensepage(@RequestParam int id , Model model) {
		 UserEntity userEntity = userDao.FindById(id);
		 model.addAttribute("user",userEntity);
			 
	        return "addExpense";
	    }
	 
	 
	 @GetMapping("/profile")
	    public String profilepage(@RequestParam int id , Model model) {
		 UserEntity updatedUserFromDB = userDao.FindById(id);
	 	    model.addAttribute("user", updatedUserFromDB);
	        return "profile";
	    }
	 
	 @PostMapping("/saveExpense")
	 public String saveExpense(@RequestParam int id, ExpenseEntity expenseEntity,Model model) { 
	 	expenseDao.saveData(expenseEntity);
	 	
	 	UserEntity userEntity = userDao.FindById(id);
	 	model.addAttribute("user",userEntity);
	 	
		 List<ExpenseEntity> expenses = expenseDao.FindAll();
	     model.addAttribute("exp", expenses);

	 	return "allExpense";
	 }
	 
	 @GetMapping("/allExpensepage")
	 public String allExpense(@RequestParam int id,Model model) {
		 List<ExpenseEntity> expenses = expenseDao.FindAll();
	        UserEntity user = userDao.FindById(id);
	        
	        model.addAttribute("exp", expenses);
	        model.addAttribute("user", user);
	        
	        return "allExpense";
	 }
	 
	 
	 @GetMapping("/updateExpense")
	 public String getMethodName(@RequestParam int eid,Model model,@RequestParam int id) {
	 	 ExpenseEntity expenses = expenseDao.findexpense(eid);
		 UserEntity user = userDao.FindById(id);
	        
	        model.addAttribute("exp", expenses);
	        model.addAttribute("user", user);
		 
		 return "updateExpense";
	 }
	 
	 @PostMapping("/updateExpenseSuc")
	 public String postMethodName(@RequestParam int id, ExpenseEntity expenseEntity, Model model,@RequestParam int eid) {
		 UserEntity updatedUserFromDB = userDao.FindById(id);
	 	    model.addAttribute("user", updatedUserFromDB);
	 	    
	 	   ExpenseEntity expenseEntity2 = expenseDao.findexpense(eid);
	 	   model.addAttribute("exp", expenseEntity2);
	 	   
	 	    expenseDao.updateExpenseData(eid, expenseEntity);
	 	
			 List<ExpenseEntity> expenses = expenseDao.FindAll();
		     model.addAttribute("exp", expenses);

	 	return "allExpense";
	 }
	 
	 @GetMapping("/DeleteExp")
	 public String postMethodName(@RequestParam int id, Model model,@RequestParam int eid) {
		 UserEntity updatedUserFromDB = userDao.FindById(id);
	 	    model.addAttribute("user", updatedUserFromDB);
	 	    
	 	   ExpenseEntity expenseEntity2 = expenseDao.findexpense(eid);
	 	   model.addAttribute("exp", expenseEntity2);
	 	   
	 	    expenseDao.Delete(eid);
	 	
			 List<ExpenseEntity> expenses = expenseDao.FindAll();
		     model.addAttribute("exp", expenses);

	 	return "allExpense";
	 }
	 
	

}

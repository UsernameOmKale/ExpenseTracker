package com.example.ExpenseTracker.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.ExpenseTracker.Dao.UserDao;
import com.example.ExpenseTracker.Entity.UserEntity;

@Controller
public class UserController {
	
	@Autowired
	UserDao userDao;
	
	@GetMapping("/register")
    public String index() {
        return "register";
    }
    
    @GetMapping("/login")
    public String register() {
        return "login";
    }
    
    @PostMapping("/saveData")
    public String saveData(@ModelAttribute UserEntity userEntity, Model model) {
    	userDao.saveData(userEntity);
        model.addAttribute("sucmsg", "You have been registered successfully!");
        return "register";
    }
    
    @GetMapping("/checklogin")
    public String handleLogin(
            @RequestParam String username,
            @RequestParam String password,
            Model model) {
        
        UserEntity user = userDao.finduser(username, password);
        
        if (user != null) {
           model.addAttribute("user",user);
            return "home";
        } else {
            model.addAttribute("error", "Invalid username or password");
            return "login";
        }
    }
    
    @PostMapping("/updateUserData")
	public String updateUserData(@RequestParam int id, UserEntity userEntity, Model model) {
	    
    	UserEntity updatedUserFromDB = userDao.FindById(id);
 	    model.addAttribute("user", updatedUserFromDB);
 	    
    	UserEntity updatedUser = userDao.updateUserData(id, userEntity);
    	model.addAttribute("user", updatedUser);
    	model.addAttribute("sucmsg","Profile Updated SuccessFully...!!!");

	    return "profile";  // Return to the user home page after updating
	}

    

}

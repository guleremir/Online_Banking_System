package com.onlinebankingsystem.onlinebankingsystem.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.onlinebankingsystem.onlinebankingsystem.models.User;
import com.onlinebankingsystem.onlinebankingsystem.services.UserService;

@RestController
public class UserController {

	@Autowired
	private UserService userService;
	
	 @GetMapping("/user")
	 public List<User> getWithdraws(){
			return userService.getAllUsers();
	 }
 
	 @GetMapping("/user/{id}")
	 public User getWithdrawById(Integer id) {
		  return userService.getUserById(id);
	 }
}

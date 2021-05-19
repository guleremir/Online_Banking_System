package com.onlinebankingsystem.onlinebankingsystem.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.onlinebankingsystem.onlinebankingsystem.models.Account;
import com.onlinebankingsystem.onlinebankingsystem.services.AccountService;

@RestController
public class AccountController {

	@Autowired
	private AccountService withdrawService;
	
	 @GetMapping("/account")
	 public List<Account> getAccounts(){
			return withdrawService.getAllAccounts();
	 }
 
	 @GetMapping("/account/{id}")
	 public Account getAccountById(Integer id) {
		  return withdrawService.getAccountById(id);
	 }
}

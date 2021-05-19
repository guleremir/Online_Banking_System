package com.onlinebankingsystem.onlinebankingsystem.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.onlinebankingsystem.onlinebankingsystem.models.Account;
import com.onlinebankingsystem.onlinebankingsystem.models.BankTeller;
import com.onlinebankingsystem.onlinebankingsystem.models.Branch;
import com.onlinebankingsystem.onlinebankingsystem.models.User;
import com.onlinebankingsystem.onlinebankingsystem.services.BankTelleerService;

@RestController
public class BankTellerController {
 
	@Autowired
	private BankTelleerService bankTellerService;
	  
	  @GetMapping("/bankteller/users")
	  public List<User> getUsers(){
		  return bankTellerService.getAllUsers();
	  }
	  
	  @GetMapping("/bankteller/branch")
	  public List<Branch> getBranchs(){
		  return bankTellerService.getAllBranchs();
	  }
	  
	  @GetMapping("/bankteller/accounts")
	  public List<Account> getAccount(){
		  return bankTellerService.getAllAccounts();
	  }
	  
	  @GetMapping("/bankteller/banktellers")
	  public List<BankTeller> getBankTellers(){
		  return bankTellerService.getAllBankTeller();
	  }
	  
	  
	  @GetMapping("/bankteller/users/{id}")
	  public User getUserById(Integer id) {
		  return bankTellerService.getUserById(id);
	  }
	  
	  @GetMapping("/bankteller/banktellers/{id}")
	  public BankTeller getBankTellerById(Integer id) {
		  return bankTellerService.getBankTellerById(id);
	  }
	
}
package com.onlinebankingsystem.onlinebankingsystem.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.onlinebankingsystem.onlinebankingsystem.models.Deposit;
import com.onlinebankingsystem.onlinebankingsystem.services.DepositService;

@RestController
public class DepositController {

	@Autowired
	private DepositService depositService;
	
	 @GetMapping("/deposit")
	 public List<Deposit> getDeposits(){
			return depositService.getAllDeposits();
	 }
 
	 @GetMapping("/deposit/{id}")
	 public Deposit getDepositById(Integer id) {
		  return depositService.getDepositById(id);
	 }
}

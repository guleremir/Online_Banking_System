package com.onlinebankingsystem.onlinebankingsystem.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.onlinebankingsystem.onlinebankingsystem.services.WithdrawService;
import com.onlinebankingsystem.onlinebankingsystem.models.Withdraw;

@RestController
public class WithdrawController {
	
	@Autowired
	private WithdrawService withdrawService;
	
	 @GetMapping("/withdraw")
	 public List<Withdraw> getWithdraws(){
			return withdrawService.getAllWithdraws();
	 }
 
	 @GetMapping("/withdraw/{id}")
	 public Withdraw getWithdrawById(Integer id) {
		  return withdrawService.getWithdrawById(id);
	 }
}

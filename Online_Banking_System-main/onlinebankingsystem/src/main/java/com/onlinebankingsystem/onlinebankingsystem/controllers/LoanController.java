package com.onlinebankingsystem.onlinebankingsystem.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.onlinebankingsystem.onlinebankingsystem.models.Loan;
import com.onlinebankingsystem.onlinebankingsystem.services.LoanService;

@RestController
public class LoanController {

	@Autowired
	private LoanService loanService;
	
	 @GetMapping("/loan")
	 public List<Loan> getLoans(){
			return loanService.getAllLoans();
	 }
 
	 @GetMapping("/loan/{id}")
	 public Loan getLoanById(Integer id) {
		  return loanService.getLoanById(id);
	 }
}

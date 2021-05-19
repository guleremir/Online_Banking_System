package com.onlinebankingsystem.onlinebankingsystem.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.onlinebankingsystem.onlinebankingsystem.models.Branch;
import com.onlinebankingsystem.onlinebankingsystem.services.BranchService;

@RestController
public class BranchController {

	@Autowired
	private BranchService branchService;
	
	 @GetMapping("/branch")
	 public List<Branch> getBranchs(){
			return branchService.getAllBranchs();
	 }
 
	 @GetMapping("/branch/{id}")
	 public Branch getBranchById(Integer id) {
		  return branchService.getBranchById(id);
	 }
}

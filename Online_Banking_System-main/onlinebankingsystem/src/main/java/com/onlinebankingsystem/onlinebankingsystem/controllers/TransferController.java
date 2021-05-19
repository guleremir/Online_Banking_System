package com.onlinebankingsystem.onlinebankingsystem.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.onlinebankingsystem.onlinebankingsystem.models.Transfer;
import com.onlinebankingsystem.onlinebankingsystem.services.TransferService;

@RestController
public class TransferController {

	@Autowired
	private TransferService transferService;
	
	 @GetMapping("/transfer")
	 public List<Transfer> getTransfers(){
			return transferService.getAllTransfers();
	 }
 
	 @GetMapping("/transfer/{id}")
	 public Transfer getTransferById(Integer id) {
		  return transferService.getTransferById(id);
	 }
}

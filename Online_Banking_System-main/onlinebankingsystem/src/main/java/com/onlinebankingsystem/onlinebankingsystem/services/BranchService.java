package com.onlinebankingsystem.onlinebankingsystem.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.onlinebankingsystem.onlinebankingsystem.models.Branch;
import com.onlinebankingsystem.onlinebankingsystem.repositories.IBranchRepository;

@Service
public class BranchService implements IBranchServices {
	
	@Autowired
	private IBranchRepository branchRepository;

	@Override
	public List<Branch> getAllBranchs() {
		// TODO Auto-generated method stub
		return branchRepository.findAll();
	}

	@Override
	public Branch getBranchById(Integer id) {
		// TODO Auto-generated method stub
		Optional<Branch> optionalBranch = branchRepository.findById(id);
		Branch branch = null;
		if(optionalBranch.isPresent()) {
			branch = optionalBranch.get();
		}
		else {
			throw new RuntimeException("Admin not found for id id: " + id);
		}
		return branch;
	}
}

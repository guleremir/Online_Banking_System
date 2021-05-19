package com.onlinebankingsystem.onlinebankingsystem.services;

import java.util.List;

import com.onlinebankingsystem.onlinebankingsystem.models.Branch;

public interface IBranchServices {
	List<Branch> getAllBranchs();
	Branch getBranchById(Integer id);
}

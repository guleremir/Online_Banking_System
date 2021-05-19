package com.onlinebankingsystem.onlinebankingsystem.services;

import java.util.List;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;

import com.onlinebankingsystem.onlinebankingsystem.models.Account;
import com.onlinebankingsystem.onlinebankingsystem.models.Admin;
import com.onlinebankingsystem.onlinebankingsystem.models.BankTeller;
import com.onlinebankingsystem.onlinebankingsystem.models.Branch;
import com.onlinebankingsystem.onlinebankingsystem.models.User;

public interface IAdminService {

	List<Admin> getAllAdmins();
	List<User> getAllUsers();
	List<Account> getAllAccounts();
	List<Branch> getAllBranchs();
	List<BankTeller> getAllBankTeller();
	Admin getAdminById(Integer id);
	BankTeller getBankTellerById(Integer id);
	User getUserById(Integer id);
	void deleteUser(Integer id);
	User updateUser(@RequestBody User newUser, @PathVariable Integer id);
	User createUser(@RequestBody User newUser);
}

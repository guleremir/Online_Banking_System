package com.onlinebankingsystem.onlinebankingsystem.services;

import java.util.List;

import com.onlinebankingsystem.onlinebankingsystem.models.Account;
import com.onlinebankingsystem.onlinebankingsystem.models.BankTeller;
import com.onlinebankingsystem.onlinebankingsystem.models.Branch;
import com.onlinebankingsystem.onlinebankingsystem.models.User;

public interface IBankTellerService {

	List<User> getAllUsers();
	List<Account> getAllAccounts();
	List<Branch> getAllBranchs();
	List<BankTeller> getAllBankTeller();
	BankTeller getBankTellerById(Integer id);
	User getUserById(Integer id);
}

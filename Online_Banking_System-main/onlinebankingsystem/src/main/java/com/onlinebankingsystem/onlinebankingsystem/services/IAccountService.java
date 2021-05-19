package com.onlinebankingsystem.onlinebankingsystem.services;

import java.util.List;

import com.onlinebankingsystem.onlinebankingsystem.models.Account;

public interface IAccountService {
	List<Account> getAllAccounts();
	Account getAccountById(Integer id);
}

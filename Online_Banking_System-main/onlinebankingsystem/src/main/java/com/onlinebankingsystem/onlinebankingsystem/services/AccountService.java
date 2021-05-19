package com.onlinebankingsystem.onlinebankingsystem.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.onlinebankingsystem.onlinebankingsystem.models.Account;
import com.onlinebankingsystem.onlinebankingsystem.repositories.IAccountRepository;

@Service
public class AccountService implements IAccountService{

	@Autowired
	private IAccountRepository accountRepository;
	
	public AccountService(IAccountRepository accountRepository) {
		super();
		this.accountRepository = accountRepository;
	}

	@Override
	public List<Account> getAllAccounts() {
		// TODO Auto-generated method stub
		return accountRepository.findAll();
	}

	@Override
	public Account getAccountById(Integer id) {
		// TODO Auto-generated method stub
		Optional<Account> optionalAccount = accountRepository.findById(id);
		Account account = null;
		if(optionalAccount.isPresent()) {
			account = optionalAccount.get();
		}
		else {
			throw new RuntimeException("Admin not found for id id: " + id);
		}
		return account;
	}
}

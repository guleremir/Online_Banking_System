package com.onlinebankingsystem.onlinebankingsystem.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.onlinebankingsystem.onlinebankingsystem.models.Withdraw;
import com.onlinebankingsystem.onlinebankingsystem.repositories.IWithdrawRepository;

@Service
public class WithdrawService implements IWithdrawService {
	
	@Autowired
	private IWithdrawRepository withdrawRepository;

	public WithdrawService(IWithdrawRepository withdrawRepository) {
		super();
		this.withdrawRepository = withdrawRepository;
	}

	@Override
	public List<Withdraw> getAllWithdraws() {
		// TODO Auto-generated method stub
		return withdrawRepository.findAll();
	}

	@Override
	public Withdraw getWithdrawById(Integer id) {
		// TODO Auto-generated method stub
		Optional<Withdraw> optionalWithdraw = withdrawRepository.findById(id);
		Withdraw withdraw = null;
		if(optionalWithdraw.isPresent()) {
			withdraw = optionalWithdraw.get();
		}
		else {
			throw new RuntimeException("Admin not found for id id: " + id);
		}
		return withdraw;
	}
	
	
}

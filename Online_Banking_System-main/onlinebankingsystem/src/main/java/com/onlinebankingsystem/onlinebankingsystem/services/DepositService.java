package com.onlinebankingsystem.onlinebankingsystem.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.onlinebankingsystem.onlinebankingsystem.models.Deposit;
import com.onlinebankingsystem.onlinebankingsystem.repositories.IDepositRepository;

@Service
public class DepositService implements IDepositService {
	
	@Autowired
	private IDepositRepository depositRepository;

	public DepositService(IDepositRepository depositRepository) {
		super();
		this.depositRepository = depositRepository;
	}

	@Override
	public List<Deposit> getAllDeposits() {
		// TODO Auto-generated method stub
		return depositRepository.findAll();
	}

	@Override
	public Deposit getDepositById(Integer id) {
		// TODO Auto-generated method stub
		Optional<Deposit> optionalDeposit = depositRepository.findById(id);
		Deposit deposit = null;
		if(optionalDeposit.isPresent()) {
			deposit = optionalDeposit.get();
		}
		else {
			throw new RuntimeException("Admin not found for id id: " + id);
		}
		return deposit;
	}
}

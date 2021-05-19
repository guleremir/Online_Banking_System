package com.onlinebankingsystem.onlinebankingsystem.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.onlinebankingsystem.onlinebankingsystem.models.Loan;
import com.onlinebankingsystem.onlinebankingsystem.repositories.ILoanRepository;

@Service
public class LoanService implements ILoanService {

	@Autowired
	private ILoanRepository loanRepository;

	public LoanService(ILoanRepository loanRepository) {
		super();
		this.loanRepository = loanRepository;
	}

	@Override
	public List<Loan> getAllLoans() {
		// TODO Auto-generated method stub
		return loanRepository.findAll();
	}

	@Override
	public Loan getLoanById(Integer id) {
		// TODO Auto-generated method stub
		Optional<Loan> optionalLoan = loanRepository.findById(id);
		Loan loan = null;
		if(optionalLoan.isPresent()) {
			loan = optionalLoan.get();
		}
		else {
			throw new RuntimeException("Admin not found for id id: " + id);
		}
		return loan;
	}
}

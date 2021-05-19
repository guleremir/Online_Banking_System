package com.onlinebankingsystem.onlinebankingsystem.services;

import java.util.List;

import com.onlinebankingsystem.onlinebankingsystem.models.Loan;

public interface ILoanService {
	List<Loan> getAllLoans();
	Loan getLoanById(Integer id);
}

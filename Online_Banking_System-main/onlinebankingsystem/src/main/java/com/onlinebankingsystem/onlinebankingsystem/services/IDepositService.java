package com.onlinebankingsystem.onlinebankingsystem.services;

import java.util.List;

import com.onlinebankingsystem.onlinebankingsystem.models.Deposit;

public interface IDepositService {
	List<Deposit> getAllDeposits();
	Deposit getDepositById(Integer id);
}

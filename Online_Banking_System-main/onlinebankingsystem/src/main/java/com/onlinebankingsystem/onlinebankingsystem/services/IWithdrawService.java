package com.onlinebankingsystem.onlinebankingsystem.services;

import java.util.List;

import com.onlinebankingsystem.onlinebankingsystem.models.Withdraw;

public interface IWithdrawService {
	List<Withdraw> getAllWithdraws();
	Withdraw getWithdrawById(Integer id);
}

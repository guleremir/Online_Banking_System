package com.onlinebankingsystem.onlinebankingsystem.services;

import java.util.List;

import com.onlinebankingsystem.onlinebankingsystem.models.Transfer;

public interface ITransferService {
	List<Transfer> getAllTransfers();
	Transfer getTransferById(Integer id);
}

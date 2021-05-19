package com.onlinebankingsystem.onlinebankingsystem.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.onlinebankingsystem.onlinebankingsystem.models.Transfer;
import com.onlinebankingsystem.onlinebankingsystem.repositories.ITransferRepository;

@Service
public class TransferService implements ITransferService {
	
	@Autowired
	private ITransferRepository transferRepository;

	public TransferService(ITransferRepository transferRepository) {
		super();
		this.transferRepository = transferRepository;
	}

	@Override
	public List<Transfer> getAllTransfers() {
		// TODO Auto-generated method stub
		return transferRepository.findAll();
	}

	@Override
	public Transfer getTransferById(Integer id) {
		// TODO Auto-generated method stub
		Optional<Transfer> optionalTransfer = transferRepository.findById(id);
		Transfer transfer = null;
		if(optionalTransfer.isPresent()) {
			transfer = optionalTransfer.get();
		}
		else {
			throw new RuntimeException("Admin not found for id id: " + id);
		}
		return transfer;
	}
}

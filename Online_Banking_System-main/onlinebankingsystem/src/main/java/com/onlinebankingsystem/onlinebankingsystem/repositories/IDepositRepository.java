package com.onlinebankingsystem.onlinebankingsystem.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.onlinebankingsystem.onlinebankingsystem.models.Deposit;

public interface IDepositRepository extends JpaRepository<Deposit,Integer> {
	
}

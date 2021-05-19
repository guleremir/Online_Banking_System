package com.onlinebankingsystem.onlinebankingsystem.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.onlinebankingsystem.onlinebankingsystem.models.Withdraw;

public interface IWithdrawRepository extends JpaRepository<Withdraw,Integer> {

}

package com.onlinebankingsystem.onlinebankingsystem.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.onlinebankingsystem.onlinebankingsystem.models.Loan;

public interface ILoanRepository extends JpaRepository<Loan,Integer>{

}

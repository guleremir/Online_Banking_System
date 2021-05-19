package com.onlinebankingsystem.onlinebankingsystem.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import com.onlinebankingsystem.onlinebankingsystem.models.BankTeller;

public interface IBankTellerRepository extends JpaRepository<BankTeller, Integer>{

}

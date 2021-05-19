package com.onlinebankingsystem.onlinebankingsystem.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.onlinebankingsystem.onlinebankingsystem.models.Admin;

public interface IAdminRepository extends JpaRepository<Admin,Integer>{

}

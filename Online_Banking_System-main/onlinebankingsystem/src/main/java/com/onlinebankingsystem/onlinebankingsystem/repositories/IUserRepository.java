package com.onlinebankingsystem.onlinebankingsystem.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.onlinebankingsystem.onlinebankingsystem.models.User;

public interface IUserRepository extends JpaRepository<User, Integer> {

}

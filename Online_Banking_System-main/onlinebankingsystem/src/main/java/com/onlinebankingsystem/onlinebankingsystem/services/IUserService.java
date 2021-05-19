package com.onlinebankingsystem.onlinebankingsystem.services;

import java.util.List;

import com.onlinebankingsystem.onlinebankingsystem.models.User;

public interface IUserService {
	List<User> getAllUsers();
	User getUserById(Integer id);
}

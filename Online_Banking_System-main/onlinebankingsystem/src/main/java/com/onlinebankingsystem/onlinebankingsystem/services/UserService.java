package com.onlinebankingsystem.onlinebankingsystem.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.onlinebankingsystem.onlinebankingsystem.models.User;
import com.onlinebankingsystem.onlinebankingsystem.repositories.IUserRepository;

@Service
public class UserService implements IUserService{

	@Autowired
	private IUserRepository userRepository;


	public UserService(IUserRepository userRepository) {
		super();
		this.userRepository = userRepository;
	}

	@Override
	public List<User> getAllUsers() {
		// TODO Auto-generated method stub
		return userRepository.findAll();
	}

	@Override
	public User getUserById(Integer id) {
		// TODO Auto-generated method stub
		Optional<User> optionalUser = userRepository.findById(id);
		User user = null;
		if(optionalUser.isPresent()) {
			user = optionalUser.get();
		}
		else {
			throw new RuntimeException("Admin not found for id id: " + id);
		}
		return user;
	}
}

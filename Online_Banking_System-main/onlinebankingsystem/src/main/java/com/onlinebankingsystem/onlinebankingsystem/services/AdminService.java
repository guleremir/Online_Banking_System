package com.onlinebankingsystem.onlinebankingsystem.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.onlinebankingsystem.onlinebankingsystem.models.Account;
import com.onlinebankingsystem.onlinebankingsystem.models.Admin;
import com.onlinebankingsystem.onlinebankingsystem.models.BankTeller;
import com.onlinebankingsystem.onlinebankingsystem.models.Branch;
import com.onlinebankingsystem.onlinebankingsystem.models.User;

import com.onlinebankingsystem.onlinebankingsystem.repositories.IAccountRepository;
import com.onlinebankingsystem.onlinebankingsystem.repositories.IAdminRepository;
import com.onlinebankingsystem.onlinebankingsystem.repositories.IBankTellerRepository;
import com.onlinebankingsystem.onlinebankingsystem.repositories.IBranchRepository;
import com.onlinebankingsystem.onlinebankingsystem.repositories.IUserRepository;

@Service
public class AdminService implements IAdminService {

	@Autowired
    private IAdminRepository adminRepository;
  	
  	@Autowired
  	private IUserRepository userRepository;
  	
  	@Autowired
  	private IBankTellerRepository bankTellerRepository;
  	
  	@Autowired 
  	private IBranchRepository branchRepository;
  	
  	@Autowired
  	private IAccountRepository accountRepository;
  	
  	
	public AdminService(IAdminRepository adminRepository, IUserRepository userRepository,
			IBankTellerRepository bankTellerRepository, IBranchRepository branchRepository,
			IAccountRepository accountRepository) {
		super();
		this.adminRepository = adminRepository;
		this.userRepository = userRepository;
		this.bankTellerRepository = bankTellerRepository;
		this.branchRepository = branchRepository;
		this.accountRepository = accountRepository;
	}

	@Override
	public List<Admin> getAllAdmins() {
		// TODO Auto-generated method stub
		return adminRepository.findAll();
	}

	@Override
	public List<User> getAllUsers() {
		// TODO Auto-generated method stub
		return userRepository.findAll();
	}

	@Override
	public List<Account> getAllAccounts() {
		// TODO Auto-generated method stub
		return accountRepository.findAll();
	}

	@Override
	public List<Branch> getAllBranchs() {
		// TODO Auto-generated method stub
		return branchRepository.findAll();
	}

	@Override
	public List<BankTeller> getAllBankTeller() {
		// TODO Auto-generated method stub
		return bankTellerRepository.findAll();
	}

	@Override
	public Admin getAdminById(Integer id) {
		// TODO Auto-generated method stub
		Optional<Admin> optionalAdmin = adminRepository.findById(id);
		Admin admin = null;
		if(optionalAdmin.isPresent()) {
			admin = optionalAdmin.get();
		}
		else {
			throw new RuntimeException("Admin not found for id id: " + id);
		}
		return admin;
	}

	@Override
	public BankTeller getBankTellerById(Integer id) {
		// TODO Auto-generated method stub
		Optional<BankTeller> optionalBankTeller = bankTellerRepository.findById(id);
		BankTeller bankTeller = null;
		if(optionalBankTeller.isPresent()) {
			bankTeller = optionalBankTeller.get();
		}
		else {
			throw new RuntimeException("Admin not found for id id: " + id);
		}
		return bankTeller;
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

	@Override
	public void deleteUser(Integer id) {
		// TODO Auto-generated method stub
		userRepository.deleteById(id);
	}

	

	@Override
	public User createUser(User newUser) {
		// TODO Auto-generated method stub
		return userRepository.save(newUser);
	}

	@Override
	public User updateUser(User newUser, Integer id) {
		// TODO Auto-generated method stub
		return userRepository.findById(id)
				.map(user -> {
					user.setUserAddress(newUser.getUserAddress());
					user.setUserBirthday(newUser.getUserBirthday());
					user.setUserEpost(newUser.getUserEpost());
					user.setUserIdentityNo(newUser.getUserIdentityNo());
					user.setUserName(newUser.getUserName());
					user.setUserPassword(newUser.getUserPassword());
					user.setUserPhone(newUser.getUserPhone());
					user.setUserPlaceOfBirth(newUser.getUserPlaceOfBirth());
					user.setUserSecurityQuestion(newUser.getUserSecurityQuestion());
					user.setUserSurname(newUser.getUserSurname());
					return userRepository.save(user);
				}).orElseGet(() -> {
					newUser.setUserId(id);
					return userRepository.save(newUser);
				});
	}

	

}

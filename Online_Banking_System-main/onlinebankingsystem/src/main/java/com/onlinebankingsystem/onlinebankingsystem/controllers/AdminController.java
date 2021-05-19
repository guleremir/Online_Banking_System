package com.onlinebankingsystem.onlinebankingsystem.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.onlinebankingsystem.onlinebankingsystem.models.Account;
import com.onlinebankingsystem.onlinebankingsystem.models.Admin;
import com.onlinebankingsystem.onlinebankingsystem.models.BankTeller;
import com.onlinebankingsystem.onlinebankingsystem.models.Branch;
import com.onlinebankingsystem.onlinebankingsystem.models.User;
import com.onlinebankingsystem.onlinebankingsystem.services.AdminService;

@RestController
public class AdminController {
	
	  @Autowired
	  private AdminService adminService;	
	
	  
	  @GetMapping("/admin")
	  public List<Admin> getAdmins(){
			return adminService.getAllAdmins();
		}
	  
	  @GetMapping("/admin/users")
	  public List<User> getUsers(){
		  return adminService.getAllUsers();
	  }
	  
	  @GetMapping("/admin/branch")
	  public List<Branch> getBranchs(){
		  return adminService.getAllBranchs();
	  }
	  
	  @GetMapping("/admin/accounts")
	  public List<Account> getAccount(){
		  return adminService.getAllAccounts();
	  }
	  
	  @GetMapping("/admin/banktellers")
	  public List<BankTeller> getBankTellers(){
		  return adminService.getAllBankTeller();
	  }
	  
	  @GetMapping("/admin/{id}")
	  public Admin getAdminById(Integer id) {
		  return adminService.getAdminById(id);
	  }
	  
	  @GetMapping("/admin/users/{id}")
	  public User getUserById(Integer id) {
		  return adminService.getUserById(id);
	  }
	  
	  @GetMapping("/admin/banktellers/{id}")
	  public BankTeller getBankTellerById(Integer id) {
		  return adminService.getBankTellerById(id);
	  }
	  
	  @DeleteMapping("/deleteUser/{id}")
	  public void deleteUser(Integer id) {
		  adminService.deleteUser(id);
	  }
	  
	  @PostMapping("/admin/updateUser")
	  public User updateUser(User newUser, Integer id) {
		  return adminService.updateUser(newUser, id);
	  }
	  
	  @PutMapping("/admin/createUser")
	  public User createUser(User newUser) {
		  return adminService.createUser(newUser);
	  }
	  
	  @RequestMapping("/edit-user")
		public String editUser(@RequestParam Integer id,HttpServletRequest request, @RequestParam User newUser) {
			request.setAttribute("user", adminService.updateUser(newUser, id));
			request.setAttribute("mode", "MODE_UPDATE");
			return "show_customer";
		}
	  
	  @RequestMapping("/admin/delete-user")
	  public String deleteUser(@RequestParam Integer id, HttpServletRequest request) {
		  adminService.deleteUser(id);
		  request.setAttribute("users", adminService.getAllUsers());
		  request.setAttribute("mode", "ALL_USERS");
		  return "del_customers";
		}
}

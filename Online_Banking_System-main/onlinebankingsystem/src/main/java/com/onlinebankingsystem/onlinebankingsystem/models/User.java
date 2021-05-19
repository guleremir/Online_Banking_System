package com.onlinebankingsystem.onlinebankingsystem.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user")
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int userId;
	@Column(nullable = false, length = 50)
	private String userName;
	@Column(nullable = false, length = 50)
	private String userSurname;
	@Column(nullable = false, length = 11, unique = true)
	private String userIdentityNo;
	private Date userBirthday;
	@Column(nullable = false, length = 30)
	private String userPlaceOfBirth;
	@Column(nullable = false, length = 50)
	private String userAddress;
	@Column(nullable = false, length = 11, unique = true)
	private String userPhone;
	@Column(nullable = false, length = 30, unique = true)
	private String userEpost;
	@Column(nullable = false, length = 16)
	private String userPassword;
	@Column(nullable = false, length = 50)
	private String userSecurityQuestion;
	
	public User() {
		
	}

	public User(int userId, String userName, String userSurname, String userIdentityNo, Date userBirthday,
			String userPlaceOfBirth, String userAddress, String userPhone, String userEpost, String userPassword,
			String userSecurityQuestion) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userSurname = userSurname;
		this.userIdentityNo = userIdentityNo;
		this.userBirthday = userBirthday;
		this.userPlaceOfBirth = userPlaceOfBirth;
		this.userAddress = userAddress;
		this.userPhone = userPhone;
		this.userEpost = userEpost;
		this.userPassword = userPassword;
		this.userSecurityQuestion = userSecurityQuestion;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserSurname() {
		return userSurname;
	}

	public void setUserSurname(String userSurname) {
		this.userSurname = userSurname;
	}

	public String getUserIdentityNo() {
		return userIdentityNo;
	}

	public void setUserIdentityNo(String userIdentityNo) {
		this.userIdentityNo = userIdentityNo;
	}

	public Date getUserBirthday() {
		return userBirthday;
	}

	public void setUserBirthday(Date userBirthday) {
		this.userBirthday = userBirthday;
	}

	public String getUserPlaceOfBirth() {
		return userPlaceOfBirth;
	}

	public void setUserPlaceOfBirth(String userPlaceOfBirth) {
		this.userPlaceOfBirth = userPlaceOfBirth;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserEpost() {
		return userEpost;
	}

	public void setUserEpost(String userEpost) {
		this.userEpost = userEpost;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserSecurityQuestion() {
		return userSecurityQuestion;
	}

	public void setUserSecurityQuestion(String userSecurityQuestion) {
		this.userSecurityQuestion = userSecurityQuestion;
	}
	
	
}

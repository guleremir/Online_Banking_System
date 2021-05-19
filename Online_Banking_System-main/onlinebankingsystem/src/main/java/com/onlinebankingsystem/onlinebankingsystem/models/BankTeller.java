package com.onlinebankingsystem.onlinebankingsystem.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "bankteller")
public class BankTeller {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int bankTellerId;
	@Column(nullable = false, length = 50)
	private String bankTellerName;
	@Column(nullable = false, length = 50)
	private String bankTelleSurname;
	@Column(nullable = false, unique = true, length = 11)
	private String bankTellerPhone;
	@Column(nullable = false, unique = true, length = 50)
	private String bankTellerEpost;
	@Column(nullable = false, unique = true, length = 11)
	private String bankTellerIdentityNo;
	private Date bankTellerBirthday;
	@Column(nullable = false, length = 5)
	private String bankTellerGender;
	@Column(nullable = false, unique = true, length = 80)
	private String bankTellerAddress;
	@Column(nullable = false, unique = true, length = 50)
	private String bankTellerPlaceOfBirth;
	@Column(nullable = false, length = 16)
	private String bankTellerPassword;
	
	public BankTeller() {
		
	}

	public BankTeller(int bankTellerId, String bankTellerName, String bankTelleSurname, String bankTellerPhone,
			String bankTellerEpost, String bankTellerIdentityNo, Date bankTellerBirthday, String bankTellerGender,
			String bankTellerAddress, String bankTellerPlaceOfBirth, String bankTellerPassword) {
		super();
		this.bankTellerId = bankTellerId;
		this.bankTellerName = bankTellerName;
		this.bankTelleSurname = bankTelleSurname;
		this.bankTellerPhone = bankTellerPhone;
		this.bankTellerEpost = bankTellerEpost;
		this.bankTellerIdentityNo = bankTellerIdentityNo;
		this.bankTellerBirthday = bankTellerBirthday;
		this.bankTellerGender = bankTellerGender;
		this.bankTellerAddress = bankTellerAddress;
		this.bankTellerPlaceOfBirth = bankTellerPlaceOfBirth;
		this.bankTellerPassword = bankTellerPassword;
	}

	public int getBankTellerId() {
		return bankTellerId;
	}

	public void setBankTellerId(int bankTellerId) {
		this.bankTellerId = bankTellerId;
	}

	public String getBankTellerName() {
		return bankTellerName;
	}

	public void setBankTellerName(String bankTellerName) {
		this.bankTellerName = bankTellerName;
	}

	public String getBankTelleSurname() {
		return bankTelleSurname;
	}

	public void setBankTelleSurname(String bankTelleSurname) {
		this.bankTelleSurname = bankTelleSurname;
	}

	public String getBankTellerPhone() {
		return bankTellerPhone;
	}

	public void setBankTellerPhone(String bankTellerPhone) {
		this.bankTellerPhone = bankTellerPhone;
	}

	public String getBankTellerEpost() {
		return bankTellerEpost;
	}

	public void setBankTellerEpost(String bankTellerEpost) {
		this.bankTellerEpost = bankTellerEpost;
	}

	public String getBankTellerIdentityNo() {
		return bankTellerIdentityNo;
	}

	public void setBankTellerIdentityNo(String bankTellerIdentityNo) {
		this.bankTellerIdentityNo = bankTellerIdentityNo;
	}

	public Date getBankTellerBirthday() {
		return bankTellerBirthday;
	}

	public void setBankTellerBirthday(Date bankTellerBirthday) {
		this.bankTellerBirthday = bankTellerBirthday;
	}

	public String getBankTellerGender() {
		return bankTellerGender;
	}

	public void setBankTellerGender(String bankTellerGender) {
		this.bankTellerGender = bankTellerGender;
	}

	public String getBankTellerAddress() {
		return bankTellerAddress;
	}

	public void setBankTellerAddress(String bankTellerAddress) {
		this.bankTellerAddress = bankTellerAddress;
	}

	public String getBankTellerPlaceOfBirth() {
		return bankTellerPlaceOfBirth;
	}

	public void setBankTellerPlaceOfBirth(String bankTellerPlaceOfBirth) {
		this.bankTellerPlaceOfBirth = bankTellerPlaceOfBirth;
	}

	public String getBankTellerPassword() {
		return bankTellerPassword;
	}

	public void setBankTellerPassword(String bankTellerPassword) {
		this.bankTellerPassword = bankTellerPassword;
	}
	
	
	
}

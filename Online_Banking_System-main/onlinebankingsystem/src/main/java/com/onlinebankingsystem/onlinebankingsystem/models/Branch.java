package com.onlinebankingsystem.onlinebankingsystem.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "branch")
public class Branch {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int branchId;
	@Column(nullable = false, length = 50)
	private String branchName;
	@Column(nullable = false, length = 80)
	private String branchAddress;
	@Column(nullable = false, length = 50)
	private String branchProvince;
	@Column(nullable = false, length = 50)
	private String branchDistrict;
	@Column(nullable = false, length = 11)
	private String branchPhone;
	@Column(nullable = false, length = 50)
	private String branchEmail;

	public Branch() {
		
	}

	public Branch(int branchId, String branchName, String branchAddress, String branchProvince, String branchDistrict,
			String branchPhone, String branchEmail) {
		super();
		this.branchId = branchId;
		this.branchName = branchName;
		this.branchAddress = branchAddress;
		this.branchProvince = branchProvince;
		this.branchDistrict = branchDistrict;
		this.branchPhone = branchPhone;
		this.branchEmail = branchEmail;
	}


	public String getBranchPhone() {
		return branchPhone;
	}

	public void setBranchPhone(String branchPhone) {
		this.branchPhone = branchPhone;
	}

	public String getBranchEmail() {
		return branchEmail;
	}

	public void setBranchEmail(String branchEmail) {
		this.branchEmail = branchEmail;
	}


	public int getBranchId() {
		return branchId;
	}

	public void setBranchId(int branchId) {
		this.branchId = branchId;
	}

	public String getBranchName() {
		return branchName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}

	public String getBranchAddress() {
		return branchAddress;
	}

	public void setBranchAddress(String branchAddress) {
		this.branchAddress = branchAddress;
	}

	public String getBranchProvince() {
		return branchProvince;
	}

	public void setBranchProvince(String branchProvince) {
		this.branchProvince = branchProvince;
	}

	public String getBranchDistrict() {
		return branchDistrict;
	}

	public void setBranchDistrict(String branchDistrict) {
		this.branchDistrict = branchDistrict;
	}
	
	
}

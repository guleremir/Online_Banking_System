package com.onlinebankingsystem.onlinebankingsystem.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "loan")
public class Loan {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int loanId;
	@Column(nullable = false, length = 50)
	private String loanType;
	private double loanAmount;
	@Column(nullable = false, length = 11)
	private String mountOfLoan;
	private double loanBalance;
	private Date loanDate;
	private double interestRate;
	private int userId;
	
	public Loan() {
		
	}

	public Loan(int loanId, String loanType, double loanAmount, String mountOfLoan, double loanBalance, Date loanDate,
			double interestRate, int userId) {
		super();
		this.loanId = loanId;
		this.loanType = loanType;
		this.loanAmount = loanAmount;
		this.mountOfLoan = mountOfLoan;
		this.loanBalance = loanBalance;
		this.loanDate = loanDate;
		this.interestRate = interestRate;
		this.userId = userId;
	}

	public int getLoanId() {
		return loanId;
	}

	public void setLoanId(int loanId) {
		this.loanId = loanId;
	}

	public String getLoanType() {
		return loanType;
	}

	public void setLoanType(String loanType) {
		this.loanType = loanType;
	}

	public double getLoanAmount() {
		return loanAmount;
	}

	public void setLoanAmount(double loanAmount) {
		this.loanAmount = loanAmount;
	}

	public String getMountOfLoan() {
		return mountOfLoan;
	}

	public void setMountOfLoan(String mountOfLoan) {
		this.mountOfLoan = mountOfLoan;
	}

	public double getLoanBalance() {
		return loanBalance;
	}

	public void setLoanBalance(double loanBalance) {
		this.loanBalance = loanBalance;
	}

	public Date getLoanDate() {
		return loanDate;
	}

	public void setLoanDate(Date loanDate) {
		this.loanDate = loanDate;
	}

	public double getInterestRate() {
		return interestRate;
	}

	public void setInterestRate(double interestRate) {
		this.interestRate = interestRate;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	
}

package com.onlinebankingsystem.onlinebankingsystem.models;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "withdraw")
public class Withdraw {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int withdrawId;
	private Date withdrawDate;
	private int accountId;
	private double withdrawAmount;
	
	public Withdraw() {
		
	}

	public Withdraw(int withdrawId, Date withdrawDate, int accountId, double withdrawAmount) {
		super();
		this.withdrawId = withdrawId;
		this.withdrawDate = withdrawDate;
		this.accountId = accountId;
		this.withdrawAmount = withdrawAmount;
	}

	public int getWithdrawId() {
		return withdrawId;
	}

	public void setWithdrawId(int withdrawId) {
		this.withdrawId = withdrawId;
	}

	public Date getWithdrawDate() {
		return withdrawDate;
	}

	public void setWithdrawDate(Date withdrawDate) {
		this.withdrawDate = withdrawDate;
	}

	public int getAccountId() {
		return accountId;
	}

	public void setAccountId(int accountId) {
		this.accountId = accountId;
	}

	public double getWithdrawAmount() {
		return withdrawAmount;
	}

	public void setWithdrawAmount(double withdrawAmount) {
		this.withdrawAmount = withdrawAmount;
	}
	
	
}

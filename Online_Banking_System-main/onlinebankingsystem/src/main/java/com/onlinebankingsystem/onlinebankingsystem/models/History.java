package com.onlinebankingsystem.onlinebankingsystem.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "history")
public class History {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int historyId;
	private int accountNumber;
	@Column(nullable = false, length = 50)
	private String operationType;
	@Column(nullable = false, length = 50)
	private String Method;
	private Date transectionDate;
	private double amount;
	private double chargeAmount;
	
	public History() {
		
	}

	public History(int historyId, int accountNumber, String operationType, String method, Date transectionDate,
			double amount, double chargeAmount) {
		super();
		this.historyId = historyId;
		this.accountNumber = accountNumber;
		this.operationType = operationType;
		Method = method;
		this.transectionDate = transectionDate;
		this.amount = amount;
		this.chargeAmount = chargeAmount;
	}

	public int getHistoryId() {
		return historyId;
	}

	public void setHistoryId(int historyId) {
		this.historyId = historyId;
	}

	public int getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(int accountNumber) {
		this.accountNumber = accountNumber;
	}

	public String getOperationType() {
		return operationType;
	}

	public void setOperationType(String operationType) {
		this.operationType = operationType;
	}

	public String getMethod() {
		return Method;
	}

	public void setMethod(String method) {
		Method = method;
	}

	public Date getTransectionDate() {
		return transectionDate;
	}

	public void setTransectionDate(Date transectionDate) {
		this.transectionDate = transectionDate;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public double getChargeAmount() {
		return chargeAmount;
	}

	public void setChargeAmount(double chargeAmount) {
		this.chargeAmount = chargeAmount;
	}
	
	
}

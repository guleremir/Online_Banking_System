package com.onlinebankingsystem.onlinebankingsystem.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "transfer")
public class Transfer {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int transferId;
	private int toAccountNumber;
	private int fromAccountNumber;
	@Column(nullable = false, length = 30)
	private String method;
	private Date transferDate;
	private double amount;
	
	public Transfer() {
		
	}

	public Transfer(int transferId, int toAccountNumber, int fromAccountNumber, String method, Date transferDate,
			double amount) {
		super();
		this.transferId = transferId;
		this.toAccountNumber = toAccountNumber;
		this.fromAccountNumber = fromAccountNumber;
		this.method = method;
		this.transferDate = transferDate;
		this.amount = amount;
	}

	public int getTransferId() {
		return transferId;
	}

	public void setTransferId(int transferId) {
		this.transferId = transferId;
	}

	public int getToAccountNumber() {
		return toAccountNumber;
	}

	public void setToAccountNumber(int toAccountNumber) {
		this.toAccountNumber = toAccountNumber;
	}

	public int getFromAccountNumber() {
		return fromAccountNumber;
	}

	public void setFromAccountNumber(int fromAccountNumber) {
		this.fromAccountNumber = fromAccountNumber;
	}

	public String getMethod() {
		return method;
	}

	public void setMethod(String method) {
		this.method = method;
	}

	public Date getTransferDate() {
		return transferDate;
	}

	public void setTransferDate(Date transferDate) {
		this.transferDate = transferDate;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}
	
	
}

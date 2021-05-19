package com.onlinebankingsystem.onlinebankingsystem.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Table(name = "account")
public class Account {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int accountId;
	private int userId;
	private double vadebalance;
	private double vadesizbalance;
	private double yatirimbalance;
	private Date openDate;
	
	public Account() {
		
	}


	public Account(int accountId, int userId, double vadebalance, double vadesizbalance,
			double yatirimbalance, Date openDate) {
		super();
		this.accountId = accountId;
		this.userId = userId;
		this.vadebalance = vadebalance;
		this.vadesizbalance = vadesizbalance;
		this.yatirimbalance = yatirimbalance;
		this.openDate = openDate;
	}


	public int getAccountId() {
		return accountId;
	}

	public void setAccountId(int accountId) {
		this.accountId = accountId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public Date getOpenDate() {
		return openDate;
	}

	public void setOpenDate(Date openDate) {
		this.openDate = openDate;
	}


	public double getVadebalance() {
		return vadebalance;
	}


	public void setVadebalance(double vadebalance) {
		this.vadebalance = vadebalance;
	}


	public double getVadesizbalance() {
		return vadesizbalance;
	}


	public void setVadesizbalance(double vadesizbalance) {
		this.vadesizbalance = vadesizbalance;
	}


	public double getYatirimbalance() {
		return yatirimbalance;
	}


	public void setYatirimbalance(double yatirimbalance) {
		this.yatirimbalance = yatirimbalance;
	}
	
	
	
}

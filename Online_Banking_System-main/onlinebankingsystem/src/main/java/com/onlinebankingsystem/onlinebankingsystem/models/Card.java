package com.onlinebankingsystem.onlinebankingsystem.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Table(name = "card")
public class Card {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int cardId;
	@Column(nullable = false, length = 50)
	private String cardType;
	@Column(nullable = false, length = 20)
	private String validThruMonth;
	@Column(nullable = false, length = 10)
	private String validThruYear;
	@Column(nullable = false, length = 3)
	private String cardSecurityCode;
	private Date openDate;
	private int userId;
	
	public Card() {
		
	}

	public Card(int cardId, String cardType, String validThruMonth, String validThruYear, String cardSecurityCode,
			Date openDate, int userId) {
		super();
		this.cardId = cardId;
		this.cardType = cardType;
		this.validThruMonth = validThruMonth;
		this.validThruYear = validThruYear;
		this.cardSecurityCode = cardSecurityCode;
		this.openDate = openDate;
		this.userId = userId;
	}

	public int getCardId() {
		return cardId;
	}

	public void setCardId(int cardId) {
		this.cardId = cardId;
	}

	public String getCardType() {
		return cardType;
	}

	public void setCardType(String cardType) {
		this.cardType = cardType;
	}

	public String getValidThruMonth() {
		return validThruMonth;
	}

	public void setValidThruMonth(String validThruMonth) {
		this.validThruMonth = validThruMonth;
	}

	public String getValidThruYear() {
		return validThruYear;
	}

	public void setValidThruYear(String validThruYear) {
		this.validThruYear = validThruYear;
	}

	public String getCardSecurityCode() {
		return cardSecurityCode;
	}

	public void setCardSecurityCode(String cardSecurityCode) {
		this.cardSecurityCode = cardSecurityCode;
	}

	public Date getOpenDate() {
		return openDate;
	}

	public void setOpenDate(Date openDate) {
		this.openDate = openDate;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	
}

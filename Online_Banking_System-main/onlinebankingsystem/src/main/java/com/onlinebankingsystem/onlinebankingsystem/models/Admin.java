package com.onlinebankingsystem.onlinebankingsystem.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "admin")
public class Admin {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int admin_id;
	@Column(nullable = false, length = 50)
	private String admin_name;
	@Column(nullable = false, length = 50)
	private String admin_surname;
	@Column(nullable = false, unique = true, length = 11)
	private String admin_phone;
	@Column(nullable = false, unique = true, length = 50)
	private String admin_epost;
	@Column(nullable = false, unique = true, length = 11)
	private String admin_identity_no;
	private Date admin_birthday;
	@Column(nullable = false, length = 5)
	private String admin_gender;
	@Column(nullable = false, unique = true, length = 80)
	private String admin_address;
	@Column(nullable = false, unique = true, length = 50)
	private String admin_place_of_birth;
	@Column(nullable = false, length = 16)
	private String admin_password;
	

	
	public Admin() {
		
	}



	public Admin(int admin_id, String admin_name, String admin_surname, String admin_phone, String admin_epost,
			String admin_identity_no, Date admin_birthday, String admin_gender, String admin_address,
			String admin_place_of_birth, String admin_password) {
		super();
		this.admin_id = admin_id;
		this.admin_name = admin_name;
		this.admin_surname = admin_surname;
		this.admin_phone = admin_phone;
		this.admin_epost = admin_epost;
		this.admin_identity_no = admin_identity_no;
		this.admin_birthday = admin_birthday;
		this.admin_gender = admin_gender;
		this.admin_address = admin_address;
		this.admin_place_of_birth = admin_place_of_birth;
		this.admin_password = admin_password;
	}







	public int getAdmin_id() {
		return admin_id;
	}







	public void setAdmin_id(int admin_id) {
		this.admin_id = admin_id;
	}







	public String getAdmin_name() {
		return admin_name;
	}







	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}







	public String getAdmin_surname() {
		return admin_surname;
	}







	public void setAdmin_surname(String admin_surname) {
		this.admin_surname = admin_surname;
	}







	public String getAdmin_phone() {
		return admin_phone;
	}







	public void setAdmin_phone(String admin_phone) {
		this.admin_phone = admin_phone;
	}







	public String getAdmin_epost() {
		return admin_epost;
	}







	public void setAdmin_epost(String admin_epost) {
		this.admin_epost = admin_epost;
	}







	public String getAdmin_identity_no() {
		return admin_identity_no;
	}







	public void setAdmin_identity_no(String admin_identity_no) {
		this.admin_identity_no = admin_identity_no;
	}







	public Date getAdmin_birthday() {
		return admin_birthday;
	}







	public void setAdmin_birthday(Date admin_birthday) {
		this.admin_birthday = admin_birthday;
	}







	public String getAdmin_gender() {
		return admin_gender;
	}







	public void setAdmin_gender(String admin_gender) {
		this.admin_gender = admin_gender;
	}







	public String getAdmin_address() {
		return admin_address;
	}







	public void setAdmin_address(String admin_address) {
		this.admin_address = admin_address;
	}







	public String getAdmin_place_of_birth() {
		return admin_place_of_birth;
	}







	public void setAdmin_place_of_birth(String admin_place_of_birth) {
		this.admin_place_of_birth = admin_place_of_birth;
	}







	public String getAdmin_password() {
		return admin_password;
	}







	public void setAdmin_password(String admin_password) {
		this.admin_password = admin_password;
	}







	
	
	
	
}

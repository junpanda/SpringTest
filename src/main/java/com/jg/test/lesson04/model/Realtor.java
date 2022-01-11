package com.jg.test.lesson04.model;

import javax.xml.crypto.Data;

public class Realtor {
	private int id;
	private String office;
	private String phoneNumber;
	private String address;
	private String grade;
	private Data createdAt;
	private Data updatedAt;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getOffice() {
		return office;
	}
	public void setOffice(String office) {
		this.office = office;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public Data getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Data createdAt) {
		this.createdAt = createdAt;
	}
	public Data getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(Data updatedAt) {
		this.updatedAt = updatedAt;
	}
	
}

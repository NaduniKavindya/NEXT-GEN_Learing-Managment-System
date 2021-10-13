package com.study_package;

public class study_package {

private	int ID;
private	String fname;
private	String lname;
private	String dob;
private	String uname;
private String image;
private String price;



public study_package(int iD, String fname, String lname,String dob,String uname,String image,String price) {

	this.ID = iD;
	this.fname = fname;
	this.lname = lname;
	this.dob = dob;
	this.uname = uname;
	this.image=image;
	this.price=price;
}


public int getID() {
	return ID;
}


public String getFname() {
	return fname;
}

public String getLname() {
	return lname;
}


public String getDob() {
	return dob;
}

public String getUname() {
	return uname;
}


public String getImage() {
	return image;
}


public String getPrice() {
	return price;
}

}

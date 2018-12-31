package com.niit.EComBack.Model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Usercred {
	@Id
	String Emailid;

	@Column(nullable = false)
	String User_Password;

	
	@Column(nullable=false)
	String Role;

	public String getEmailid() {
		return Emailid;
	}

	public void setEmailid(String emailid) {
		Emailid = emailid;
	}

	public String getUser_Password() {
		return User_Password;
	}

	public void setUser_Password(String user_Password) {
		User_Password = user_Password;
	}

	

	public String getRole() {
		return Role;
	}

	public void setRole(String role) {
		Role = role;
	}
	
}

package com.hk.dutyfree.user;

import java.util.ArrayList;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Users {
	private ArrayList<User> User;
	
	public Users() {
		// TODO Auto-generated constructor stub
	}

	public Users(ArrayList<com.hk.dutyfree.user.User> user) {
		super();
		User = user;
	}

	public ArrayList<User> getUser() {
		return User;
	}

	@XmlElement
	public void setUser(ArrayList<User> user) {
		User = user;
	}
	
	
}

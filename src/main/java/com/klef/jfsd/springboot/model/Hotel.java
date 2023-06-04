package com.klef.jfsd.springboot.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="hotel_table")
public class Hotel {
	
	@Id
	@GeneratedValue
	private int id;
	  @Column(nullable = false,length = 200)
	   private String hname;
	  @Column(nullable = false,length = 10)
	   private String location;
	  @Column(nullable = false,unique = true,length = 200)
	  private String Address;
	  @Column(nullable = false,unique = true,length = 200)
	  private String emailid;
	  @Column(nullable = false,unique = true,length = 200)
	   private String username;
	  @Column(nullable = false,length = 200)
	   private String password;
	  @Column(nullable = false,length = 200)
	  private String contactno;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getHname() {
		return hname;
	}
	public void setHname(String hname) {
		this.hname = hname;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getContactno() {
		return contactno;
	}
	public void setContactno(String contactno) {
		this.contactno = contactno;
	}
	@Override
	public String toString() {
		return "Hotel [id=" + id + ", hname=" + hname + ", location=" + location + ", Address=" + Address + ", emailid="
				+ emailid + ", username=" + username + ", password=" + password + ", contactno=" + contactno + "]";
	}
	  
	  
	
	

}

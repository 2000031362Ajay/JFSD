package com.klef.jfsd.springboot.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Book")
public class Book 
{
	
	  @Id
	  @GeneratedValue
	   private int id;
	  @Column(nullable = false,length = 1200)
	   private String name;
	  @Column(nullable = false,length = 2100)
	   private String age;
	  @Column(length = 1200)
	  private String hotelname;
	  @Column(nullable = false,length = 1200)
	   private String checkin;
	  @Column(nullable = false,length = 1200)
	  private String checkout;
	  @Column(nullable = false,length = 1200)
	   private String totalppl;
	  @Column(nullable = false,unique = true,length = 10)
	   private String contactno;
	  @Column(nullable = false,length = 1200)
	  private String payment;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getHotelname() {
		return hotelname;
	}
	public void setHotelname(String hotelname) {
		this.hotelname = hotelname;
	}
	public String getCheckin() {
		return checkin;
	}
	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}
	public String getCheckout() {
		return checkout;
	}
	public void setCheckout(String checkout) {
		this.checkout = checkout;
	}
	public String getTotalppl() {
		return totalppl;
	}
	public void setTotalppl(String totalppl) {
		this.totalppl = totalppl;
	}
	public String getContactno() {
		return contactno;
	}
	public void setContactno(String contactno) {
		this.contactno = contactno;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	@Override
	public String toString() {
		return "Book [id=" + id + ", name=" + name + ", age=" + age + ", hotelname=" + hotelname + ", checkin="
				+ checkin + ", checkout=" + checkout + ", totalppl=" + totalppl + ", contactno=" + contactno
				+ ", payment=" + payment + "]";
	}
	  
	  
	
	

}

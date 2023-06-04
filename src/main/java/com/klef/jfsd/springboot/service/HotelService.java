package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Hotel;

public interface HotelService 
{
	
	public Hotel addhotel(Hotel hotel);
	public Hotel checkhotellogin(String uname,String pwd);
	public Hotel viewhotel(String uname);
	public int changehotelpassword(String hoteloldpwd,String hotelnewpwd,String hoteluname);

}

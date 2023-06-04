package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Hotel;
import com.klef.jfsd.springboot.repository.HotelRepository;

@Service
public class HotelServiceImpl implements HotelService
{
	@Autowired
	private HotelRepository hotelRepository;

	@Override
	public Hotel addhotel(Hotel hotel)
	{
		return hotelRepository.save(hotel);
		
	}

	@Override
	public Hotel checkhotellogin(String uname, String pwd) 
	{
		return hotelRepository.checkhotellogin(uname, pwd);
	}

	@Override
	public Hotel viewhotel(String uname) 
	{
		
		return hotelRepository.viewhotel(uname);
	}

	@Override
	public int changehotelpassword(String hoteloldpwd, String hotelnewpwd, String hoteluname)
	{
		return hotelRepository.updatehotelpassword(hotelnewpwd, hoteloldpwd, hoteluname);
	}

}

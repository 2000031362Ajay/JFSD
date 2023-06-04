package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.model.Hotel;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.EmployeeRepository;
import com.klef.jfsd.springboot.repository.HotelRepository;

@Service
public class AdminServiceImpl implements AdminService
{
	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private EmployeeRepository employeeRepository;
	
	@Autowired
	private HotelRepository hotelRepository;
	
	
	@Override
	public Admin checkadminlogin(String uname, String pwd) 
	{
		return adminRepository.checkadnminlogin(uname, pwd);
	}

	@Override
	public List<Employee> viewallemployees() 
	{
		return (List<Employee>) employeeRepository.findAll();
	}
	
	@Override
	public List<Hotel> viewallhotels() 
	{
		return (List<Hotel>) hotelRepository.findAll();
	}
	
	@Override
	public void deleteemployee(int id)
	{
		employeeRepository.deleteById(id);
		
	}
	
	@Override
	public void deletehotel(int id)
	{
		hotelRepository.deleteById(id);
		
	}

	@Override
	public Employee viewemployeebyid(int id)
	{
		return employeeRepository.findById(id).get();
	}
	
	@Override
	public Hotel viewhotelbyid(int id)
	{
		return hotelRepository.findById(id).get();
	}
	
	
}

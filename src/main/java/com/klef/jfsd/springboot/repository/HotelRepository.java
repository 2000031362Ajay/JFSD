package com.klef.jfsd.springboot.repository;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.model.Hotel;

@Repository
public interface HotelRepository extends CrudRepository<Hotel, Integer>
{
	@Query("select h from Hotel h where username=?1 and password=?2")
	public Hotel checkhotellogin(String uname,String pwd);
	
	@Query("select h from Hotel h where username=?1")
	public Hotel viewhotel(String uname);
	
	@Transactional
	@Modifying
	@Query("update Hotel h set h.password=?1 where h.password=?2 and h.username=?3")
	public int updatehotelpassword(String hotelnewpwd,String hoteloldpwd,String hoteluname);

}

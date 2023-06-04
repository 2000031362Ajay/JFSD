package com.klef.jfsd.springboot.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jmx.export.annotation.ManagedAttribute;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Book;
import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.model.Hotel;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.BookService;
import com.klef.jfsd.springboot.service.EmployeeService;
import com.klef.jfsd.springboot.service.HotelService;

@Controller
public class ClientController
{
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private EmployeeService employeeService;
	
	@Autowired
	private HotelService hotelService;
	
	@Autowired
	private BookService bookService;
	
	
	
	@GetMapping("/")
	public String mainhomedemo()
	{
		return "index";
	}
	
	@GetMapping("/adminlogin")
	public ModelAndView adminlogindemo()
	{
		ModelAndView mv = new ModelAndView("adminlogin");
		
		return mv;
	}
	
	@GetMapping("/employeelogin")
	public ModelAndView employeeogindemo()
	{
		ModelAndView mv = new ModelAndView("employeelogin");
		
		return mv;
	}
	
	@GetMapping("/hotellogin")
	public ModelAndView hotelogindemo()
	{
		ModelAndView mv = new ModelAndView("hotellogin");
		
		return mv;
	}
	
	
	
	@GetMapping("/employeereg")
	public ModelAndView employeeregdemo()
	{
		ModelAndView mv = new ModelAndView("employeeregistration", "emp",new Employee());
		return mv;
	}
	
	@GetMapping("/hotelregistration")
	public ModelAndView hotelregdemo()
	{
		ModelAndView mv = new ModelAndView("hotelregistration", "htl",new Hotel());
		return mv;
	}
	
	@GetMapping("/bookhotel")
	public ModelAndView bookhoteldemo()
	{
		ModelAndView mv = new ModelAndView("bookhotel", "hot",new Book());
		return mv;
	}
	
	@GetMapping("/bookings")
	public ModelAndView viewbooking()
	{
		ModelAndView mv = new ModelAndView("bookings");
		
		return mv;
	}
	
	@GetMapping("/adminhome")
	public ModelAndView adminhomedemo()
	{
		ModelAndView mv = new ModelAndView("adminhome");
		
		return mv;
	}
	
	@GetMapping("/employeehome")
	public ModelAndView employeehomedemo(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView("employeehome");
		
		HttpSession session = request.getSession();
		
		String euname = (String) session.getAttribute("euname");
		
		mv.addObject("euname", euname);
		
		return mv;
	}
	
	@GetMapping("/hotelhome")
	public ModelAndView hotelhomedemo(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView("hotelhome");
		
		HttpSession session = request.getSession();
		
		String hoteluname = (String) session.getAttribute("hoteluname");
		
		mv.addObject("hoteluname", hoteluname);
		
		return mv;
	}
	
	@GetMapping("/viewallemps")
	public ModelAndView viewallempsdemo()
	{
		ModelAndView mv = new ModelAndView("viewallemployees");
		
		List<Employee> emplist = adminService.viewallemployees();
		mv.addObject("emplist",emplist);
		
		return mv;
	}
	
	@GetMapping("/viewallhtl")
	public ModelAndView viewallhtlsdemo()
	{
		ModelAndView mv = new ModelAndView("viewallhotels");
		
		List<Hotel> htllist = adminService.viewallhotels();
		mv.addObject("htllist",htllist);
		
		return mv;
	}
	
	@PostMapping("/checkadminlogin")
	public ModelAndView checkadminlogindemo(HttpServletRequest request)
	{
		ModelAndView mv =  new ModelAndView();
		
		String auname = request.getParameter("auname");
		String apwd = request.getParameter("apwd");
		
		Admin admin = adminService.checkadminlogin(auname, apwd);
		
		if(admin!=null)
		{
			
			HttpSession session = request.getSession();
			
			session.setAttribute("auname", auname);
			
			mv.setViewName("adminhome");
		}
		else
		{
			mv.setViewName("adminlogin");
			mv.addObject("msg", "Invalid username or password");
		}
		
		
		return mv;
	}
	
	
	@PostMapping("/checkemplogin")
	public ModelAndView checkemplogindemo(HttpServletRequest request)
	{
		ModelAndView mv =  new ModelAndView();
		
		String euname = request.getParameter("euname");
		String epwd = request.getParameter("epwd");
		
		Employee emp = employeeService.checkemplogin(euname, epwd);
		
		if(emp!=null)
		{
			HttpSession session = request.getSession();
			
			session.setAttribute("euname", euname);
			
			mv.setViewName("employeehome");
		}
		else
		{
			mv.setViewName("employeelogin");
			mv.addObject("msg", "Invalid username or password");
		}
		
		
		return mv;
	}
	
	@PostMapping("/checkhotellogin")
	public ModelAndView checkhotellogindemo(HttpServletRequest request)
	{
		ModelAndView mv =  new ModelAndView();
		
		String hoteluname = request.getParameter("hoteluname");
		String hotelpwd = request.getParameter("hotelpwd");
		
		Hotel htl = hotelService.checkhotellogin(hoteluname, hotelpwd);
		
		if(htl!=null)
		{
			HttpSession session = request.getSession();
			
			session.setAttribute("hoteluname", hoteluname);
			
			mv.setViewName("hotelhome");
		}
		else
		{
			mv.setViewName("hotellogin");
			mv.addObject("msg", "Invalid username or password");
		}
		
		
		return mv;
	}
	
	
	@PostMapping("/addemployee")
	public String addemployeedemo(@ModelAttribute("emp") Employee employee)
	{
		employeeService.addemployee(employee);
		
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("employeeregistration");
//		mv.addObject("msg", "Employee Registered Successfully");
		
		return "redirect:employeelogin";
	}
	@PostMapping("/addhotel")
	public String addhoteldemo(@ModelAttribute("htl") Hotel hotel)
	{
		hotelService.addhotel(hotel);
		
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("employeeregistration");
//		mv.addObject("msg", "Employee Registered Successfully");
		
		return "redirect:hotellogin";
	}
	
	@PostMapping("/addbookhotel")
	public String bookhotel(@ModelAttribute("hot") Book book)
	{
		bookService.bookhotel(book);
		
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("employeeregistration");
//		mv.addObject("msg", "Employee Registered Successfully");
		
		return "redirect:employeehome";
	}
	
	@GetMapping("/deleteemp")
	public String deleteempdemo(@RequestParam("id") int eid)
	{
		adminService.deleteemployee(eid);
		
		return "redirect:viewallemps";
	}
	
	@GetMapping("/deletehtl")
	public String deletehoteldemo(@RequestParam("id") int hid)
	{
		adminService.deleteemployee(hid);
		
		return "redirect:viewallhtl";
	}
	
	@GetMapping("/viewemp")
	public ModelAndView viewemp(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		
		String euname = (String) session.getAttribute("euname");
		
		Employee emp =  employeeService.viewemployee(euname);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewemployee");
		mv.addObject("emp",emp);
		
		return mv;
	}
	
	@GetMapping("/viewhtl")
	public ModelAndView viewhtl(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		
		String hoteluname = (String) session.getAttribute("hoteluname");
		
		Hotel htl =  hotelService.viewhotel(hoteluname);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewhotel");
		mv.addObject("htl",htl);
		
		return mv;
	}
	
	@GetMapping("/echangepwd")
	public ModelAndView echangepwd(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		
		String euname = (String) session.getAttribute("euname");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("empchangepwd");
		mv.addObject("euname",euname);
		
		return mv;
	}
	
	@GetMapping("/htlchangepwd")
	public ModelAndView htlchangepwd(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		
		String hoteluname = (String) session.getAttribute("hoteluname");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("hotelchangepwd");
		mv.addObject("hoteluname",hoteluname);
		
		return mv;
	}
	
	@PostMapping("/updateemppwd")
	public ModelAndView updateemppwddemo(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("empchangepwd");
		
		HttpSession session = request.getSession();
		
		String euname = (String) session.getAttribute("euname");
		
		String eoldpwd = request.getParameter("eopwd");
		String enewpwd = request.getParameter("enpwd");
		
		int n = employeeService.changeemployeepassword(eoldpwd, enewpwd, euname);
		
		if(n > 0)
		{
			
			mv.addObject("msg","Password Updated Successfully");
		}
		else
		{
			mv.addObject("msg","Old Password is Incorrect");
		}
		
		return mv;
	}
	
	@PostMapping("/updatehtlpwd")
	public ModelAndView updatehtlpwddemo(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("hotelchangepwd");
		
		HttpSession session = request.getSession();
		
		String hoteluname = (String) session.getAttribute("hoteluname");
		
		String htloldpwd = request.getParameter("htlopwd");
		String htlnewpwd = request.getParameter("htlnpwd");
		
		int n = hotelService.changehotelpassword(htloldpwd, htlnewpwd, hoteluname);
		
		if(n > 0)
		{
			
			mv.addObject("msg","Password Updated Successfully");
		}
		else
		{
			mv.addObject("msg","Old Password is Incorrect");
		}
		
		return mv;
	}
	
	@GetMapping("/viewempbyid")
	public ModelAndView viewempbyiddemo(@RequestParam("id") int eid)
	{
		Employee emp = adminService.viewemployeebyid(eid);
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("viewempbyid");
		mv.addObject("emp",emp);
		
		return mv;
	}
	
	@GetMapping("/viewhtlbyid")
	public ModelAndView viewhtlbyiddemo(@RequestParam("id") int hid)
	{
		Hotel htl = adminService.viewhotelbyid(hid);
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("viewhtlbyid");
		mv.addObject("htl",htl);
		
		return mv;
	}
	
}

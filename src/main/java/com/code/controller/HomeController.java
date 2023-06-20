package com.code.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.code.model.UserData;
import com.code.service.UserServices;

@Controller
public class HomeController {

	@Autowired
	private UserServices services;

	@GetMapping("/")
	public String home() {
		return "index.jsp";
	}

	@GetMapping("/register")
	public String register() {
		return "register.jsp";
	}

	@GetMapping("/login")
	public String login() {
		return "login.jsp";
	}

	@PostMapping("/createUser")
	// save data
	// @ModelAttribute --> data contain -> client side object
	public String createuser(@ModelAttribute UserData data) {

		UserData userData = services.createUser(data);
		if (userData != null) {
			System.out.println("register successfully..!!");
		} else {
			System.out.println("register failed..!!!");
		}
		return "redirect:/index.jsp";
	}

	@PostMapping("/delete")
	public String deleteUser(@RequestParam("id") int id) {
		// Delete the user with the provided ID

		for (UserData data : services.getAllData()) {
			if (data.getId() == id) {
				System.out.println(id);
				services.deleteUser(id);
				return "index.jsp";
			}
		}
		return "error.jsp";
	}

	@PostMapping("/login")
	public ModelAndView loginUser(@RequestParam("email") String email, @RequestParam("password") String password) {
		System.out.println("login..!!!!!!!!!!!");
		ModelAndView view= new ModelAndView();
		for (UserData data : services.getAllData()) {
			if (data.getEmail().equals(email)) {
				if (data.getPassword().equals(password)) 
				{	
					
					view.setViewName("profile.jsp");
					view.addObject("id",data.getId());
					view.addObject("name",data.getName());
					view.addObject("address",data.getAddress());
					view.addObject("qualification",data.getQualification());
					view.addObject("email",data.getEmail());
					view.addObject("password",data.getPassword());
					return view;
				}
			}
			view.setViewName("error.jsp");
		}
		return view;
	}
	@PostMapping("/view")
	public ModelAndView DisplayAll()
	{
		System.out.println("all data....******");
		ModelAndView view= new ModelAndView();
		view.addObject("userlist", services.getAllData());
		return view;
	}
	
	public ModelAndView getUserById( @RequestParam("id") int id)
	{
		ModelAndView view=new ModelAndView();
		services.getByID(id);
		
		return view;
		
	}
	
	
	
}

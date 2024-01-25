package com.project.spring.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.spring.Model.Student;
import com.project.spring.Reposity.StudentInfo;

import jakarta.servlet.http.HttpSession;

@Controller
public class StudentHandler {

	@Autowired
	private StudentInfo repo;
	
	@RequestMapping("/")
	public String home()
	{
		return "Registration";
	}
	
	@RequestMapping("/addstudent")
	public String addstudent(@ModelAttribute Student student) {
		System.out.println(student.getId());
		System.out.println(student.getName());
		System.out.println(student.getCity());
		
		repo.save(student);
		
		return "redirect:/get";
	}
	
	@RequestMapping("/get")
	public String getdata(Model m)
	{
		List<Student> al=repo.findAll();
		
		m.addAttribute("e_data",al);
		
		System.out.println(al);
		return "listUser";
	}
	
	@RequestMapping("/{id}")
	public String deleteuser(@PathVariable int id)
	{
		repo.deleteById(id);
		
		return "redirect:/get";
	}
	@RequestMapping("/edit/{id}")
	public String editform(@PathVariable int id,Model m)
	{
		Student ob=repo.findById(id).get();
		
		m.addAttribute("std1",ob);
		return "editform";
	}
	
	@RequestMapping("/update/{id}")
	public String updatedata(@PathVariable int id, @ModelAttribute Student us)
	{
		Student user=repo.findById(id).orElse(null);
		
		if(user!=null)
		{
			user.setName(us.getName());
			user.setCity(us.getCity());
			
			repo.save(user);
		}
		return "redirect:/get";
	}

}

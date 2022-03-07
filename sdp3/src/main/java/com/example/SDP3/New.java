package com.example.SDP3;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class New {
	
	
@RequestMapping("new")
	public String N1(){
	
		return "home.jsp?name=bharath";
	}


	
}

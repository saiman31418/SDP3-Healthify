package com.example.SDP3;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
 
//import org.springframework.web.bind.annotation.RestController;

@Controller
public class Enter 
{


@RequestMapping("enter")
 public String enter(HttpServletRequest req) 
{
	
  
return "enter.html";
}
}

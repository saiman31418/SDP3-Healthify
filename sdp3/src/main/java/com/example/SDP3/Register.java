package com.example.SDP3;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
 
//import org.springframework.web.bind.annotation.RestController;

@Controller
public class Register 
{


@RequestMapping("reg")
 public String hi(HttpServletRequest req) 
{
	
  
return "reg1.html";
}
}

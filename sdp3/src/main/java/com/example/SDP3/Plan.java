package com.example.SDP3;


import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
 
import org.springframework.web.bind.annotation.RestController;

@Controller
public class Plan 
{


@RequestMapping("plan/{name}/{name2}")
 public String getPlan(@PathVariable("name") String name,@PathVariable("name2") String name2) throws IOException 
 
{
	System.out.println(name);
	System.out.println(name2);
	return "/home.jsp?weight="+name+"&orginal="+name2+"";
	
	
	
	
	
	
	
	
	
  

}
}

package com.example.SDP3;

import javax.servlet.*;
import javax.servlet.http.*; 
import javax.servlet.http.HttpServletRequest;

import java.io.IOException;
import java.sql.*;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.*;

@Controller
@ResponseBody
public class GetDetails {
	
	@RequestMapping("get")
	 public void details(HttpServletRequest request,HttpServletResponse res) throws IOException 
	{
		
		String age=request.getParameter("age");
		String weight=request.getParameter("weight");
		String height=request.getParameter("height");
		int a=Integer.parseInt(age);
		int b=Integer.parseInt(weight);
		int c=Integer.parseInt(height);
		int we=0;
		if(a<=20) {
			 we=b-70;
		}
		else if(a>20 && a<=39) {
			 we=b-89;
		}
		else if(a>39 && a<=60) {
			 we=b-91;
		}
		String wei=Integer.toString(we);
		 Cookie wht = new Cookie("weight", wei);
		 System.out.println(wei);
		 res.addCookie(wht);
		 res.sendRedirect("plan/"+wei+"/"+weight+"");
		 
		
		
		
		
		
		
		
		 
		 
		
		
		

		



		
		
		
		
		
		
		
	  
	
	}

}

package com.example.SDP3;

import javax.servlet.*;

import javax.servlet.http.*; 
import javax.servlet.http.HttpServletRequest;

import java.io.IOException;
import java.sql.*;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@ResponseBody
public class Post {
	
	@RequestMapping("post")
	 public void hiiii(HttpServletRequest request,HttpServletResponse res,HttpSession session) throws IOException 
	{
		
		String username=request.getParameter("name");
		String password=request.getParameter("password");
		String email=request.getParameter("email");
		String phone=request.getParameter("number");
		String gender=request.getParameter("gender");
		String date=request.getParameter("date");
		String month=request.getParameter("month");
		String year=request.getParameter("year");
		String day=year+'-'+month+'-'+date;
		





		String adress=request.getParameter("first");
		String add2=request.getParameter("second");
		String pin=request.getParameter("pin");

		String fin=adress+add2+pin;



		try{
		    Class.forName("com.mysql.jdbc.Driver");
		    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ep_database","root","root");
		    Statement st=conn.createStatement();
		    st.executeUpdate(" insert into registerpage( uname, password,email, adress , phonenumber,gender,dob) values('"+username+"','"+password+"','"+email+"','"+fin+"','"+phone+"','"+gender+"','"+day+"')");
		  
		    
		}
		catch(Exception e){
		   System.out.println(e);
		}
		
		res.sendRedirect("/login.html");
		
		
		
		
		
	  
	
	}

}

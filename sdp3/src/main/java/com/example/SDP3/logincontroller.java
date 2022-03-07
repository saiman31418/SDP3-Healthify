package com.example.SDP3;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class logincontroller {

@RequestMapping("logincontroller")	
	public void loginform(HttpServletRequest request,HttpServletResponse res) {
	
	String username=request.getParameter("name");
	
	String password=request.getParameter("password");
	 System.out.println(username);
	
	



	try{
		
	    Class.forName("com.mysql.jdbc.Driver");
	    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ep_database","root","root");
	    Statement st=conn.createStatement();
	    ResultSet rs= st.executeQuery("select password from registerpage where uname='"+username+"'");
	    System.out.println(password);
	    while(rs.next()){
	        String a=rs.getString(1);
	        
	       	
	       	
	       }
	    
	   
	    
	}
	catch(Exception e){
	   System.out.println(e);
	}
	
	
	
		
	}
	
}

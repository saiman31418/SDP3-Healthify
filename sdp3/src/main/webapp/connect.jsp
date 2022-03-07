<%@ page import ="java.sql.*"%>
<%
String username=request.getParameter("name");
String password=request.getParameter("password");
out.println(username+password);

int c=0;
String a=null;
  session.setAttribute("username",username);
session.setMaxInactiveInterval(2*60*60); 


try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ep_database","root","root");
    Statement st=conn.createStatement();
    ResultSet rs=   st.executeQuery("select  password  from registerpage where uname='"+username+"'");
    while(rs.next()){
     a=rs.getString(1);
    	
    	
    }
    if(a.equals(password)){
		response.sendRedirect("enter.html");
	}
	else{
		
	}
}
catch(Exception e){
    out.println(e);
}

%>

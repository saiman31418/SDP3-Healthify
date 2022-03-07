<%@ page import ="java.sql.*"%>
<%
String itemname= request.getParameter("itemname");
String target=  request.getParameter("target");
session.invalidate();
String price=  request.getParameter("cal");
String name=  request.getParameter("name");





try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ep_database","root","root");
    Statement st=conn.createStatement();
    int p = Integer.parseInt(price);
 
  
    st.executeUpdate(" insert into exercise values('"+itemname+"','"+p+"','"+target+"')");
    
    
}
catch(Exception e){
    out.println(e);
}
response.sendRedirect("viewexercise.jsp?name="+name+"");


%>   	    
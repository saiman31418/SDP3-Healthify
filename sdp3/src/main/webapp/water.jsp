<%@ page import ="java.sql.*"%>
<%

String name=(String)session.getAttribute("username");
String g= request.getParameter("glass");
int ge= Integer.parseInt(g);





try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ep_database","root","root");
    Statement st=conn.createStatement();
    
 
  
    st.executeUpdate(" insert into water values('"+name+"','"+ge+"')");
    
    
}
catch(Exception e){
    out.println(e);
}
response.sendRedirect("getwater.jsp");


%>   	    
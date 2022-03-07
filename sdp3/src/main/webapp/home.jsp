<%@ page import ="java.sql.*"%>
<%@ page import ="java.lang.Math"%>

<%

String weight=request.getParameter("weight");
String weight1=request.getParameter("orginal");
int we=Integer.parseInt(weight);
int we1=Integer.parseInt(weight1);
int f=0;
String msg=null;
String pass=null;
if(we>0){
	f=we-we1;
	msg="weight loss of "+we+"kg";
	pass="loss";
	
}
else{
	f=we-we1;
	f=0-f;
	msg="weight gain of "+we+"kg";
	pass="gain";
	
	
}
 
try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ep_database","root","root");
    Statement st=conn.createStatement();
	we=Math.abs(we);
String name=(String)session.getAttribute("username");

 
	
    st.executeUpdate(" insert into targets values('"+name+"','"+pass+"','"+we+"')");
    
}


catch(Exception e){
    out.println(e);
}



%>

<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Weight Loss">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>Home</title>
    <link rel="stylesheet" href="/images/nicepage.css" media="screen">
<link rel="stylesheet" href="/images/Home.css" media="screen">
    <script class="u-script" type="text/javascript" src="/images/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="/images/nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 4.2.6, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "images/default-logo.png"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Home">
    <meta property="og:type" content="website">
  </head>
  <body data-home-page="Home.html" data-home-page-title="Home" class="u-body"><header class="u-clearfix u-grey-70 u-header u-header" id="sec-fc11"><div class="u-clearfix u-sheet u-sheet-1">
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
          <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px;">
            <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#">
              <svg viewBox="0 0 24 24"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
              <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><defs><symbol id="menu-hamburger" viewBox="0 0 16 16" style="width: 16px; height: 16px;"><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</symbol>
</defs></svg>
            </a>
          </div>
          <div class="u-nav-container">
            
          </div>
          <div class="u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
               
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
        <a href="https://nicepage.com" class="u-image u-logo u-image-1">
         
        </a>
       
      </div></header>
    <section class="u-align-left u-clearfix u-image u-shading u-section-1" src="" id="sec-132f" data-image-width="1000" data-image-height="1500">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h1 class="u-text u-text-default u-title u-text-1"><%=msg %></h1>
        <p class="u-large-text u-text u-text-variant u-text-2">Your current weight is <%= we1%>kg you should shift to <%=we1-we%>kg</p>
        <a href='/diet.jsp?plan=<%=pass %>' class="u-btn u-button-style u-palette-2-base u-btn-1">click to proceed to plan</a>
      </div>
    </section>
    <section class="u-align-center u-clearfix u-section-2" id="sec-e1de">
      <div class="u-align-left u-clearfix u-sheet u-sheet-1"></div>
    </section>
    
    
    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-7a14"><div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-small-text u-text u-text-variant u-text-1">Sample text. Click to select the text box. Click again or double click to start editing the text.</p>
      </div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
      <a class="u-link" href="https://nicepage.com/website-templates" target="_blank">
        <span>Website Templates</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="" target="_blank">
        <span>Website Builder Software</span>
      </a>. 
    </section>
  </body>
</html>

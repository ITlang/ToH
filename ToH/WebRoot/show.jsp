<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
   Connection con = null;
   Statement stmt = null;
   ResultSet rs = null;  
   String Name = new String(request.getParameter("cName").getBytes("ISO8859_1"),"UTF-8");
   Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
   con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433; DatabaseName=dbToH","sa","123");
   String SQL="SELECT * FROM users where Name ='"+Name+"'";   
   stmt=con.createStatement();
   rs=stmt.executeQuery(SQL);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'show.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1" /> 
	<link rel="stylesheet" type="text/css" href="style/show.css">

  </head>
  
  <body>
   <img src="images/11.png">
    
    <div id="line"></div>
    
    <div id="jie">
       <%while (rs.next()) { %>
       <%=rs.getString("uIntro") %><br>
       <div id="line"></div>
       <span style="color:red">联系方式：</span><%=rs.getString("Phone") %><br>
       地址:<%=rs.getString("uAddress") %><br>
       <div id="line"></div>
        <% }%> 
    </div>
  </body>
</html>

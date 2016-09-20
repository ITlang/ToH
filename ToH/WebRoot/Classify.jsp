<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
   Connection con=null;
   Statement stmt=null;
   ResultSet rs=null;
   Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
   con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433; DatabaseName=dbToH","sa","123");
   String SQL="SELECT * FROM caipin";
   stmt=con.createStatement();
   rs=stmt.executeQuery(SQL);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>分类</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1" /> 

	<link rel="stylesheet" type="text/css" href="style/Classify.css">

  </head>
  
  <body>
  <a name="ding"></a>
    <div id="header"> 
       <Button id="left">全部商家</Button>
       <span class="right"><a href="select.jsp">搜索</a></span>
       <span class="right">地图</span>
    </div>
    <%while (rs.next()) { %>
    <table id="tab">
       <tr>
         <td><img src="images/11.png"></td>
       </tr>
       <tr>
         <td style="font-size:0.8em;font-style: oblique;"><%=rs.getString("cName") %></td>
       </tr>
       <tr>
         <td><span style="background:#F0F0F0;color:gray"><%=rs.getString("cAddress") %></span></td>
       </tr>
       <tr>
         <td><%=rs.getString("cIntro") %></td>
       </tr>
    </table>
    <p></p>    
     <% } %>
     
      <div style="height:100px"></div>
    <div id="footer">
   <table id="tabfloat">       
      <tr>
         <th><a href="index.jsp" >首页</a></th>
         <th><a href="Classify.jsp#ding" style="color:white">分类</a></th>
         <th><a href="Mine.jsp">我的</a></th>
       </tr>
     </table>
   </div> 
  </body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>我的</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1" /> 

    <link rel="stylesheet" type="text/css" href="style/Mine.css">

  </head>
  
  <body>
     <div id="header">
      <div id="header_left">
       <img src="images/first.png" height="100%" width="100%"/>   
      </div>
      <div id="header_center"><a href="login.html">登录</a></div>
      <div id="header_right">设置</div>
    </div>
    
    <table id="mine_table">
      <tr>
        <td><a href="">收藏</a></td>
        <td class="mine_table_a">评价</td>
        <td class="mine_table_a"><a href="">吐槽</a></td>
      </tr>
    </table>
 
   <div class="mine_money">
   优惠劵/卡 <span id="mine_money_look">查看</span>
   </div>
   
   <div class="mine_money">
   积分
   </div>
   
   <div class="mine_money">
   我是商家
   </div>
   
   <div class="mine_money">
   其他<br><br>
   意见反馈<br><br>
   联系我们<br><br>
   关于APP<br><br><br>
   </div>

   <div id="footer">
   
   <table>
       <tr>
         <th><a href="index.jsp#ding">首页</a></th>
         <th><a href="Classify.jsp">分类</a></th>
         <th><a href="Mine.html" style="color:white">我的</a></th>
       </tr>
     </table>
   </div>   
     
  </body>
</html>

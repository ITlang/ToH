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
    
    <title>首页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1" /> 

    <link rel="stylesheet" type="text/css" href="style/index.css">

  </head>
  
  <body>
   <a name="ding"></a>
     <div id="lunhuantu">
              <ul id="img">
                  <li><a href=" "><img src="images/first.png" /></a></li>
                  <li><a href=" "><img src="images/13.png" /></a></li>
                  <li><a href=" "><img src="images/12.png" /></a></li>
                  <li><a href=" "><img src="images/11.png" /></a></li>
              </ul> 
        </div>                 
    <script type="text/javascript">
        ; (function () {
            var i = 0;
            var $ = function (ID) { return document.getElementById(ID); };
            var timer = null, speed = 1500;
            $("img").getElementsByTagName("li")[0].style.display = "block";
            ; (function () {
                if (i >= $("img").getElementsByTagName("li").length) {
                    for (var j = 0; j < $("img").getElementsByTagName("li").length; j++) {
                        $("img").getElementsByTagName("li")[j].style.display = "none";
                    }
                    i = 1;
                    $("img").getElementsByTagName("li")[0].style.display = "block";
                } else {
                    for (var j = 0; j < $("img").getElementsByTagName("li").length; j++) {
                        //console.log(j+""+i);
                        if (j === i) {
                            $("img").getElementsByTagName("li")[j].style.display = "block";
                        } else {
                            $("img").getElementsByTagName("li")[j].style.display = "none";
                        }
                    }
                    i++;
                }
                timer = setTimeout(arguments.callee, speed);
            })();
        })();
    </script>    
 
    <div id="f1">精彩推荐：</div>
    <p></p>
    <%while (rs.next()) { %>
    <table id="tab">
       <tr>
         <td><a href="show.jsp?cName=<%=rs.getString("cName") %>"><img src="images/<%=rs.getString("cImg") %>"></a></td>
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
         <th><a href="index.jsp#ding" style="color:white">首页</a></th>
         <th><a href="Classify.jsp">分类</a></th>
         <th><a href="Mine.jsp">我的</a></th>
       </tr>
     </table>
     
   </div> 
     
     
  </body>
</html>

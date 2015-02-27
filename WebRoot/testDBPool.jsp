<%--testDBPool.jsp--%>
<%@ page language="java" contentType="text/html;charset=gbk" pageEncoding="gbk"%>
<%@ page import="oracle.pool.database.*,java.io.IOException,java.sql.*;"%>
<html>
  <head>
    <title>测试数据库连接池</title>
  </head>
  <body>
  <table > 
  <tr>
  <td width=10%>ID</td>
  <td width=20%>书名</td>
  <td width=15%>作者</td>
  <td width=20%>出版社</td>
  <td width=15%>出版日期</td>
  <td width=10%>版本</td>
  <td width=10%>价格</td>
  </tr>
<%
String sql = "select * from book";
try {
DBConnect dbc=new DBConnect();
ResultSet rs=dbc.executeQuery("select * from book");
while(rs.next()){
%>
<tr>
<td><%=rs.getInt(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
<td><%=rs.getString(6)%></td>
<td><%=rs.getFloat(7)%></td>
</tr>
<%
}
dbc.close();
} catch (Exception ex) {
	ex.printStackTrace();
}
%>
</table> 

<br>
  </body>
</html>

<%--testBean.jsp--%>
<%@ page language="java" contentType="text/html;charset=gbk" pageEncoding="gbk"%>
<html>
  <head>
    <title>测试useBean动作元素</title>
  </head>
  <body>
  <%
  String cmd=request.getParameter("cmd");
  if(cmd==null)//第一次访问该页,没有填过表,先填表
  {
  %>
  <form name="myform" action="testBean.jsp" method="post">
  <input type=hidden name="cmd" value="reg">
  <table border=0 align=center width=80%>
  <tr>
  <td colspan=2 align=left width=100%><b>用户注册</b></td>
  </tr>
  <tr>
  <td width=30%>用户名</td><td width=70%><input type=text name="userName" size=20></td>
  </tr>
  <tr>
  <td width=30%>密码</td><td width=70%><input type=password name="pwd" size=20></td>
  </tr>
  <tr>
  <td width=30%>真实姓名</td><td width=70%><input type=text name="name" size=20></td>
  </tr>
  <tr>
  <td width=30%>性别</td><td width=70%><input type=radio name="gender" value="male">男&nbsp;&nbsp;<input type=radio name="gender" value="female">女</td>
  </tr>
  <tr>
  <td width=30%>年龄</td><td width=70%><input type=text name="age" size=20></td>
  </tr>
  <tr>
  <td width=30%>电子邮件</td><td width=70%><input type=text name="email" size=20></td>
  </tr>
  <tr>
  <td width=30%>固定电话</td><td width=70%><input type=text name="tel" size=20></td>
  </tr>
  <tr>
  <td width=30%>手机</td><td width=70%><input type=text name="mphone" size=20></td>
  </tr>
  <tr>
  <td colspan=2 align=left><br><input type=submit value="注册"></td>
  </tr>
  </table>
  </form>
  <%}
  else if(cmd!=null&&cmd.equals("reg"))//第二次访问该页,填过表,开始获取用户所填的信息
  {
  %>
  <jsp:useBean id="user" scope="page" class="jsp.test.UserBean"></jsp:useBean>
  <jsp:setProperty name="user" property="*"></jsp:setProperty>
  <p>注册成功!</p>
  <table border=0 align=center width=80%>
  <tr>
  <td width=30%>用户名</td><td width=70%><jsp:getProperty name="user" property="userName"/></td>
  </tr>
  <tr>
  <td width=30%>密码</td><td width=70%><jsp:getProperty name="user" property="pwd"/></td>
  </tr>
  <tr>
  <td width=30%>真实姓名</td><td width=70%><jsp:getProperty name="user" property="name"/></td>
  </tr>
  <tr>
  <td width=30%>性别</td><td width=70%><jsp:getProperty name="user" property="gender"/></td>
  </tr>
  <tr>
  <td width=30%>年龄</td><td width=70%><jsp:getProperty name="user" property="age"/></td>
  </tr>
  <tr>
  <td width=30%>电子邮件</td><td width=70%><jsp:getProperty name="user" property="email"/></td>
  </tr>
  <tr>
  <td width=30%>固定电话</td><td width=70%><jsp:getProperty name="user" property="tel"/></td>
  </tr>
  <tr>
  <td width=30%>手机</td><td width=70%><jsp:getProperty name="user" property="mphone"/></td>
  </tr>
  </table> 
  <%}%>
  
  


<br>
  </body>
</html>

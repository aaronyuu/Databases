<%--testBean.jsp--%>
<%@ page language="java" contentType="text/html;charset=gbk" pageEncoding="gbk"%>
<html>
  <head>
    <title>����useBean����Ԫ��</title>
  </head>
  <body>
  <%
  String cmd=request.getParameter("cmd");
  if(cmd==null)//��һ�η��ʸ�ҳ,û�������,�����
  {
  %>
  <form name="myform" action="testBean.jsp" method="post">
  <input type=hidden name="cmd" value="reg">
  <table border=0 align=center width=80%>
  <tr>
  <td colspan=2 align=left width=100%><b>�û�ע��</b></td>
  </tr>
  <tr>
  <td width=30%>�û���</td><td width=70%><input type=text name="userName" size=20></td>
  </tr>
  <tr>
  <td width=30%>����</td><td width=70%><input type=password name="pwd" size=20></td>
  </tr>
  <tr>
  <td width=30%>��ʵ����</td><td width=70%><input type=text name="name" size=20></td>
  </tr>
  <tr>
  <td width=30%>�Ա�</td><td width=70%><input type=radio name="gender" value="male">��&nbsp;&nbsp;<input type=radio name="gender" value="female">Ů</td>
  </tr>
  <tr>
  <td width=30%>����</td><td width=70%><input type=text name="age" size=20></td>
  </tr>
  <tr>
  <td width=30%>�����ʼ�</td><td width=70%><input type=text name="email" size=20></td>
  </tr>
  <tr>
  <td width=30%>�̶��绰</td><td width=70%><input type=text name="tel" size=20></td>
  </tr>
  <tr>
  <td width=30%>�ֻ�</td><td width=70%><input type=text name="mphone" size=20></td>
  </tr>
  <tr>
  <td colspan=2 align=left><br><input type=submit value="ע��"></td>
  </tr>
  </table>
  </form>
  <%}
  else if(cmd!=null&&cmd.equals("reg"))//�ڶ��η��ʸ�ҳ,�����,��ʼ��ȡ�û��������Ϣ
  {
  %>
  <jsp:useBean id="user" scope="page" class="jsp.test.UserBean"></jsp:useBean>
  <jsp:setProperty name="user" property="*"></jsp:setProperty>
  <p>ע��ɹ�!</p>
  <table border=0 align=center width=80%>
  <tr>
  <td width=30%>�û���</td><td width=70%><jsp:getProperty name="user" property="userName"/></td>
  </tr>
  <tr>
  <td width=30%>����</td><td width=70%><jsp:getProperty name="user" property="pwd"/></td>
  </tr>
  <tr>
  <td width=30%>��ʵ����</td><td width=70%><jsp:getProperty name="user" property="name"/></td>
  </tr>
  <tr>
  <td width=30%>�Ա�</td><td width=70%><jsp:getProperty name="user" property="gender"/></td>
  </tr>
  <tr>
  <td width=30%>����</td><td width=70%><jsp:getProperty name="user" property="age"/></td>
  </tr>
  <tr>
  <td width=30%>�����ʼ�</td><td width=70%><jsp:getProperty name="user" property="email"/></td>
  </tr>
  <tr>
  <td width=30%>�̶��绰</td><td width=70%><jsp:getProperty name="user" property="tel"/></td>
  </tr>
  <tr>
  <td width=30%>�ֻ�</td><td width=70%><jsp:getProperty name="user" property="mphone"/></td>
  </tr>
  </table> 
  <%}%>
  
  


<br>
  </body>
</html>

<%@ page import="example.HelloWorldClient" %>
<%@ page import="cn.fcsca.HelloWorld_PortType" %>
<%@ page import="cn.fcsca.HelloWorldSoapBindingStub" %><%--
  Created by IntelliJ IDEA.
  User: fcsca
  Date: 2018-11-10
  Time: 下午 23:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello</title>
</head>
<body>
<form method="post">
    <input type="text" name="username">
    <br>
    <input type="submit" value="OK">
</form>
<%
    String userName = request.getParameter("username");
    if (userName != null && !"".equals(userName)) {
        HelloWorld_PortType helloWorld_portType = new  HelloWorldSoapBindingStub();
        out.print(helloWorld_portType.sayHelloWorldFrom(userName));
    }
%>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="com.dvdrental.util.Util"%>
<%@page import="com.dvdrental.logger.Logwriter"%>
<%@page import="org.apache.log4j.Logger"%>
<%@page import="org.apache.log4j.lf5.LogLevel"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%Logwriter.getInstance().log(Logger.getLogger(Util.class), LogLevel.ERROR, "this is a test");%>
</body>
</html>
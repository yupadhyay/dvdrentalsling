<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<jsp:include page="../templates/global.jsp"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String contextPath = request.getContextPath()+"/jsp/templates/header.jsp"; %>

<jsp:include page="../templates/header.jsp"/>
<jsp:include page="../templates/leftNav.jsp"></jsp:include>
<div class="left-side" style="width:745px;" >
  <div class="main_image_space"></div>
</div>
<jsp:include page="../templates/footer.jsp"></jsp:include>
</body>
</html>
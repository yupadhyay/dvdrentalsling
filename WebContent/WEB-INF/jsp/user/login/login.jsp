<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="../../templates/global.jsp"></jsp:include>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../../templates/header.jsp"></jsp:include>
<jsp:include page="../../templates/leftNav.jsp"></jsp:include>

<form name="frmLogin1" method="post" action="">
<div align="center">
<div  class="formbox">
		<div align="left" class="formboxheader">LOGIN HERE......</div>
		 
		<div class="formboxcontent" align="center">

			<div class="formbox-left" style="width:49%">
				<SPAN class="formfieldtext" >User Name:</SPAN>
				<SPAN>*&nbsp;</SPAN>
			</div>
			<div class="formbox-right">
				<SPAN><input name="txtEmailAddress" type="text" id="txtEmailAddress"   value="user@user.com"></SPAN>
			</div>
			
			<div class="formbox-left" style="width:49%">

				<SPAN class="formfieldtext" >Password:</SPAN>
				<SPAN>*&nbsp;</SPAN>
			 </div>
		 	<div class="formbox-right">
				<SPAN><input name="txtPassword" type="password" id="txtPassword"   value="user"></SPAN>
		 	</div>
		</div>
		<br clear="all">

	<div align="center"><input type="image" src="<%=request.getContextPath() %>/images/user/login.png"  onClick="return validateLogin(this.form)" alt="Login"  />&nbsp;
	<input type="image" src="<%=request.getContextPath() %>/images/user/reset.png" alt="Reset" onClick="javascript:this.form.reset()"></div>	
</div>
<div class="formboxcontent">
	<div align="left"> 
	<ul>
		<li><a href="">Click here</a> to get help with your email and password.</li>
		<li><a href="">Click here</a> to create a new account.</li>

	</ul>
	</div>
</div>
</div>
</form> 
<jsp:include page="../../templates/footer.jsp"></jsp:include>
</body>
</html>
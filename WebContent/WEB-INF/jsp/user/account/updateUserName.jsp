<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="../../templates/global.jsp"></jsp:include>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../../templates/header.jsp"></jsp:include>
<jsp:include page="../../templates/leftNav.jsp"></jsp:include>
<form name="frmChangeLogin" method="post">
<div align="center">
<div  class="formbox">
			

		<div align="left" class="formboxheader">Change Login</div>
					<div class="formboxcontent" align="center">

			<div class="formbox-left"  style="width:49%">
				<SPAN class="formfieldtext" >Specify Your Password:</SPAN>
				<SPAN>*&nbsp;</SPAN>
			 </div>
		 	<div class="formbox-right" style="width:50%">
				<SPAN><input name="txtPassword" type="password" id="txtPassword"   value=""></SPAN>
		 	</div>

			
			<div class="formbox-left" style="width:49%">
				<SPAN class="formfieldtext" >Current Email Address:</SPAN>
				<SPAN>*&nbsp;</SPAN>
			</div>
			<div class="formbox-right" style="width:50%">
				<SPAN><input name="txtOldEmailAddress" type="text" id="txtOldEmailAddress"   value=""></SPAN>
			</div>
			
			<div class="formbox-left" style="width:49%">

				<SPAN class="formfieldtext" >New Email Address:</SPAN>
				<SPAN>*&nbsp;</SPAN>
			</div>
			<div class="formbox-right" style="width:50%">
				<SPAN><input name="txtNewEmailAddress" type="text" id="txtNewEmailAddress"   value=""></SPAN>
			</div>

			
		</div>

		<br clear="all">
	<div align="center" class="formboxfooter"><a href="javascript:updateLogin()">Update</a>&nbsp;|&nbsp;<a href="accountInfo.jsp">Back to My Account</a></div>	

</div>
</div>
</form> 
<jsp:include page="../../templates/footer.jsp"></jsp:include>
</body>
</html>
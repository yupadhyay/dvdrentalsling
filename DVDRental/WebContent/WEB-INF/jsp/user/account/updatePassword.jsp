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
<form name="frmChangePass" method="post">
<div align="center">
<div  class="formbox">
			

		<div align="left" class="formboxheader">Change Password</div>
				<div class="formboxcontent" align="center">

			<div class="formbox-left" style="width:49%">
				<SPAN class="formfieldtext" >Enter Current Password:</SPAN>
				<SPAN>*&nbsp;</SPAN>
			 </div>
		 	<div class="formbox-right" style="width:50%">
				<SPAN><input name="txtCurrentPassword" type="password" id="txtCurrentPassword"   value=""></SPAN>
		 	</div>
			
			<div class="formbox-left" style="width:49%">

				<SPAN class="formfieldtext" >Enter New Password:</SPAN>
				<SPAN>*&nbsp;</SPAN>
			 </div>
		 	<div class="formbox-right" style="width:50%">
				<SPAN><input name="txtNewPassword1" type="password" id="txtNewPassword1"   value=""></SPAN>
		 	</div>
			
			<div class="formbox-left" style="width:49%">
				<SPAN class="formfieldtext" >Confirm New Password:</SPAN>

				<SPAN>*&nbsp;</SPAN>
			 </div>
		 	<div class="formbox-right" style="width:50%">
				<SPAN><input name="txtNewPassword2" type="password" id="txtNewPassword2"   value=""></SPAN>
		 	</div>
		</div>
		<br clear="all">
	<div align="center" class="formboxfooter"><a href="javascript:updatePassword()">Update</a>&nbsp;|&nbsp;<a href="accountInfo.jsp">Back to My Account</a></div>	
</div>
</div>
</form>
<jsp:include page="../../templates/footer.jsp"></jsp:include>
</body>
</html>
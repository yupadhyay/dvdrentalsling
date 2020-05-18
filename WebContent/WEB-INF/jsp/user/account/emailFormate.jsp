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
<form name="frmEmailFormat" method="post">	
<div align="center">
<div  class="formbox">
	
		<div align="left" class="formboxheader">EMAIL FORMAT</div>
				<div class="formboxcontent" align="left" style="margin-left:25px">
			<br clear="all">

			<div align="left" class="pagefieldtext">Specify the format in which you want to receive email (HTML/Text)</div>
			<br clear="all">
			
			 
			<br clear="all">
			<div class="">
				
				<SPAN><input type="radio" name="rdoEmailFormat" value="H" checked/>HTML&nbsp;
				  <input type="radio" name="rdoEmailFormat" value="T"  />Text	
					
				</SPAN>
			</div>

		</div>
		<br clear="all">
		<div align="center" class="formboxfooter"><a href="javascript:updateEmailFormat()">Update</a>&nbsp;|&nbsp;<a href="accountInfo.jsp">Back to My Account</a></div>

</div>
</div>
</form>

<jsp:include page="../../templates/footer.jsp"></jsp:include>
</body>
</html>
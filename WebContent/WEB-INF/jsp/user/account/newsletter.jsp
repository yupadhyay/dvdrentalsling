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
<form name="frmNewsLetter" method="post">	
<div align="center">
<div  class="formbox">

		<div align="left" class="formboxheader">NEWSLETTER SUBSCRIPTION</div>
				<div class="formboxcontent" align="left" style="margin-left:25px">

			<br clear="all">
			<div align="left" class="pagefieldtext">To subscribe/unsubscribe newsletters</div>
			<br clear="all">
			<div class="">1. Specify whether you want to receive newsletter or not.</div>
			<div class="">2. Check or uncheck the radio button before each option.</div>
			<div class="">3. Click the "Update Subscription" button.</div>
			
			 
			<br clear="all">

			<div class="">
				
				<SPAN><input type="radio" name="rdoNewsletterType" value="Y" checked/>Yes, I prefer to receive newsletter.&nbsp;
				  <input type="radio" name="rdoNewsletterType" value="N"  />No, sorry I am not interested.					
				</SPAN>
			</div>
		</div>
		<br clear="all">
		<div align="center" class="formboxfooter"><a href="javascript:updateNewsletter()">Update Subscription</a>&nbsp;|&nbsp;<a href="accountInfo.jsp">Back to My Account</a></div>

</div>
</div>
</form>

<jsp:include page="../../templates/footer.jsp"></jsp:include>
</body>
</html>
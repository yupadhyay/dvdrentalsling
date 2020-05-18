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
<form name="frmMemshipCancel" method="post">	
<div align="center">
<div  class="formbox">

		<div align="left" class="formboxheader">CANCEL MEMBERSHIP</div>
				<div class="formboxcontent" align="left" style="margin-left:25px">

			<br clear="all">
			<div align="left" class="pagefieldtext">Are you sure you want to cancel?</div>
			<br clear="all">
			<div align="left" style="margin-left:25px">
				<ul>
					<li>Cancellation request will be processed by Admin. It may take 1-3 days for cancellation.</li>
					<li>No refunds or credit will be given for partial periods or unused rentals.</li>

					<li>Outstanding rentals must be mailed back to  IC3 Rental within 7 days of cancellation or we will automatically charge your credit card the Manufacturer's Suggested Retail Price (MSRP) for the unreturned Rental Items.</li>
					<li>You can sign up for the IC3 Rental service again at any time.</li>
				</ul>			
			</div>			 
		</div>
		<br clear="all">
		<div align="center" class="formboxfooter"><a href="javascript:cancelMemship()">CANCEL MEMBERSHIP</a>&nbsp;|&nbsp;<a href="accountInfo.jsp">Back to My Account</a></div>

</div>
</div>
</form>
<jsp:include page="../../templates/footer.jsp"></jsp:include>
</body>
</html>
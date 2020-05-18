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
<div align="center">
<div  class="page">
	<div align="left" class="pageheader">Account : Asdfa Sdfasdf Asdf</div>
	<div class="pagecontent" align="center" style="margin-left:10px">
		<div align="left" class="pagefieldtext">Membership</div>

		<div align="left" style="margin-left:25px">
			<ul>
				<li><a href="terms.jsp">Current Membership Terms</a></li>
				<li><a href="upgrade.jsp">Membership Upgrade</a></li>
				<li><a href="cancel.jsp">CANCEL MEMBERSHIP</a></li>	
								
			</ul>
		</div>
		<div align="left" class="pagefieldtext">Personal Information</div>
		<div align="left" style="margin-left:25px">
			<ul>
				<li><a href="updateUserName.jsp">Update UserName</a></li>
				<li><a href="updatePassword.jsp">Update Password</a></li>
				<li><a href="updateAddress.jsp">Update Name or Postal Address</a></li>
				<li><a href="updateCreditcard.jsp">CREDIT CARD INFORMATION</a></li>
				<li><a href="updateInterest.jsp">Update Area of Interest</a></li>
				<li><a href="newsletter.jsp">NEWSLETTER SUBSCRIPTION</a></li>
				<li><a href="emailFormate.jsp">EMAIL FORMAT</a></li>
			</ul>
		</div>
		<div align="left" class="pagefieldtext">History</div>
		<div align="left" style="margin-left:25px">
			<ul>

				<li><a href="history.jsp">View Rental History</a></li>
				<li><a href="planHistory.jsp">View Subscription Plan History</a></li>
			</ul>
		</div>
		<div align="left" class="pagefieldtext">Miscellaneous</div>
		<div align="left" style="margin-left:25px">
			<ul>

				<li><a   href='buygiftcertificate.jsp' >Gift Certificate</a></li>
				<li><a href="itemRequest.jsp">Request for item</a></li>
				<li><a href="referFriend.jsp">Refer a friend</a></li>
				<li><a href="vacationMode.jsp">Set Vacation Mode</a></li>
				
			</ul>
		</div>
		<div align="left" class="pagefieldtext">Problems</div>

		<div align="left" style="margin-left:25px">
			<ul>
				<li><a href="reportProblem.jsp">Report a  problem</a></li>
				<li><a href="">View Problem Responses From Administrator</a></li>
			</ul>
		</div>
	</div>

</div>
</div>  

<jsp:include page="../../templates/footer.jsp"></jsp:include>
</body>
</html>
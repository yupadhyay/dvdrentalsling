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
	<div align="left" class="pageheader">Rental Item Subscription Program</div>
	<div class="pagecontent" align="center" style="margin-left:10px">
		<div align="left" class="pagefieldtext">Your Program Details</div>

		<div align="left" style="margin-left:25px">
			<ul>
				<li>You are currently in <%//get membership details from database %>.						
				Your subscription ends on <%//Get end date from databse %>
				</li>
				<li>Your current subscription price is <%//Get price from databse %></li>
					
				<!--<li>Your current rental cycle ends on 2010-07-27.</li>-->
			</ul>
		</div>

		<div class="formboxcontent" align="center">
			<div class="formbox-left" style="float:left;width:20%">
				<SPAN class="formfieldtext" >Subscription Type : </SPAN>
				
			</div>
			<div class="formbox-right" style="float:left;width:69%">
				<SPAN>&nbsp;<%//get type from DB %></SPAN>
			</div>
			<div class="formbox-left" style="float:left;width:20%">

				<SPAN class="formfieldtext" >Rental Item Package : </SPAN>
				
			</div>
			<div class="formbox-right" style="float:left;width:69%">
				<SPAN>&nbsp;<%//Get it from database %></SPAN>
			</div>
			<div class="formbox-left" style="float:left;width:20%">
				<SPAN class="formfieldtext" >Amount : </SPAN>

				
			</div>
			<div class="formbox-right" style="float:left;width:69%">
				<SPAN>&nbsp;<%//get it from database %></SPAN>
			</div>
		</div>
		<br clear="all" />

		<div align="left" class="pagefieldtext">General Program Information</div>

		<div align="left" style="margin-left:25px">
			<ul>
				<li>There are no due dates or late fees.</li>
				<li>There are no per-Rental Item rental fees.</li>
				<li>Membership fees cover shipping and handling on all your rentals.</li>
				<li>You may cancel anytime by visiting <a href="">My Account</a>.</li>

				

			</ul>
		</div>
	</div>
	<br clear="all">
		<div align="center" class="formboxfooter"><a href="accountInfo.jsp">Back to My Account</a></div>

</div>
</div> 
<jsp:include page="../../templates/footer.jsp"></jsp:include>
</body>
</html>
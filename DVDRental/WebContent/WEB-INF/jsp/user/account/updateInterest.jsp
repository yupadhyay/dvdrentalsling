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
<form name="frmUserInterest" method="post">	
<div align="center">
<div  class="formbox">
	
		<div align="left" class="formboxheader">USER AREA OF INTEREST</div>
				<div class="formboxcontent" align="center">
			<br clear="all">

			<div class="">
			Please provide us with your area of interest which help us recommend you Rental Items of your choice.			</div>
			<br clear="all">
			<div class="formbox-left" style="width:49%">
				<SPAN class="formfieldtext" >:</SPAN>
				<SPAN>&nbsp;</SPAN>
			</div>
			<div class="formbox-right" style="width:50%">

				<SPAN>
					<select name="selCategory[]" multiple="multiple" size="<%//Get number of avalible interest from database %>">
					<%//For loop to get all the interest from database %>
					<option value="<%//index %>"><%//get name %></option>
					<%//End of for loop %>							
					</select>
				</SPAN>
			</div>
		</div>

		<br clear="all">
		<div align="center" class="formboxfooter"><a href="javascript:updateInterest()">Update</a>&nbsp;|&nbsp;<a href="accountInfo.jsp">Back to My Account</a></div>

</div>
</div>
</form>
<jsp:include page="../../templates/footer.jsp"></jsp:include>
</body>
</html>
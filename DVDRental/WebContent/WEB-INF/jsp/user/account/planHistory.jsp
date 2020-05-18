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
	<form name="frmRentalHistory" method="post">

	<div class="gamequeuehead" align="left">Subscription Plan History</div>
	
	

	<span id="mygameqlist" style="width:100%;float:left;">

			<div align="center" style="width:100%;float:left;">
				<!--<div class="tablemessage" align="left">Subscription Plan History </div>-->
				
				<div style="width:100%;float:left;">
					<div style="width:32%;float:left;" class="tablecolumnheader" align="left">Subscription Plan</div>
					
					<div style="width:30%;float:left;" class="tablecolumnheader" align="left">Transaction Date</div>
					<div style="width:30%;float:left;" class="tablecolumnheader">Amount</div>
					
				</div>
				<%//For loop to get all the plans by this user %>
		 		 		<div class="tablerow" style="width:100%;float:left;">
					<div style="width:32%;float:left;" align="left">&nbsp;<%//Get type of plan %></div>
					<div style="width:30%;float:left;" align="left"><%//When plan activated %></div>
					<div style="width:30%;float:left;"><%//Amount paid %></div>
				</div>
				<%//End of for loop %>
		 		 	<div class="tablerow" style="width:100%;float:left;">&nbsp;</div>
			</div>

					<div style="width:100%;float:left;padding-bottom:10px;"  align="center" class="gamequeuefooter"><a href="accountInfo.jsp">Back to My Account</a></div>
		
	</span>
	</form>
	</div>

<jsp:include page="../../templates/footer.jsp"></jsp:include>
</body>
</html>
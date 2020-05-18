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
<form name="frmUpgradeMemship" method="post">
<div align="center">
<div  class="formbox">
	<div align="left" class="formboxheader">RENTAL PLANS</div>
			<div class="formboxcontent" align="center">
				<table cellpadding="0"	 cellspacing="0" border="1"    class="tableBorder" width="98%">
					<tr>
						<td align="center" class="tablecolumnheader">Subscription Type</td>
						<td align="center"  class="tablecolumnheader">Rental Item Package</td>
						<td align="center"  class="tablecolumnheader">Amount</td>
					</tr>
					<%//For loop to get all the types from database %>
					<tr>
						<td align="left"><input type="radio" name="rdoSubPlan" value="1"><img src="<%=request.getContextPath() %>/images/rental/cdImage.jpg" align="middle"><%//get type from Database %></td>
						<td>&nbsp;<%//Get Discription from DB %></td>
						<td align="left">&nbsp;<%//get price from Databse %><br>&nbsp;Free Trial Period : 7 days</td>
					</tr>
				</table>
			</div>
			<br clear="all">
			<div align="center" class="formboxfooter"><a href="accountInfo.jsp">Back to My Account</a></div>
</div>
</div>		
</form>
<jsp:include page="../../templates/footer.jsp"></jsp:include>
</body>
</html>
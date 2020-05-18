<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="com.DVDRental.Util.Util"%>
<%@page import="java.util.Calendar"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="../../templates/global.jsp"></jsp:include>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../../templates/header.jsp"></jsp:include>
<jsp:include page="../../templates/leftNav.jsp"></jsp:include>
<form name="frmCreditCard" method="post">
<input type="hidden" name="type" value="">
<input type="hidden" name="card_info_id" value="4" />
<input type="hidden" name="from" value="" />
<div align="center">
<div  class="formbox">
	<div align="left" class="formboxheader">CREDIT CARD INFORMATION</div>
<span id="spnCardInfo"  >
	<div class="formboxcontent" align="center">
		 <div class="formbox-left" style="width:49%">
			<SPAN class="formfieldtext" >Card Owner Name:</SPAN>
			<SPAN>*&nbsp;</SPAN>
		</div>
		 <div class="formbox-right" style="width:50%">
			<SPAN><input name="txtOwner" type="text" id="txtOwner"   value="mmm"></SPAN>

		</div>
		
		<div class="formbox-left" style="width:49%">
			<SPAN class="formfieldtext" >Credit Card Type:</SPAN>
			<SPAN>*&nbsp;</SPAN>
		</div>
		 <div class="formbox-right" style="width:50%">
			<SPAN>
					<select name="selCardType">

						<option value="">select</option>
											
					</select>
			</SPAN>
		</div>
		
		 <div class="formbox-left" style="width:49%">
			<SPAN class="formfieldtext" >Credit Card Number:</SPAN>
			<SPAN>*&nbsp;</SPAN>

		</div>
		 <div class="formbox-right" style="width:50%">
			<SPAN><input name="txtCardNumber" type="text" id="txtCardNumber"   size="20" maxlength="16"     value="4111111111111111"></SPAN>
		</div>
		
		<div class="formbox-left" style="width:49%">
			<SPAN class="formfieldtext" >3-Digit Security Code:</SPAN>
			<SPAN>&nbsp;&nbsp;</SPAN>
		</div>

		 <div class="formbox-right" style="width:50%">
			<SPAN><input name="txtCVMNumber" type="text" id="txtCVMNumber"   size="4" maxlength="3"     value="123"></SPAN>
		</div>
		
		<div class="formbox-left" style="width:49%">
			<SPAN class="formfieldtext" >Expiry Date:</SPAN>
			<SPAN>*&nbsp;</SPAN>
		</div>
		 <div class="formbox-right" style="width:50%">

			<SPAN><select name="selExpmon">
				
					<option value="">Month</option>
					<%for(int i=0;i<12;i++){ %>
					<option value="<%=i%>"><%=Util.getMonthName(i) %></option>
					<%} %>
				 </select>&nbsp;
				  <select name="selExpyear">
				  	<option value="">Year</option>
				  	<%int currentYear = Calendar.getInstance().get(Calendar.YEAR);
				  	for(int i=currentYear;i<currentYear+10;i++){ %>
						<option value="<%=i %>"><%=i %></option>
					<%} %>
				</select>
			</SPAN>
		</div>
				
	</div>	
</span>

	<br clear="all">
	<div align="center" class="formboxfooter"><a href="javascript:updateCreditCard()">Submit</a>&nbsp;|&nbsp;
		<a href="accountInfo.jsp">Back</a></div>	
</div>
</div>
</form>
<jsp:include page="../../templates/footer.jsp"></jsp:include>
</body>
</html>
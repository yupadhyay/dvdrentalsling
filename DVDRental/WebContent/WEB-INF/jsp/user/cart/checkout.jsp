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
	<div class="gamequeuehead" align="left">Checkout</div><form name="frmSignUp" method="post">
	<div class="tablemessage" align="left">
	SHIPPING INFORMATION 
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
	BILLING INFORMATION</div>

	<span id="spanAddress">
	
		<div align="left" style="width:40%;padding-left:20px;float:left;">
			
		<%//Get name %><br><%//Get first line of address %><br><%//get second line %><br><%//get city with zip %><br><%//Get state name %><br><%//get country name %><br>	
				 	<input type="hidden" name="shipp_add_id" value="10">
	
						 	<br>
			<a href="index.php?view=change_add&type=S">Change Shipping Address</a>	
		</div>

		<div align="left" style="width:40%;float:left;">
			
<%//Get name %><br><%//Get first line of address %><br><%//get second line %><br><%//get city with zip %><br><%//Get state name %><br><%//get country name %><br>				
			 	<input type="hidden" name="bill_add_id" value="9">
		<br>
			<a href="index.php?view=change_add&type=B">Change Billing Address</a>	
		</div>

	
	</span>
	<br clear="all">
	<br clear="all">
			<input type="hidden" name="rdoPaymentType" value="C" />

			
	<span id="spnCardInfo" 
			  >
	<div class="tablemessage" align="left">CREDIT CARD INFORMATION </div>
		<div align="left" style="width:100%;padding-left:20px;float:left;">
			
		Credit Card : <br>Card Number : 4111111111111111<br>3 Digit Code : 123<br>Owner Name : mmm<br>Expiry Date : 10-2017<br>		 <input type="hidden" name="card_info_id" value="4">

					<br>
						<a href="index.php?view=update_cc&from=checkout">Update Credit Card Information</a>	
			
					</div>
	
	</span>
	<br clear="all">
	<br clear="all">
	
		<span id="mygameout" style="width:100%;float:left;" >
				<div align="center" style="width:100%;float:left;">

				
				
				<div style="width:100%;float:left;">
				   
					<div style="width:20%;float:left;" class="tablecolumnheader" align="center">&nbsp;</div>	
					<div style="width:35%;float:left;" class="tablecolumnheader" align="left">&nbsp;Rental Item Title</div>
					
					
					
					<div style="width:15%;float:left;" class="tablecolumnheader" align="left">Quantity</div>
					<div style="width:10%;float:left;" class="tablecolumnheader">&nbsp;Price</div>
					
				</div>
				<br />
		 		 		<div class="tablerow" style="width:100%;float:left;">

					<%//For loop to get all the rental item in the queue %>
					<div style="width:20%;float:left;" align="center">
					<img src="<%//get movie Image %>"   height="90" width="90"  border="0"></div>
					<div style="width:25%;float:left;" align="left">&nbsp;<%//Get movie title %></div>
					<div style="width:30%;float:left;" align="center"><%//Get quantity %></div>
					<div style="width:12%;float:left;" align="center"><%//Get amount %></div>
				</div>
				<%//End of for loop %>
				<br />
		 		<div class="tablerow" style="width:85%;float:left;" align="right"><%//Get total amount %></div> 

		 		<div style="width:100%;float:left;padding-bottom:10px;"  align="center" class="gamequeuefooter"><a href="index.php?view=cart" class="pagelink2">Back</a>&nbsp;&nbsp;&nbsp;<a href="javascript:confirmOrder()" class="pagelink2">Confirm Order</a></div>

			</div>
		
	</span>
	</form>
</div>

<jsp:include page="../../templates/footer.jsp"></jsp:include>
</body>
</html>
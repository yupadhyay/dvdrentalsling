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
	<div class="gamequeuehead" align="left">My Cart</div><form name="frmGameCart" method="post">
		<input type="hidden" name="hidChkStr" value="">
		<div class="tablemessage" align="left">What is in my cart? </div>
		<span id="mygamecartprob">
		</span>
	<span id="mygameout" style="width:100%;float:left;" >
		<div align="center" style="width:100%;float:left;">
			<%//If there is no item in Cart %>
			<div class="errMsgType1">
			No Rental Items in cart available.
			</div>
			<%//Else %>
			<div style="width:100%;float:left;">
				    <div style="width:11%;float:left;" class="tablecolumnheader" align="center">Delete</div>
					<div style="width:10%;float:left;" class="tablecolumnheader" align="center">&nbsp;</div>	
					<div style="width:20%;float:left;" class="tablecolumnheader" align="left">&nbsp;Rental Item Title</div>

					<div style="width:13%;float:left;" class="tablecolumnheader" align="center">Category</div>
					
					<div style="width:16%;float:left;" class="tablecolumnheader">Available copies</div>
					<div style="width:9%;float:left;" class="tablecolumnheader" align="left">Quantity</div>
					<div style="width:10%;float:left;" class="tablecolumnheader">&nbsp;Price</div>
					
				</div>
				<br />
			<div class="tablerow" style="width:100%;float:left;">
			<%//For all the item in the cart %>
					<div style="width:12%;float:left;" align="center"><input type="checkbox" name="chkGameIds[]" value=53></div>
					<div style="width:13%;float:left;" align="left"><img src="<%//Get movie Image from database %>"   height="90" width="90"  border="0"></div>
					<div style="width:25%;float:left;" align="left"><%//Get title of item %></div>
					<div style="width:12%;float:left;" align="left"></div>
					<div style="width:11%;float:left;" align="center"><%//Get available copy from DB %><input type="hidden" name="hidAvailQty[]" value="<%//Get quanity %>">			
					</div>
					<div style="width:12%;float:left;" align="center"><input type="text" name="txtGameQty[]" value="1"  size="2"></div>
					<div style="width:12%;float:left;" align="center"><%//Get price form database along with currency symbol %></div>

			</div>
			<%//End of for loop %>
				<br />
		 	<div class="tablerow" style="width:95%;float:left;" align="right"><%//Get sub total of all the item %></div> 
		 	<input type="hidden" name="chkGameIds[]" value="" >	 
				<div style="width:100%;float:left;padding-bottom:10px;"  align="center" class="gamequeuefooter">
				<a href="javascript:updateCart()" class="pagelink2">Update</a>&nbsp;&nbsp;&nbsp;
				<a href="#" class="pagelink2">Continue</a>&nbsp;&nbsp;&nbsp;
				<a href="javascript:checkoutCart()" class="pagelink2">Checkout</a></div>
			</div>
		
	</span>
	</form>

</div>

<jsp:include page="../../templates/footer.jsp"></jsp:include>
</body>
</html>
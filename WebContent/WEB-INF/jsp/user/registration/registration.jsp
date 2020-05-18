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

 <form name="frmSignUp" method="post" action="">
 <input type="hidden" name="promocodeId" value="" />
 <input type="hidden" name="txtPromocode" value="" />
 <input type="hidden" name="giftcode" value="" />
 <div align="">

 <div  style="width:100%;float:left;padding-left:5px" >
 <div  class="formbox">
 		
		<div align="left" class="formboxheader">PROFILE DETAILS</div>
						<div class="formboxcontent" align="center">

			<div class="formbox-left" style="width:49%">
				<SPAN class="formfieldtext" >Email Address:</SPAN>
				<SPAN>*&nbsp;</SPAN>

			</div>
			<div class="formbox-right" style="width:50%">
				<SPAN><input name="txtEmailAddress" type="text" id="txtEmailAddress"   value="">(e.g.johnsmith@hotmail.com)</SPAN>
			</div>
			<div class="formbox-left" style="width:49%">
				<SPAN class="formfieldtext" >Confirm Email Address:</SPAN>
				<SPAN>*&nbsp;</SPAN>

			</div>
			<div class="formbox-right" style="width:50%">
				<SPAN><input name="txtConfirmEmailAddress" type="text" id="txtConfirmEmailAddress"   value=""></SPAN>
			</div>
			
			<div class="formbox-left" style="width:49%">
				<SPAN class="formfieldtext" >Password:</SPAN>
				<SPAN>*&nbsp;</SPAN>
		 </div>

		 <div class="formbox-right" style="width:50%">
				<SPAN><input name="txtPassword" type="password" id="txtPassword"   value=""></SPAN>
		 </div>
		 
		  <div class="formbox-left" style="width:49%">
				<SPAN class="formfieldtext" >Confirm Password:</SPAN>
				<SPAN>*&nbsp;</SPAN>
		 </div>
		 <div class="formbox-right" style="width:50%">

				<SPAN><input name="txtConfirmPassword" type="password" id="txtConfirmPassword"   value=""></SPAN>
		 </div>
		 
		  <div class="formbox-left" style="width:49%">
				<SPAN class="formfieldtext" >Reference Code:</SPAN>
				<SPAN>&nbsp;</SPAN>
		 </div>
		 <div class="formbox-right" style="width:50%">
				<SPAN><input name="txtReferencecode" type="text" id="txtReferencecode"   value=""></SPAN>&nbsp;if any		 </div>

		  <div class="formbox-left" style="width:49%">
				<SPAN class="formfieldtext" >Do you want to receive newsletter from the site?:</SPAN>
				<SPAN>*&nbsp;</SPAN>
		 </div>
		 <div class="formbox-right" style="width:50%">
				<SPAN><input type="radio" name="rdoNewsletterType" value="Y"  checked="checked"  />Yes&nbsp;
				  <input type="radio" name="rdoNewsletterType" value="N" />No		
			</SPAN>

		 </div>
	</div>
	
</div>

	<br clear="all">

 <div  class="formbox">
	
	
	<div align="left" class="formboxheader">BILLING INFORMATION</div>
	<div class="formboxcontent" align="center">

		 <div class="formbox-left" style="width:49%">
			<SPAN class="formfieldtext" >First Name:</SPAN>
			<SPAN>*&nbsp;</SPAN>
		</div>
		 <div class="formbox-right" style="width:50%">
			<SPAN><input name="txtFirstName" type="text" id="txtFirstName"   value=""></SPAN>
		</div>
		
		 <div class="formboxcontent" align="center">

		 <div class="formbox-left" style="width:49%">
			<SPAN class="formfieldtext" >Middle Name:</SPAN>
			<SPAN>&nbsp;&nbsp;</SPAN>
		</div>
		 <div class="formbox-right" style="width:50%">
			<SPAN><input name="txtMiddleName" type="text" id="txtMiddleName"   value=""></SPAN>
		</div>
		
		 <div class="formbox-left" style="width:49%">

			<SPAN class="formfieldtext" >Last Name:</SPAN>
			<SPAN>*&nbsp;</SPAN>
		</div>
		 <div class="formbox-right" style="width:50%">
			<SPAN><input name="txtLastName" type="text" id="txtLastName"   value=""></SPAN>
		</div>
		
		<div class="formbox-left" style="width:49%">
			<SPAN class="formfieldtext" >Address 1:</SPAN>

			<SPAN>*&nbsp;</SPAN>
		</div>
		 <div class="formbox-right" style="width:50%">
			<SPAN><input name="txtAddress1" type="text" id="txtAddress1"   value=""></SPAN>
		</div>
		
		<div class="formbox-left" style="width:49%">
			<SPAN class="formfieldtext" >Address 2:</SPAN>
			<SPAN>&nbsp;&nbsp;</SPAN>

		</div>
		 <div class="formbox-right" style="width:50%">
			<SPAN><input name="txtAddress2" type="text" id="txtAddress2"   value=""></SPAN>
		</div>
		
		<div class="formbox-left" style="width:49%">
			<SPAN class="formfieldtext" >City:</SPAN>
			<SPAN>*&nbsp;</SPAN>
		</div>

		 <div class="formbox-right" style="width:50%">
			<SPAN><input name="txtCity" type="text" id="txtCity"   value=""></SPAN>
		</div>
		
		<div class="formbox-left" style="width:49%">
			<SPAN class="formfieldtext" >Country:</SPAN>
			<SPAN>*&nbsp;</SPAN>
		</div>
		 <div class="formbox-right" style="width:50%">

			<SPAN><select name="selCountry" onChange="javascript:populateState()">
							<option value="">select</option>
													<option value="1"
								
							
							>Ghana</option>
													<option value="2"
								
							
							>South Africa</option>
													<option value="8"
								
							
							>Nigeria</option>
							
						</select>
			</SPAN>

		</div>
		
		<div class="formbox-left" style="width:49%">
			<SPAN class="formfieldtext" >State:</SPAN>
			<SPAN>&nbsp;&nbsp;</SPAN>
		</div>
		 <div class="formbox-right" style="width:50%">
			<SPAN><span id="spnStateCombo">
					<select name="selState">

							<option value="">select</option>
							
			  </select>
				 </span>
			</SPAN>
		</div>
		
		<div class="formbox-left" style="width:49%">
			<SPAN class="formfieldtext" >Zipcode:</SPAN>
			<SPAN>*&nbsp;</SPAN>

		</div>
		 <div class="formbox-right" style="width:50%">
			<SPAN><input name="txtZipcode" type="text" id="txtZipcode"   value=""></SPAN>
		</div>
		
		<div class="formbox-left" style="width:49%">
			<SPAN class="formfieldtext" >Phone (R):</SPAN>
			<SPAN>*&nbsp;</SPAN>
		</div>

		 <div class="formbox-right" style="width:50%">
			<SPAN><input name="txtPhoneR1" type="text" id="txtPhoneR1" size="4" maxlength="3"   value=""> <input name="txtPhoneR2" type="text" id="txtPhoneR2"  size="4" maxlength="3"    value=""> <input name="txtPhoneR3" type="text" id="txtPhoneR3"  size="5" maxlength="4"      value=""></SPAN>
		</div>
		
		<div class="formbox-left" style="width:49%">
			<SPAN class="formfieldtext" >Phone (O):</SPAN>
			<SPAN>&nbsp;&nbsp;</SPAN>
		</div>

		 <div class="formbox-right" style="width:50%">
			<SPAN><input name="txtPhoneO1" type="text" id="txtPhoneO1" size="4" maxlength="3"   value=""> <input name="txtPhoneO2" type="text" id="txtPhoneO2"  size="4" maxlength="3"    value=""> <input name="txtPhoneO3" type="text" id="txtPhoneO3"  size="5" maxlength="4"      value=""></SPAN>
		</div>
		
		<div class="formbox-left" style="width:49%">
			<SPAN class="formfieldtext" >SSN#:</SPAN>
			<SPAN>&nbsp;&nbsp;</SPAN>
		</div>

		 <div class="formbox-right" style="width:50%">
			<SPAN><input name="txtSSN1" type="text" id="txtSSN1" size="4" maxlength="3"   value=""> <input name="txtSSN2" type="text" id="txtSSN2"  size="3" maxlength="2"    value=""> <input name="txtSSN3" type="text" id="txtSSN3"  size="5" maxlength="4"      value=""></SPAN>
		</div>
		
	</div>
	
</div>
 </div>

	<br clear="all">

  <div  class="formbox">

	<div align="left" class="formboxheader">SHIPPING INFORMATION <input type="checkbox" name="chkSameAsBilling" id="chkSameAsBilling" value="Y"  onclick="javascript:setShippingInfo(this)" /> </div>
	<div class="formboxcontent" align="center">
		 <div class="formbox-left" style="width:49%">
			<SPAN class="formfieldtext" >First Name:</SPAN>
			<SPAN>*&nbsp;</SPAN>

		</div>
		 <div class="formbox-right" style="width:50%">
			<SPAN><input name="txtFirstNameShip" type="text" id="txtFirstNameShip"   value=""></SPAN>
		</div>
		
		 <div class="formboxcontent" align="center">
		 <div class="formbox-left" style="width:49%">
			<SPAN class="formfieldtext" >Middle Name:</SPAN>
			<SPAN>&nbsp;&nbsp;</SPAN>

		</div>
		 <div class="formbox-right" style="width:50%">
			<SPAN><input name="txtMiddleNameShip" type="text" id="txtMiddleNameShip"   value=""></SPAN>
		</div>
		
		 <div class="formbox-left" style="width:49%">
			<SPAN class="formfieldtext" >Last Name:</SPAN>
			<SPAN>*&nbsp;</SPAN>
		</div>

		 <div class="formbox-right" style="width:50%">
			<SPAN><input name="txtLastNameShip" type="text" id="txtLastNameShip"   value=""></SPAN>
		</div>
		
		<div class="formbox-left" style="width:49%">
			<SPAN class="formfieldtext" >Address 1:</SPAN>
			<SPAN>*&nbsp;</SPAN>
		</div>
		 <div class="formbox-right" style="width:50%">

			<SPAN><input name="txtAddress1Ship" type="text" id="txtAddress1Ship"   value=""></SPAN>
		</div>
		
		<div class="formbox-left" style="width:49%">
			<SPAN class="formfieldtext" >Address 2:</SPAN>
			<SPAN>&nbsp;&nbsp;</SPAN>
		</div>
		 <div class="formbox-right" style="width:50%">
			<SPAN><input name="txtAddress2Ship" type="text" id="txtAddress2Ship"   value=""></SPAN>

		</div>
		
		<div class="formbox-left" style="width:49%">
			<SPAN class="formfieldtext" >City:</SPAN>
			<SPAN>*&nbsp;</SPAN>
		</div>
		 <div class="formbox-right" style="width:50%">
			<SPAN><input name="txtCityShip" type="text" id="txtCityShip"   value=""></SPAN>
		</div>

		
		<div class="formbox-left" style="width:49%">
			<SPAN class="formfieldtext" >Country:</SPAN>
			<SPAN>*&nbsp;</SPAN>
		</div>
		 <div class="formbox-right" style="width:50%">
			<SPAN><select name="selCountryShip" onChange="javascript:populateStateShip()">
							<option value="">select</option>

													<option value="1"
														
							>Ghana</option>
													<option value="2"
														
							>South Africa</option>
													<option value="8"
														
							>Nigeria</option>
							
						</select>
			</SPAN>
		</div>
		
		<div class="formbox-left" style="width:49%">

			<SPAN class="formfieldtext" >State:</SPAN>
			<SPAN>&nbsp;&nbsp;</SPAN>
		</div>
		 <div class="formbox-right" style="width:50%">
			<SPAN><span id="spnStateComboShip">
					<select name="selStateShip">
							<option value="">select</option>
							
			  </select>

				 </span>
			</SPAN>
		</div>
		
		<div class="formbox-left" style="width:49%">
			<SPAN class="formfieldtext" >Zipcode:</SPAN>
			<SPAN>*&nbsp;</SPAN>
		</div>
		 <div class="formbox-right" style="width:50%">

			<SPAN><input name="txtZipcodeShip" type="text" id="txtZipcodeShip"   value=""></SPAN>
		</div>

	</div>
	
</div>

	
	<br clear="all">
	
	<div class="formbox-left" style="width:10%">
			<SPAN class="formfieldtext" ><input type="checkbox" name="chkTermsConditions" id="chkTermsConditions" value="Y"   /></SPAN>
			<SPAN>&nbsp;</SPAN>

		</div>
		 <div class="formbox-right" style="width:89%">
			<SPAN>I have read and agree to the terms of use and privacy policy & confirm that I am 18 years or older.</SPAN>
		</div>
		<br clear="all">
	<div align="center" class="formboxfooter"><a href="javascript:submitSignup('add')">Continue&raquo;</a></div>	
  </div>

 </div>
 </div>
 </form>			
 


<jsp:include page="../../templates/footer.jsp"></jsp:include>
</body>
</html>
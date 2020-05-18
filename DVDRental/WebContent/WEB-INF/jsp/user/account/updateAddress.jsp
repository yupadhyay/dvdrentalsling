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
<form name="frmPersonalInfo" method="post">
<div align="center">
<div  class="formbox">
	<div align="left" class="formboxheader">Personal Information</div>
	
	<div class="formboxcontent" align="center">
		 <div class="formbox-left" style="width:49%">

			<SPAN class="formfieldtext" >First Name:</SPAN>
			<SPAN>*&nbsp;</SPAN>
		</div>
		 <div class="formbox-right" style="width:50%">
			<SPAN><input name="txtFirstName" type="text" id="txtFirstName"   value="Asdfa"></SPAN>
		</div>
		
		 <div class="formboxcontent" align="center">
		 <div class="formbox-left" style="width:49%">

			<SPAN class="formfieldtext" >Middle Name:</SPAN>
			<SPAN>&nbsp;&nbsp;</SPAN>
		</div>
		 <div class="formbox-right" style="width:50%">
			<SPAN><input name="txtMiddleName" type="text" id="txtMiddleName"   value="Sdfasdf"></SPAN>
		</div>
		
		 <div class="formbox-left" style="width:49%">
			<SPAN class="formfieldtext" >Last Name:</SPAN>

			<SPAN>*&nbsp;</SPAN>
		</div>
		 <div class="formbox-right" style="width:50%">
			<SPAN><input name="txtLastName" type="text" id="txtLastName"   value="Asdf"></SPAN>
		</div>
		
		<div class="formbox-left" style="width:49%">
			<SPAN class="formfieldtext" >Address 1:</SPAN>
			<SPAN>*&nbsp;</SPAN>

		</div>
		 <div class="formbox-right" style="width:50%">
			<SPAN><input name="txtAddress1" type="text" id="txtAddress1"   value="asfasf"></SPAN>
		</div>
		
		<div class="formbox-left" style="width:49%">
			<SPAN class="formfieldtext" >Address 2:</SPAN>
			<SPAN>&nbsp;&nbsp;</SPAN>
		</div>

		 <div class="formbox-right" style="width:50%">
			<SPAN><input name="txtAddress2" type="text" id="txtAddress2"   value="asf"></SPAN>
		</div>
		
		<div class="formbox-left" style="width:49%">
			<SPAN class="formfieldtext" >City:</SPAN>
			<SPAN>*&nbsp;</SPAN>
		</div>
		 <div class="formbox-right" style="width:50%">

			<SPAN><input name="txtCity" type="text" id="txtCity"   value="asfasf"></SPAN>
		</div>
		
		<div class="formbox-left" style="width:49%">
			<SPAN class="formfieldtext" >Country:</SPAN>
			<SPAN>*&nbsp;</SPAN>
		</div>
		 <div class="formbox-right" style="width:50%">
			<SPAN><select name="selCountry" onChange="javascript:changeState()">

							<option value="">select</option>
													<option value="1"
							 selected 							
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

													<option value="1"
							 selected 							
							>Gujarat</option>
													<option value="5"
														
							>Kerela</option>
													<option value="4"
														
							>Manipur</option>
							
						</select>
				 </span>
			</SPAN>
		</div>

		
		<div class="formbox-left" style="width:49%">
			<SPAN class="formfieldtext" >Zipcode:</SPAN>
			<SPAN>*&nbsp;</SPAN>
		</div>
		 <div class="formbox-right" style="width:50%">
			<SPAN><input name="txtZipcode" type="text" id="txtZipcode"   value="234234"></SPAN>
		</div>
		
		<div class="formbox-left" style="width:49%">

			<SPAN class="formfieldtext" >Phone (R):</SPAN>
			<SPAN>*&nbsp;</SPAN>
		</div>
		 <div class="formbox-right" style="width:50%">
			<SPAN><input name="txtPhoneR1" type="text" id="txtPhoneR1" size="4" maxlength="3"   value="234"> <input name="txtPhoneR2" type="text" id="txtPhoneR2"  size="4" maxlength="3"    value="34"> <input name="txtPhoneR3" type="text" id="txtPhoneR3"  size="5" maxlength="4"      value="2342"></SPAN>
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
	<br clear="all">
	<div align="center" class="formboxfooter"><a href="javascript:updatePersonalInfo()">Update</a>&nbsp;|&nbsp;<a href="index.php?view=myaccount">Back to My Account</a></div>	
</div>
</div>
</form>
<jsp:include page="../../templates/footer.jsp"></jsp:include>
</body>
</html>
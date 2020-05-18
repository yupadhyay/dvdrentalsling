
function main_validate(flag)
{ 
	if(flag == 1)
	{
		if (document.frmMain1.txtSearch.value == "" && document.frmMain.cmbPlatform.value == "")
		{	
			alert ("Please enter search phrase.");
			
		}	
		else
		{
			document.frmMain1.submit();
		}	
	}
	else
	{
		if (document.frmMain1.txtSearch.value == "")
		{
			alert ("Please enter search phrase.");
			
		}	
		else
		{
			document.frmMain1.submit();
		}	
	}
		
}

	/*signUp.php*/
 	function populateState()
	{
		retrieveURL('index.php?view=signup&formMode=1', 'frmSignUp');

	}
	
	function populateStateShip()
	{
		retrieveURL('index.php?view=signup&formMode=2', 'frmSignUp');
	}
	
	function setShippingInfo(chkObj)
	{
		var frm = document.frmSignUp;
		if (chkObj.checked)
		{
			frm.txtFirstNameShip.value = frm.txtFirstName.value;
			frm.txtMiddleNameShip.value = frm.txtMiddleName.value;
			frm.txtLastNameShip.value = frm.txtLastName.value;
			frm.txtAddress1Ship.value = frm.txtAddress1.value;
			frm.txtAddress2Ship.value = frm.txtAddress2.value;
			frm.txtCityShip.value = frm.txtCity.value;
			frm.selCountryShip.value = frm.selCountry.value;
			frm.selStateShip.value = frm.selState.value;
			frm.txtZipcodeShip.value = frm.txtZipcode.value;
			retrieveURL('index.php?view=signup&formMode=3', 'frmSignUp');
		}
		else
		{
			frm.txtFirstNameShip.value = "";
			frm.txtMiddleNameShip.value = "";
			frm.txtLastNameShip.value = "";
			frm.txtAddress1Ship.value = "";
			frm.txtAddress2Ship.value = "";
			frm.txtCityShip.value = "";
			frm.selCountryShip.value = "";
			frm.selStateShip.value = "";
			frm.txtZipcodeShip.value = "";
		}
	
	}
	
	function showCreditCardForm()
	{
		var frm = document.frmSignUp;
		var paymentType = "";
		
				
		for (var i=0; i<frm.elements['rdoPaymentType'].length; i++)
		{
			if (frm.elements['rdoPaymentType'][i].checked==true)
			{
				paymentType =frm.elements['rdoPaymentType'][i].value; 
			}
		}
		
		if (paymentType=="C")
		{
			document.getElementById("spnCardInfo").style.display="";
			document.getElementById("spnCardInfo").style.visibility="visible";
		}
		else if (paymentType=="O")
		{
			document.getElementById("spnCardInfo").style.display="none";
			document.getElementById("spnCardInfo").style.visibility="hidden";
		}
	
	
	}
	 
	function submitSignup(addFlag)
	{
		var msg = "There are following problems in the information entered by you.\n\n";
		var bln = true;
		var frm = document.frmSignUp;
		var frmObj = "";
		
		if(trim(frm.txtEmailAddress.value) == "")
		{
			msg += "Please enter Email Address.\n";
			if (bln)
				frmObj = frm.txtEmailAddress;
			bln = false;
		}
		else if (!validEmail(trim(frm.txtEmailAddress.value)))
		{
			msg += "Please enter Valid Email Address.\n";
			if (bln)
				frmObj = frm.txtEmailAddress;
			bln = false;
		}
		
		if(trim(frm.txtConfirmEmailAddress.value) == "")
		{
			msg += "Please enter Confirm Email Address.\n";
			if (bln)
				frmObj = frm.txtConfirmEmailAddress;
			bln = false;
		}
		else if (!validEmail(trim(frm.txtConfirmEmailAddress.value)))
		{
			msg += "Please enter Valid Confirm Email Address.\n";
			if (bln)
				frmObj = frm.txtConfirmEmailAddress;
			bln = false;
		}
		
		if(trim(frm.txtEmailAddress.value) != "" && trim(frm.txtConfirmEmailAddress.value)!="")
		{
			if(trim(frm.txtEmailAddress.value)!=trim(frm.txtConfirmEmailAddress.value))
			{
				msg += "Both email address should be same.\n";
				if (bln)
					frmObj = frm.txtEmailAddress;
				bln = false;		
			}
		}

		
		if(trim(frm.txtPassword.value) == "")
		{
			msg += "Please enter Password.\n";
			if (bln)
				frmObj = frm.txtPassword;
			bln = false;
		}
		else
		{
			var tempPass = new String(trim(frm.txtPassword.value));
			if(tempPass.length < 6)
			{
				msg += "Please make sure that Password contains at least 6 characters.\n";
				if (bln)
					frmObj = frm.txtPassword;
				bln = false;
			} 
		
		}
		
		if(trim(frm.txtConfirmPassword.value) == "")
		{
			msg += "Please enter Confirm Password.\n";
			if (bln)
				frmObj = frm.txtConfirmPassword;
			bln = false;
		}
		
		if(trim(frm.txtPassword.value) != "" && trim(frm.txtConfirmPassword.value) != "")
		{
			if (trim(frm.txtPassword.value) != trim(frm.txtConfirmPassword.value))
			{
				msg += "Confirm Password does not match with the Password.\n";
				if (bln)
					frmObj = frm.txtConfirmPassword;
				bln = false;
			}
		}

		
		if(trim(frm.txtFirstName.value) == "")
		{
			msg += "Please enter First Name for Billing.\n";
			if (bln)
				frmObj = frm.txtFirstName;
			bln = false;
		}
		
		if(trim(frm.txtLastName.value) == "")
		{
			msg += "Please enter Last Name for Billing.\n";
			if (bln)
				frmObj = frm.txtLastName;
			bln = false;
		}
		
		if(trim(frm.txtAddress1.value) == "")
		{
			msg += "Please enter Address1 for Billing.\n";
			if (bln)
				frmObj = frm.txtAddress1;
			bln = false;
		}
		
		if(trim(frm.txtCity.value) == "")
		{
			msg += "Please enter City for Billing.\n";
			if (bln)
				frmObj = frm.txtCity;
			bln = false;
		}
		
		if(trim(frm.selCountry.value) == "")
		{
			bln = false;
			msg += "Please select Country for Billing.\n";
			if (bln)
				frmObj = frm.selCountry;
		}
		
		if(trim(frm.selState.value) == "")
		{
			msg += "Please select State for Billing.\n";
			if (bln)
				frmObj = frm.selState;
			bln = false;
		}
		
		if(trim(frm.txtZipcode.value) == "")
		{
			msg += "Please enter Zipcode for Billing.\n";
			if (bln)
				frmObj = frm.txtZipcode;
			bln = false;
		}
		else if(!IsInt(trim(frm.txtZipcode.value)))
		{
			msg += "Please enter Valid Zipcode for Billing.\n";
			if (bln)
				frmObj = frm.txtZipcode;
			bln = false;
		}
		
		if(trim(frm.txtPhoneR1.value) == "" || trim(frm.txtPhoneR2.value) == "" || trim(frm.txtPhoneR3.value) == "")
		{
			msg += "Please enter Residence Phone for Billing.\n";
			if (bln)
				frmObj = frm.txtPhoneR1;
			bln = false;
		}
		else if(!IsInt(trim(frm.txtPhoneR1.value)) || !IsInt(trim(frm.txtPhoneR2.value)) || !IsInt(trim(frm.txtPhoneR3.value))   )
		{
			msg += "Please enter Valid Residence Phone for Billing.\n";
			if (bln)
				frmObj = frm.txtPhoneR1;
			bln = false;
		}
		
		if(trim(frm.txtPhoneO1.value) != "" && trim(frm.txtPhoneO2.value) != "" && trim(frm.txtPhoneO3.value) != "")
		{
			if(!IsInt(trim(frm.txtPhoneO1.value)) || !IsInt(trim(frm.txtPhoneO2.value)) || !IsInt(trim(frm.txtPhoneO3.value))   )
			{
				msg += "Please enter Valid Office Phone.\n";
				if (bln)
					frmObj = frm.txtPhoneO1;
				bln = false;
			}
			
		}
		
		
		if(trim(frm.txtFirstNameShip.value) == "")
		{
			msg += "Please enter First Name for Shipping.\n";
			if (bln)
				frmObj = frm.txtFirstNameShip;
			bln = false;
		}
		
		if(trim(frm.txtLastNameShip.value) == "")
		{
			msg += "Please enter Last Name for Shipping.\n";
			if (bln)
				frmObj = frm.txtLastNameShip;
			bln = false;
		}
		
		if(trim(frm.txtAddress1Ship.value) == "")
		{
			msg += "Please enter Address1 for Shipping.\n";
			if (bln)
				frmObj = frm.txtAddress1Ship;
			bln = false;
		}
		
		if(trim(frm.txtCityShip.value) == "")
		{
			msg += "Please enter City for Shipping.\n";
			if (bln)
				frmObj = frm.txtCityShip;
			bln = false;
		}
		
		if(trim(frm.selCountryShip.value) == "")
		{
			bln = false;
			msg += "Please select Country for Shipping.\n";
			if (bln)
				frmObj = frm.selCountryShip;
		}
		
		if(trim(frm.selStateShip.value) == "")
		{
			msg += "Please select State for Shipping.\n";
			if (bln)
				frmObj = frm.selStateShip;
			bln = false;
		}
		
		if(trim(frm.txtZipcodeShip.value) == "")
		{
			msg += "Please enter Zipcode for Shipping.\n";
			if (bln)
				frmObj = frm.txtZipcodeShip;
			bln = false;
		}
		else if(!IsInt(trim(frm.txtZipcodeShip.value)))
		{
			msg += "Please enter Valid Zipcode for Shipping.\n";
			if (bln)
				frmObj = frm.txtZipcodeShip;
			bln = false;
		}
		
		
		if (!frm.chkTermsConditions.checked)
		{
			msg += "Please agree to the terms and conditions.\n";
			if (bln)
				frmObj = frm.chkTermsConditions;
			bln = false;		
		}
		
		if(bln == false)
		{
			alert(msg);
			frmObj.focus();
		}
		else
		{
	
			document.frmSignUp.action = "index.php?view=actsignup&formMode=2&addFlag="+addFlag;
		
			document.frmSignUp.submit();
		}
}


	function validatePlan(addFlag)
	{
		var msg = "There are following problems in the information entered by you.\n\n";
		var bln = true;
		var frm = document.frmSignUp;
		var frmObj = "";
		

		

		var plan = false;
		for (var i=0; i<frm.elements['rdoSubPlan'].length; i++)
		{
			if (frm.elements['rdoSubPlan'][i].checked==true)
			{
				plan = true; 
				frm.selectedPlan.value = frm.elements['rdoSubPlan'][i].value;
			}
		}
		
		if (plan==false)
		{
			msg += "Please select Subscription Plan.\n";		
			if (bln)
				frmObj = frm.elements['rdoSubPlan'][0];
			bln = false;
		}
		

		

		
		
		var paymentType = false;
		var paymentValue = "";
		
				paymentType= true;
		paymentValue = "C";
				
		if (paymentType==false)
		{
			bln = false;
			msg += "Please select Payment Type.\n";		
		}
		else if (paymentValue=="C")
		{
			if(trim(frm.txtOwner.value) == "")
			{
				msg += "Please enter Card Owner Name.\n";
				if (bln)
					frmObj = frm.txtOwner;
				bln = false;
			}	
			
			if(trim(frm.selCardType.value) == "")
			{
				msg += "Please select Card Type.\n";
				if (bln)
					frmObj = frm.selCardType;
				bln = false;
			}
	
			if(trim(frm.txtCardNumber.value) == "")
			{
				msg += "Please enter Card Number.\n";
				if (bln)
					frmObj = frm.txtCardNumber;
				bln = false;
			}
			else if (!isValidCreditCardNumber(frm.txtCardNumber.value,frm.selCardType.value))
			{
				msg += "Please enter Valid Card Number.\n";
				if (bln)
					frmObj = frm.txtCardNumber;
				bln = false;
			}
			
			if(trim(frm.selExpmon.value) == "")
			{
				msg += "Please select Expiry Month.\n";
				if (bln)
					frmObj = frm.selExpmon;
				bln = false;
			}
	
			if(trim(frm.selExpyear.value) == "")
			{
				msg += "Please select Expiry Year.\n";
				if (bln)
					frmObj = frm.selExpyear;
				bln = false;
			}	
			
			if(trim(frm.selExpmon.value) != "" && trim(frm.selExpyear.value) != "" )
			{
				if (!isValidExpDate(frm.selExpyear.value,frm.selExpmon.value))
				{
					msg += "Please enter Valid Expiration Date.\n";
					if (bln)
						frmObj = frm.selExpyear;
					bln = false;
				}
			}
			
			if(trim(frm.txtCVMNumber.value) == "")
			{
				msg += "Please Enter 3-Digit Security Code.\n";
				if (bln)
					frmObj = frm.txtCVMNumber;
				bln = false;
			}	
			
			
		}
		
		if(bln == false)
		{
			alert(msg);
			frmObj.focus();
		}
		else
		{
	
			document.frmSignUp.action = "index.php?view=actselectplan&formMode=2&addFlag="+addFlag;
		
			document.frmSignUp.submit();
		}
	}

	/*changeLogin.php*/
	function updateLogin()
	{
		var msg = "There are following problems in the information entered by you.\n\n";
		var bln = true;
		var frm = document.frmChangeLogin;
		var frmObj = "";
		
	if (validateUserStatus())
	{
		if(trim(frm.txtPassword.value) == "")
		{
			msg += "Please enter Password.\n";
			if (bln)
				frmObj = frm.txtPassword;
			bln = false;
		}
		
		if(trim(frm.txtOldEmailAddress.value) == "")
		{
			msg += "Please enter Current Email Address.\n";
			if (bln)
				frmObj = frm.txtOldEmailAddress;
			bln = false;
		}
		else if (!validEmail(trim(frm.txtOldEmailAddress.value)))
		{
			msg += "Please enter Valid Current Email Address.\n";
			if (bln)
				frmObj = frm.txtOldEmailAddress;
			bln = false;
		}
		
		if(trim(frm.txtNewEmailAddress.value) == "")
		{
			msg += "Please enter New Email Address.\n";
			if (bln)
				frmObj = frm.txtNewEmailAddress;
			bln = false;
		}
		else if (!validEmail(trim(frm.txtNewEmailAddress.value)))
		{
			msg += "Please enter Valid New Email Address.\n";
			if (bln)
				frmObj = frm.txtNewEmailAddress;
			bln = false;
		}
		
		if(bln == false)
		{
			alert(msg);
			frmObj.focus();
		}
		else
		{
			alert("Demo mode");
	
			//document.frmChangeLogin.action = "index.php?view=actchange_login&formMode=2";
		
			//document.frmChangeLogin.submit();
		}
	}
		
	}

	/*userLogin.php*/
		function validateLogin(frm)
	{
		
		var msg = "There are following problems in the information entered by you.\n\n";
		var bln = true;

		var frmObj = "";
		
		if(trim(frm.txtEmailAddress.value) == "")
		{
			msg += "Please enter Email Address.\n";
			if (bln)
				frmObj = frm.txtEmailAddress;
			bln = false;
		}
		else if (!validEmail(trim(frm.txtEmailAddress.value)))
		{
			msg += "Please enter Valid Email Address.\n";
			if (bln)
				frmObj = frm.txtEmailAddress;
			bln = false;
		}
		
		if(trim(frm.txtPassword.value) == "")
		{
			msg += "Please enter Password.\n";
			if (bln)
				frmObj = frm.txtPassword;
			bln = false;
		}
		
		
		if(bln == false)
		{
			alert(msg);
			frmObj.focus();
			return false;
		}
		else
		{

			frm.action = contextPath+"/Login";
			document.frmLogin.submit();
			return true;
		}
	
	}
	
	function resetLogin()
	{
		var frm = document.frmLogin;
		frm.txtEmailAddress.value="";
		frm.txtPassword.value="";
	}
	
	/*changePassword.php*/
	
	function updatePassword()
	{
		var msg = "There are following problems in the information entered by you.\n\n";
		var bln = true;
		var frm = document.frmChangePass;
		var frmObj = "";
	if (validateUserStatus())
	{
	
		if(trim(frm.txtCurrentPassword.value) == "")
		{
			msg += "Please enter Your Current Password.\n";
			if (bln)
				frmObj = frm.txtCurrentPassword;
			bln = false;
		}
		
		if(trim(frm.txtNewPassword1.value) == "")
		{
			msg += "Please enter New Password.\n";
			if (bln)
				frmObj = frm.txtNewPassword1;
			bln = false;
		}
		else
		{
			var tempPass = new String(trim(frm.txtNewPassword1.value));
			if(tempPass.length < 6)
			{
				msg += "Please make sure that Password contains at least 6 characters.\n";
				if (bln)
					frmObj = frm.txtNewPassword1;
				bln = false;
			} 
		
		}
		
		if(trim(frm.txtNewPassword2.value) == "")
		{
			msg += "Please enter Confirm Password.\n";
			if (bln)
				frmObj = frm.txtNewPassword2;
			bln = false;
		}
		
		if(trim(frm.txtNewPassword1.value) != "" && trim(frm.txtNewPassword2.value) != "")
		{
			if (trim(frm.txtNewPassword1.value) != trim(frm.txtNewPassword2.value))
			{
				msg += "Confirm Password does not match with the Password.\n";
				if (bln)
					frmObj = frm.txtNewPassword2;
				bln = false;
			}
		}
		
		
		
		if(bln == false)
		{
			alert(msg);
			frmObj.focus();
		}
		else
		{
			alert("Demo mode");
	
			//document.frmChangePass.action = "index.php?view=actchange_pass&formMode=2";
		
			//document.frmChangePass.submit();
		}
	}
			
	}

	/*validatePromocode.php*/
	
	function validatePromocode()
	{
		var msg = "There are following problems in the information entered by you.\n\n";
		var bln = true;
		var frm = document.frmPromocode;
		var frmObj = "";
		
		if(trim(frm.txtPromocode.value) == "")
		{
			msg += "Please enter Promocode\n";
			if (bln)
				frmObj = frm.txtPromocode;
			bln = false;
		}

		
	
		
		if(bln == false)
		{
			alert(msg);
			frmObj.focus();
		}
		else
		{
	
			document.frmPromocode.action = "index.php?view=signup&formMode=4";
		
			document.frmPromocode.submit();
		}
	}
	
	function updatePersonalInfo()
	{
		var msg = "There are following problems in the information entered by you.\n\n";
		var bln = true;
		var frm = document.frmPersonalInfo;
		var frmObj = "";

	if (validateUserStatus())
	{

		if(trim(frm.txtFirstName.value) == "")
		{
			msg += "Please enter First Name.\n";
			if (bln)
				frmObj = frm.txtFirstName;
			bln = false;
		}
		
		if(trim(frm.txtLastName.value) == "")
		{
			msg += "Please enter Last Name.\n";
			if (bln)
				frmObj = frm.txtLastName;
			bln = false;
		}
		
		if(trim(frm.txtAddress1.value) == "")
		{
			msg += "Please enter Address 1.\n";
			if (bln)
				frmObj = frm.txtAddress1;
			bln = false;
		}
		
		if(trim(frm.txtCity.value) == "")
		{
			msg += "Please enter City.\n";
			if (bln)
				frmObj = frm.txtCity;
			bln = false;
		}
		
		if(trim(frm.selCountry.value) == "")
		{
			bln = false;
			msg += "Please select Country.\n";
			if (bln)
				frmObj = frm.selCountry;
		}
		
		if(trim(frm.selState.value) == "")
		{
			msg += "Please enter State.\n";
			if (bln)
				frmObj = frm.selState;
			bln = false;
		}
		
		if(trim(frm.txtZipcode.value) == "")
		{
			msg += "Please enter State.\n";
			if (bln)
				frmObj = frm.txtZipcode;
			bln = false;
		}
		else if(!IsInt(trim(frm.txtZipcode.value)))
		{
			msg += "Please enter ZipCode.\n";
			if (bln)
				frmObj = frm.txtZipcode;
			bln = false;
		}
		
		if(trim(frm.txtPhoneR1.value) == "" || trim(frm.txtPhoneR2.value) == "" || trim(frm.txtPhoneR3.value) == "")
		{
			msg += "Please enter Residence Phone Number.\n";
			if (bln)
				frmObj = frm.txtPhoneR1;
			bln = false;
		}
		else if(!IsInt(trim(frm.txtPhoneR1.value)) || !IsInt(trim(frm.txtPhoneR2.value)) || !IsInt(trim(frm.txtPhoneR3.value))   )
		{
			msg += "Please enter Valid Phone No(R) Code.\n";
			if (bln)
				frmObj = frm.txtPhoneR1;
			bln = false;
		}
		
		if(trim(frm.txtPhoneO1.value) != "" && trim(frm.txtPhoneO2.value) != "" && trim(frm.txtPhoneO3.value) != "")
		{
			if(!IsInt(trim(frm.txtPhoneO1.value)) || !IsInt(trim(frm.txtPhoneO2.value)) || !IsInt(trim(frm.txtPhoneO3.value))   )
			{
				msg += "Please enter Valid Office Phone.\n";
				if (bln)
					frmObj = frm.txtPhoneO1;
				bln = false;
			}
			
		}
		
		if(bln == false)
		{
			alert(msg);
			frmObj.focus();
		}
		else
		{
	
			document.frmPersonalInfo.action = "index.php?view=actpersonal_info&formMode=2";
		
			document.frmPersonalInfo.submit();
		}	
	}
		
	}
	
	function changeState()
	{
		retrieveURL('index.php?view=personal_info&formMode=1', 'frmPersonalInfo');

	}
	
	function updateInterest()
	{
		var frm = document.frmUserInterest;
	if (validateUserStatus())
	{
		frm.action = "index.php?view=actuser_interest&formMode=1";
		frm.submit();
	}
		
	}
	
	function updateNewsletter()
	{
		var frm = document.frmNewsLetter;
	if (validateUserStatus())
	{	
		frm.action = "index.php?view=actnewsletter_sub&formMode=1";
		frm.submit();
	}	
	
	}
	
	function updateEmailFormat()
	{
		var frm = document.frmEmailFormat;
	if (validateUserStatus())
	{		
		frm.action = "index.php?view=actemail_format&formMode=1";
		frm.submit();	
	}
	}

	function upgradeMemship()
	{
		var frm = document.frmUpgradeMemship;
		
		if (validateUserStatus())
		{
		
		frm.action = "index.php?view=actmemship_upgrade&formMode=1";
		frm.submit();		
		
		}
	
	}
	
	function validateUserStatus()
	{
		var userStatus="A";
		if (userStatus=="B")
		{
			alert("Your account has been blocked.");
			return false;
		}
		else if (userStatus=="V")
		{
			alert("Your account in vacation mode.");
			return false;
		
		}
		else if (userStatus=="P")
		{
			alert("Your payment is pending.");
			return false;
		
		}
		else if (userStatus=="E")
		{
			alert("Your membership has been expired.");
			return false;
		
		}	
		else
			return true;
	}
	
	
	function cancelMemship()
	{
		var frm = document.frmMemshipCancel;
		if (validateUserStatus())
		{
		frm.action = "index.php?view=actmemship_cancel&formMode=1";
		frm.submit();		
		
		}
	
	}
	
	//rentalDetail.php
	 function rentalDetail(id,title,flag,type)
	{
		retrieveURL('index.php?view=rentaldetail&item_type='+type+'&id='+id+'&flag='+flag, 'frmDetail');
	}
		//	gamereviews.php	
	function rentalReview(id,title,flag,reviewflag,type)
	{
		retrieveURL('index.php?view=rentaldetail&id='+id+'&item_type='+type+'&flag='+flag+'&reviewflag='+reviewflag, 'frmDetail');
	
	}

	function rentalCheatNCode(id,title,flag,cheatflag,type)
	{
		retrieveURL('index.php?view=rentaldetail&id='+id+'&item_type='+type+'&flag='+flag+'&cheatflag='+cheatflag, 'frmDetail');
	
	}
	
	
//	gamescreenshotsvideos.php	
	function rentalScreenshotVideo(id,title,flag,screenshotvideoflag,type)
	{
		retrieveURL('index.php?view=rentaldetail&id='+id+'&item_type='+type+'&flag='+flag+'&screenshotvideoflag='+screenshotvideoflag, 'frmDetail');
	
	}
	
	//screenshotvideos.php
	function openScreenshot(screenshotId)
	{
	
	
		mov = window.open("popupindex.php?view=viewscreenshot&screenshotId="+screenshotId,"Screenshot","");	
		mov.focus();

	
	}

	function  downloadplayer()
	{
	    var 	show = window.open("http://uk.real.com/player/","","");
		show.focus();
	}
	
	/*forgotPassword.php*/
	function validateForgotPass()
	{
		var msg = "There are following problems in the information entered by you.";
		var bln = true;
		var frm = document.frmPassword;
		var frmObj = "";
		
		if(trim(frm.txtEmailAddress.value) == "")
		{
			msg += "Please enter Email Address.\n";
			if (bln)
				frmObj = frm.txtEmailAddress;
			bln = false;
		}
		else if (!validEmail(trim(frm.txtEmailAddress.value)))
		{
			msg += "Please enter Valid Email Address.\n";
			if (bln)
				frmObj = frm.txtEmailAddress;
			bln = false;
		}
		
		if(bln == false)
		{
			alert(msg);
			frmObj.focus();
			return false;
		}
		else
		{

			document.frmPassword.action = "index.php?view=actforgotpassword";
			//document.frmPassword.submit();
			return true;
		}
	
	}
	

	function validateReview(id,title,flag,reviewflag)
	{
	
		var msg = "There are following problems in the information entered by you.\n\n";
		var bln = true;
		var frm = document.frmDetail;
		var frmObj = "";
		
		if(trim(frm.txtName.value) == "")
		{
			msg += "Please enter name\n";
			if (bln)
				frmObj = frm.txtName;
			bln = false;
		}
		
		if(trim(frm.txtReviewTitle.value) == "")
		{
			msg += "Please enter review title.\n";
			if (bln)
				frmObj = frm.txtReviewTitle;
			bln = false;
		}
		
		if(trim(frm.txtReviewDesc.value) == "")
		{
			msg += "Please enter review description.\n";
			if (bln)
				frmObj = frm.txtReviewDesc;
			bln = false;
		}
		else
		{
			var tempDesc = new String(trim(frm.txtReviewDesc.value));
			if(tempDesc.length < 80 || tempDesc.length > 3000 )
			{
				msg += "Review description must be greater than 80 characters ane less than 300 characters.\n";
				if (bln)
					frmObj = frm.txtReviewDesc;
				bln = false;
			}
		}
		
		if(bln == false)
		{
			alert(msg);
			frmObj.focus();
		}
		else
		{
			retrieveURL('index.php?view=rentaldetail&id='+id+'&flag='+flag+'&reviewflag='+reviewflag, 'frmDetail');
		
		}

	}
	
	function setRating()
	{
		document.frmDetail.hidRating.value = document.frmDetail.selRating.value;
	}
	
	function reportProblem()
	{
		var msg = "There are following problems in the information entered by you.\n\n";
		var bln = true;
		var frm = document.frmReportProb;
		var frmObj = "";
		var flag1=0;
	
	if (validateUserStatus())
	{	
		if (document.frmReportProb.txtProblem.value=="")
		{
			msg+="Please enter the Problem Title.\n";
			if (bln)
				frmObj = frm.txtProblem;
			bln = false;
		
		}
		
		if (document.frmReportProb.txtDescription.value=="")
		{
			msg+="Please enter the Problem Description.\n";
			if (bln)
				frmObj = frm.txtDescription;
			bln = false;
		
		}
	
		
		for(i=0;i<document.frmReportProb.rdoRentedId.length;i++)
		{
			if(document.frmReportProb.rdoRentedId[i].checked==true)
			{
				flag1 = 1;
				break;
			}
		}
		
		if (flag1==0)
		{
			msg+="Please select the Rental Item.\n";
			bln = false;
		}
		
		if(bln == false)
		{
			alert(msg);
		}
		else
		{
		
			retrieveURL('index.php?view=report_shipprob&formMode=1', 'frmReportProb');
		
		}	
	
	}
	
	}
	
	function sendHistory()
	{
	
			retrieveURL('index.php?view=rental_history&formMode=1', 'frmRentalHistory');
				
	}
	function checkBuyGiftCertificate(frm)
	{
			var msg;
			var fobj;
			var bln;
				
			msg = "There are following problems in the information entered by you.\n\n";
			bln = true;
			
			
			var plan = false;
			//alert(frm.elements['selGiftCertificate'].length);
			if (frm.elements['selGiftCertificate'].length!="undefined")
			{
				for (var i=0; i<frm.elements['selGiftCertificate'].length; i++)
				{
					//alert(frm.elements['selGiftCertificate'][i].checked);
					if (frm.elements['selGiftCertificate'][i].checked==true)
					{
						plan = true; 
						frm.giftcertiid.value = frm.elements['selGiftCertificate'][i].value; 
						//alert(frm.giftcertiid.value);
					}
				}
			}
			
						
			if (plan==false)
			{
				msg += "Please select Subscription Plan.\n";		
				if (bln)
					frmObj = frm.elements['selGiftCertificate'][0];
				bln = false;
			}
		
			
			
			if(frm.txtToName.value == "")
			{
				msg += "Please enter name(To).\n";
				fobj = frm.txtToName;
				bln = false;	
			}
			
			if(frm.txtToEmailAddress.value == "")
			{
				msg += "Please enter Email Address(To).\n";
				fobj = frm.txtToEmailAddress;
				bln = false;	
			}
			else
			{
				if(validEmail(frm.txtToEmailAddress.value) == false )
				{
					msg += "You must specify the  Email Address(From) in form of abc@xyz.pqr \n";
					if(bln) 
						fobj = frm.txtToEmailAddress;	
					bln = false;
					frm.txtToEmailAddress.value="";
				}	   
			}
			
			if(frm.txtConfirmToEmailAddress.value == "")
			{
				msg += "Please enter Confirm Email Address(To).\n";
				fobj = frm.txtConfirmToEmailAddress;
				bln = false;	
			}
			else
			{
				if(validEmail(frm.txtConfirmToEmailAddress.value) == false )
				{
					msg += "You must specify the  Email Address(From) in form of abc@xyz.pqr \n";
					if(bln) 
						fobj = frm.txtConfirmToEmailAddress;	
					bln = false;
					frm.txtConfirmToEmailAddress.value="";
				}	   
			}
			
			if (frm.txtToEmailAddress.value!="" && frm.txtConfirmToEmailAddress.value!="")
			{
				if (frm.txtToEmailAddress.value!=frm.txtConfirmToEmailAddress.value)
				{
					msg += "Both Email Address(To) and Confirm Email Address(To) should be same.\n";
					fobj = frm.txtConfirmToEmailAddress;
					bln = false;	
				}
			
			}
			
			
			if(frm.txtName.value == "")
			{
				msg += "Please enter name(From).\n";
				fobj = frm.txtName;
				bln = false;	
			}
			
			if(frm.txtEmailAddress.value == "")
			{
				msg += "Please enter Email Address(From).\n";
				fobj = frm.txtEmailAddress;
				bln = false;	
			}
			else
			{
				if(validEmail(frm.txtEmailAddress.value) == false )
				{
					msg += "You must specify the  Email Address(From) in form of abc@xyz.pqr \n";
					if(bln) 
						fobj = frm.txtEmailAddress;	
					bln = false;
					frm.txtEmailAddress.value="";
				}	   
			}
			
			
			
			if(frm.txtAdd1.value == "")
			{
				msg += "Please enter Address 1.\n";
				if(bln) 
				{
				   fobj = frm.txtAdd1;	
					bln = false;
				}
			}
			
			if(frm.txtCity.value == "")
			{
				msg += "Please enter City.\n";
				if(bln) 
				{
					fobj = frm.txtCity;	
					bln = false;
				}
			}
			
			
			if(frm.selCountry.options[frm.selCountry.selectedIndex].value == "")
			{
				msg += "Please select Country.\n";
				if(bln)
				{
					fobj = frm.selCountry;
					bln = false;
				}	
			}
			
			
		/*	if(frm.txtcountrycode.value == "")
			{
				msg += "Please enter Country Code for Phone Number.\n";
				if(bln)
				{ 
				   fobj = frm.txtcountrycode;	
					bln = false;
				}
			}
			if( frm.txtcountrycode.value != "") 
			{
				msg += "Please enter Valid Country Code for Phone Number.\n";
				if(bln)
				{
					fobj = frm.txtcountrycode;
					bln = false;	
				}
			}
			
			if(frm.txtstatecode.value == "")
			{
				msg += "Please enter State Code for Phone Number.\n";
				if(bln)
				{ 
				   fobj = frm.txtstatecode;	
					bln = false;
				}
			}
			else
			{
				if(!IsInt(frm.txtstatecode.value)&& frm.txtstatecode.value != "") 
				{
					msg += "Please enter Valid State Code for Phone No.\n";
					if(bln)
					{
						fobj = frm.txtstatecode;
						bln = false;	
					}
				}
				else
				{
					var tempState = frm.txtstatecode.value;
					alert(tempState.length);
					if (tempState.length<4)
					{
						msg += "Please enter Valid State Code for Phone No.\n";
						if(bln)
						{
							fobj = frm.txtstatecode;
							bln = false;	
						}
					
					}
				}
			}*/
			
			
			if(frm.txtPhr.value == "")
			{
				msg += "Please enter Residence Phone Number.\n";
				if(bln)
				{ 
				   fobj = frm.txtPhr;	
					bln = false;
				}
			}
			else
			{
				if(!IsInt(frm.txtPhr.value)&& frm.txtPhr.value != "") 
				{
					msg += "Please enter Valid Phone No(R) Code.\n";
					if(bln)
					{
						fobj = frm.txtPhr;
						bln = false;	
					}
				}
				else
				{
					var tempPhr = frm.txtPhr.value;
				//	alert(tempState.length);
					if (tempPhr.length<4)
					{
						msg += "Please enter Valid Phone No(R) Code.\n";
						if(bln)
						{
							fobj = frm.txtPhr;
							bln = false;	
						}
					
					}
				
				}
			}
						if(bln == false)
			{
				alert(msg);
			//	fobj.focus();
				return false;
			}
			else
			{
				return true;
			}

		
	}
	function checkReedemGiftCertificate(frm)
	{
		var msg;
			var fobj;
			var bln;
				
			msg = "There are following problems in the information entered by you.\n\n";
			bln = true;
			if(frm.txtGiftCode.value == "")
			{
				msg += "Please enter Gift Code.\n";
				if(bln)
				{ 
				   fobj = frm.txtGiftCode;	
					bln = false;
				}
			}
			if(bln == false)
			{
				alert(msg);
				fobj.focus();
				return false;
			}
			else
			{
				return true;
			}

	}
	
	//gameCart.php
	function updateCart()
	{
	
		var msg = "There are following problems in the information entered by you.\n\n";
		var bln = true;
		var frm = document.frmGameCart;
		var frmObj = "";
		var flag=false;
		
		var delFlag = false;
		var chkStr = "";
		for (i=0; i<frm.elements['chkGameIds[]'].length; i++)
		{
			if (frm.elements['chkGameIds[]'][i].checked==true)
			{
				delFlag = true;
				if (chkStr=="")
				{
					chkStr = frm.elements['chkGameIds[]'][i].value;
				}
				else
				{
					chkStr = ","+frm.elements['chkGameIds[]'][i].value;
				}
				
			}
		}
		
	//	if (delFlag==false)
	//	{	
			for(k=0;k<frm.elements['txtGameQty[]'].length;k++)
			{	
				//alert(IsInt(frm.elements['txtGameQty[]'][i].value)+"- "+frm.elements['txtGameQty[]'][i].value);
				if(!IsInt(frm.elements['txtGameQty[]'][k].value))
				{
					msg+="Please enter valid value for quantity.\n";
					flag=true;
					break;
				}
				else if (frm.elements['txtGameQty[]'][k].value<0)
				{
					msg+="Please enter valid value for quantity.\n";
					flag=true;
					break;
				
				}
				
			}
			
			for(i=0;i<frm.elements['txtGameQty[]'].length;i++)
			{
				if(parseInt(frm.elements['txtGameQty[]'][i].value)>parseInt(frm.elements['hidAvailQty[]'][i].value))
				{
					msg+="Entered Quantity should not be greater than Available Quantity.\n";
					flag=true;
					break;
				}
				
			}
	//	}
		document.frmGameCart.hidChkStr.value = chkStr;
		//flag= false;
		if (flag==true)
		{
			alert(msg);
		}
		else
		{
			if (delFlag==true)
			{
				if (confirm("Are you sure you want to delete selected Rental Items?"))
				{
												retrieveURL('index.php?view=cart&formMode=1', 'frmGameCart');
							
				}
			}
			else
			{
								retrieveURL('index.php?view=cart&formMode=1', 'frmGameCart');
					
			}	
		}
	}
	
	//gameCart.php
	function checkoutCart()
	{
		var msg = "There are following problems in the information entered by you.\n\n";
		var bln = true;
		var frm = document.frmGameCart;
		var frmObj = "";
		var flag=false;
		
		var delFlag = false;
		
		
		for(k=0;k<frm.elements['txtGameQty[]'].length;k++)
		{	
			//alert(IsInt(frm.elements['txtGameQty[]'][i].value)+"- "+frm.elements['txtGameQty[]'][i].value);
			if(!IsInt(frm.elements['txtGameQty[]'][k].value))
			{
				msg+="Please enter valid value for quantity.\n";
				flag=true;
				break;
			}
			else if (frm.elements['txtGameQty[]'][k].value<0)
			{
				msg+="Please enter valid value for quantity.\n";
				flag=true;
				break;
			
			}
			
		}
			
		for(i=0;i<frm.elements['txtGameQty[]'].length;i++)
		{
			if(parseInt(frm.elements['txtGameQty[]'][i].value)>parseInt(frm.elements['hidAvailQty[]'][i].value))
			{
				msg+="Entered Quantity should not be greater than Available Quantity.\n";
				flag=true;
				break;
			}
			
		}
		
		if (flag==true)
		{
			alert(msg);
		}
		else
		{
			
							document.frmGameCart.action='index.php?view=cart&formMode=2';
				document.frmGameCart.submit();
	//				retrieveURL('index.php?view=cart&formMode=2', 'frmGameCart');
					
		}
		
	}	
	//gameCheckout.php
	function confirmOrder()
	{
		var msg = "There are following problems in the information entered by you.\n\n";
		var bln = true;
		var frm = document.frmSignUp;
		var frmObj = "";
		
		if(frm.shipp_add_id.value == "")
		{
			msg += "Please add shipping address.\n";
			if (bln)
				frmObj = frm.shipp_add_id;
			bln = false;
		}
		
		if(frm.bill_add_id.value == "")
		{
			msg += "Please add billing address.\n";
			if (bln)
				frmObj = frm.bill_add_id;
			bln = false;
		}
		
		var paymentType="";
		for (var i=0; i<frm.elements['rdoPaymentType'].length; i++)
		{
			if (frm.elements['rdoPaymentType'][i].checked==true)
			{
				paymentType =frm.elements['rdoPaymentType'][i].value; 
			}
		}
		
		if (paymentType=="C")
		{
			if(frm.card_info_id.value == "")
			{
				msg += "Please add card information.\n";
				if (bln)
					frmObj = frm.card_info_id;
				bln = false;
			}
		}
		
		if (bln==false)
		{
			alert(msg);
		}
		else
		{	
			if (confirm("Are you sure you want to confirm order?"))
			{
									document.frmSignUp.action='index.php?view=actcheckout&formMode=1';
					document.frmSignUp.submit();
		//				retrieveURL('index.php?view=cart&formMode=2', 'frmGameCart');
						
			}
		}
	}
	
	//reffer_friend.php
	
	function submitTellFriend()
{
	var msg = "There are following problems in the information entered by you.\n\n";
	var bln = true;
	var frm = document.frmTellFriend;
	var frmObj = "";
	var count=0;
	
	if (validateUserStatus())
	{		
	if(document.frmTellFriend.txtFrEmail1.value != "")
	{
		count++;	
		if(!validEmail(document.frmTellFriend.txtFrEmail1.value))
		 {
			msg += "Please enter Valid Email Address.\n";
			if (bln)
				frmObj = frm.txtFrEmail1;
			bln = false;
		 }
	}
	
	if(document.frmTellFriend.txtFrEmail2.value != "")
	{
		count++;	
		if(!validEmail(document.frmTellFriend.txtFrEmail2.value))
		 {
			msg += "Please enter Valid Email Address.\n";
			if (bln)
				frmObj = frm.txtFrEmail2;
			bln = false;
		 }
	}
	if(document.frmTellFriend.txtFrEmail3.value != "")
	{
		count++;	
		if(!validEmail(document.frmTellFriend.txtFrEmail3.value))
		 {
			msg += "Please enter Valid Email Address.\n";
			if (bln)
				frmObj = frm.txtFrEmail3;
			bln = false;
		 }
	}
	if(document.frmTellFriend.txtFrEmail4.value != "")
	{
		count++;	
		if(!validEmail(document.frmTellFriend.txtFrEmail4.value))
		 {
			msg += "Please enter Valid Email Address.\n";
			if (bln)
				frmObj = frm.txtFrEmail4;
			bln = false;
		 }
	}
	if(document.frmTellFriend.txtFrEmail5.value != "")
	{
		count++;	
		if(!validEmail(document.frmTellFriend.txtFrEmail5.value))
		 {
			msg += "Please enter Valid Email Address.\n";
			if (bln)
				frmObj = frm.txtFrEmail5;
			bln = false;
		 }
	}

	if(document.frmTellFriend.txtSubject.value == "")
	{
		msg += "Please Enter Subject.\n";
		if (bln)
			frmObj = frm.txtSubject;
		bln = false;
	}
	
	if(document.frmTellFriend.txtMessage.value == "")
	{
		msg += "Please Enter Message.\n";
		if (bln)
			frmObj = frm.txtMessage;
		bln = false;
	}
	if(count == 0)
	{
		alert("Please give atleast one email address to send email.\n");
	//	frmObj.focus();

	}
	else if (bln==false)
	{
		alert(msg);
	//	frmObj.focus();

	}
	else
	{
			
					document.frmTellFriend.action = "index.php?view=actreffer_friend&formMode=1";
				
		document.frmTellFriend.submit();
	}
	}
}


//item_request.php
function submitRequest()
{
	var msg = "There are following problems in the information entered by you.\n\n";
	var bln = true;
	var frm = document.frmRequest;
	var frmObj = "";
	var count=0;
	

	if (validateUserStatus())
	{		


	if(document.frmRequest.txtTitle.value == "")
	{
		msg += "Please Enter Subject.\n";
		if (bln)
			frmObj = frm.txtTitle;
		bln = false;
	}
	
	if(document.frmRequest.txtDesc.value == "")
	{
		msg += "Please Enter Message.\n";
		if (bln)
			frmObj = frm.txtDesc;
		bln = false;
	}
	
	if (bln==false)
	{
		alert(msg);
	//	frmObj.focus();

	}
	else
	{
			
					document.frmRequest.action = "index.php?view=actitem_request&formMode=1";
				
		document.frmRequest.submit();
	}
	}
}

//rentqueue.php

	function move(direction,rentalid)
	{
		var selQueueViewPage = document.frmgameq.selQueueViewPage.value;
		retrieveURL('index.php?view=rentqueue&direction='+direction+'&rentalid='+rentalid+'&formMode=3&selQueueViewPage='+selQueueViewPage, 'inputForm'); 
	}
	
	function deliver()
	{
		var ChkStr = "";
		var GamesAtTime = document.frmgameq.hidGamesAtTime.value;
		if (!isChecked(document.frmgameq.elements['deliver_rentqueue_id[]']))
		{
			alert("Please select the Item for return.");
		}
		else
		{
			var deliverlength =document.frmgameq.elements['deliver_rentqueue_id[]'].length;
			var checkedcount = 0;
			var selectedTitle = "";
			for (var k=0; k<deliverlength; k++)
			{
				if (document.frmgameq.elements['deliver_rentqueue_id[]'][k].checked==true)
				{
				
					if(ChkStr == "")
					{
						ChkStr = document.frmgameq.elements['deliver_rentqueue_id[]'][k].value;
					}
					else
					{
						ChkStr = ChkStr + "," + document.frmgameq.elements['deliver_rentqueue_id[]'][k].value;
					}
					if (selectedTitle=="")
						selectedTitle = document.frmgameq.elements['deliver_rentqueue_title[]'][k].value;
					else
						selectedTitle +=","+ document.frmgameq.elements['deliver_rentqueue_title[]'][k].value;
					checkedcount++;
				}
			}
			
			if (checkedcount>GamesAtTime)
			{
				alert("You can select only "+GamesAtTime+" Item for delivery at a time. ");
			}
			else
			{
				if(confirm("Are you sure you want delivery of  "+selectedTitle+"?"))
				{
					
					document.frmgameq.hidChkStr.value = ChkStr;
					retrieveURL('Jindex.php?view=rentqueue&formMode=5', 'frmgameq');
				}
			}
		}
	}
	function remove()
	{	
	var frm = document.frmgameq;
	if (validateUserStatus())
	{	
		var ChkStr = "";
		if (!isChecked(document.frmgameq.elements['rentqueue_id[]']))
		{
			alert("Please select the Item for remove.");
		}
		else
		{
			var deliverlength =document.frmgameq.elements['rentqueue_id[]'].length;
			var checkedcount = 0;
			var selectedTitle = "";
			for (var k=0; k<deliverlength; k++)
			{
				if (document.frmgameq.elements['rentqueue_id[]'][k].checked==true)
				{
					if(ChkStr == "")
					{
						ChkStr = document.frmgameq.elements['rentqueue_id[]'][k].value;
					}
					else
					{
						ChkStr = ChkStr + "," + document.frmgameq.elements['rentqueue_id[]'][k].value;
					}
					
					checkedcount++;
					
				}
			}
			
			if (checkedcount>0)
			{
				if(confirm("Are you sure you want delete the selected items?"))
				{
					document.frmgameq.hidChkStr.value = ChkStr;
					retrieveURL('index.php?view=rentqueue&formMode=2', 'frmgameq');
				}
			}
		}	
	
		
		}

	}
	
	function returnQueue()
	{
		
		var ChkStr = "";
		if (!isChecked(document.frmgameq.elements['chkReturn[]']))
		{
			alert("Please select the Item for return.");
		}
		else
		{
			var deliverlength =document.frmgameq.elements['chkReturn[]'].length;
			var checkedcount = 0;
			var selectedTitle = "";
			for (var k=0; k<deliverlength; k++)
			{
				if (document.frmgameq.elements['chkReturn[]'][k].checked==true)
				{
					if(ChkStr == "")
					{
						ChkStr = document.frmgameq.elements['chkReturn[]'][k].value;
					}
					else
					{
						ChkStr = ChkStr + "," + document.frmgameq.elements['chkReturn[]'][k].value;
					}
					
					checkedcount++;
					
				}
			}
			
			if (checkedcount>0)
			{
				if(confirm("Are you sure you want return the selected items?"))
				{
					document.frmgameq.hidChkStr.value = ChkStr;
					retrieveURL('index.php?view=rentqueue&formMode=6', 'frmgameq');
				}
			}
		}	
	
	
	}
	function submitrefill()
	{
		var msg = "There are following problems in the information entered by you.\n\n";
		var bln = true;
		var frm = document.frmrefillaccount;
		var frmObj = "";
		var count=0;
	
		if(document.frmrefillaccount.selrefill.value == "0")
		{
			msg += "Please Enter Refill No\n";
			if (bln)
				frmObj = frm.selrefill;
			bln = false;
		}
		if (bln==false)
		{
			alert(msg);
		//	frmObj.focus();
	
		}
		else
		{

			
					document.frmrefillaccount.action = "index.php?view=actrefillaccount&formMode=1";
				
		document.frmrefillaccount.submit();
		}
	}

	function calculateprice(val,price)
	{
		var totalprice;
		totalprice =  parseFloat(val*price);
		document.frmrefillaccount.totalprice.value= totalprice;
	}
	
	
	//viewprobresponse.php
	
	function viewPostForm(problemqueueid)
{
	var frm = document.frmProbResp;
	
	for (var i=0; i<frm.elements['problemqueueids[]'].length; i++)
	{
		 var tempqueueid = frm.elements['problemqueueids[]'][i].value;
		if (tempqueueid!="")
		{
			document.getElementById("trProbqueueid"+tempqueueid).style.display= "none";
			document.getElementById("trProbqueueid"+tempqueueid).style.visibility= "hidden";
		}		
	}

	document.getElementById("trProbqueueid"+problemqueueid).style.display= "";
	document.getElementById("trProbqueueid"+problemqueueid).style.visibility= "visible";
}

function cancelProb(problemqueueid)
{
	document.getElementById("trProbqueueid"+problemqueueid).style.display= "none";
	document.getElementById("trProbqueueid"+problemqueueid).style.visibility= "hidden";
}

function replyProblem(problemqueueid)
{
	var msg;
	var bln;
	var frmObj="";
		
	msg = "There are following problems in the information entered by you.\n\n";
	bln = true;
	var frm = document.frmProbResp;
	if (validateUserStatus())
	{
	if (document.getElementById("txtProblem"+problemqueueid).value=="")
	{
		msg += "Please enter the Problem Title.\n";		
		bln = false;
	}
	
	if (document.getElementById("txtDescription"+problemqueueid).value=="")
	{
		msg += "Please enter the Problem Description.\n";		
		bln = false;
	}
	
	if (bln==false)
	{
		alert(msg);
	}
	else
	{
		
						retrieveURL('index.php?view=view_prob_response&formMode=1&problemqueueid='+problemqueueid, 'frmProbResp');
				
	}

	}	
}


	function refillAccount()
	{
		var frm = document.frmgameq;
		if (validateUserStatus())
		{	
			retrieveURL('index.php?view=rentqueue&formMode=7', 'frmgameq');
		}
	}
	
	function checkit()
	{
		alert("hi");
		return true;
	}
	
	function showDuration(chkObj,status)
	{
		var frm = document.frmVacMode;
		if (chkObj.checked && chkObj.value=="V")
		{
			document.getElementById("divDuration").style.display="";
			document.getElementById("divPayment").style.display="none";
			document.getElementById("submitbtn").style.display="";
		}
		else
		{
			if(status == 'V')
			{
				document.getElementById("divDuration").style.display="none";
				frm.selDuration.value="";
				document.getElementById("divPayment").style.display="inline";
				document.getElementById("submitbtn").style.display="none";
			}
			else
			{
				document.getElementById("divDuration").style.display="none";
				frm.selDuration.value="";
			}
		}
	
	} 
	
	function addAddress()
	{
		var msg = "There are following problems in the information entered by you.\n\n";
		var bln = true;
		var frm = document.frmAddAddress;
		var frmObj = "";
		
		if(trim(frm.txtFirstName.value) == "")
		{
			msg += "Please enter First Name.\n";
			if (bln)
				frmObj = frm.txtFirstName;
			bln = false;
		}
		
		if(trim(frm.txtLastName.value) == "")
		{
			msg += "Please enter Last Name.\n";
			if (bln)
				frmObj = frm.txtLastName;
			bln = false;
		}
		
		if(trim(frm.txtAddress1.value) == "")
		{
			msg += "Please enter Address 1.\n";
			if (bln)
				frmObj = frm.txtAddress1;
			bln = false;
		}
		
		if(trim(frm.txtCity.value) == "")
		{
			msg += "Please enter City.\n";
			if (bln)
				frmObj = frm.txtCity;
			bln = false;
		}
		
		if(trim(frm.selCountry.value) == "")
		{
			bln = false;
			msg += "Please select Country.\n";
			if (bln)
				frmObj = frm.selCountry;
		}
		
		if(trim(frm.selState.value) == "")
		{
			msg += "Please enter State.\n";
			if (bln)
				frmObj = frm.selState;
			bln = false;
		}
		
		if(trim(frm.txtZipcode.value) == "")
		{
			msg += "Please enter ZipCode.\n";
			if (bln)
				frmObj = frm.txtZipcode;
			bln = false;
		}
		else if(!IsInt(trim(frm.txtZipcode.value)))
		{
			msg += "\n";
			if (bln)
				frmObj = frm.txtZipcode;
			bln = false;
		}
		

		
		if(bln == false)
		{
			alert(msg);
			frmObj.focus();
		}
		else
		{
	
			document.frmAddAddress.action = "index.php?view=actadd_address&formMode=1";
		
			document.frmAddAddress.submit();
		}	
	
	}
	
	function changeAddState()
	{
		retrieveURL('index.php?view=add_address&formMode=1', 'frmAddAddress');

	}
	
	
	function updateAddress()
	{
		var frm = document.frmChangeAddress;
		var msg = "There are following problems in the information entered by you.\n\n";
		var bln = true;
		var frmObj = "";
		var currentAdd = true;
		for (var i=0; i<frm.elements['rdoAddress'].length; i++)
		{
			if (frm.elements['rdoAddress'][i].checked==true)
			{
				currentAdd = true;
			}
		}
		
		if (currentAdd==false)
		{
			msg += "Please select Subscription Plan.\n";		
			if (bln)
				frmObj = frm.elements['rdoAddress'][0];
			bln = false;
		}
		
		if (bln==false)
		{
			alert(msg);	
			frmObj.focus();
		}
		else
		{
	
			document.frmChangeAddress.action = "index.php?view=actchange_add&formMode=1";
		
			document.frmChangeAddress.submit();
		
		}
	}
	
		function updateCreditCard()
	{
		var frm = document.frmCreditCard;
		var msg = "There are following problems in the information entered by you.\n\n";
		var bln = true;
		
		if(trim(frm.txtOwner.value) == "")
		{
			msg += "Please enter Card Owner Name.\n";
			if (bln)
				frmObj = frm.txtOwner;
			bln = false;
		}	
		
		if(trim(frm.selCardType.value) == "")
		{
			msg += "Please select Card Type.\n";
			if (bln)
				frmObj = frm.selCardType;
			bln = false;
		}

		if(trim(frm.txtCardNumber.value) == "")
		{
			msg += "Please enter Card Number.\n";
			if (bln)
				frmObj = frm.txtCardNumber;
			bln = false;
		}
		else if (!isValidCreditCardNumber(frm.txtCardNumber.value,frm.selCardType.value))
		{
			msg += "Please enter Valid Card Number.\n";
			if (bln)
				frmObj = frm.txtCardNumber;
			bln = false;
		}
		
		if(trim(frm.selExpmon.value) == "")
		{
			msg += "Please select Expiry Month.\n";
			if (bln)
				frmObj = frm.selExpmon;
			bln = false;
		}

		if(trim(frm.selExpyear.value) == "")
		{
			msg += "Please select Expiry Year.\n";
			if (bln)
				frmObj = frm.selExpyear;
			bln = false;
		}	
		
		if(trim(frm.selExpmon.value) != "" && trim(frm.selExpyear.value) != "" )
		{
			if (!isValidExpDate(frm.selExpyear.value,frm.selExpmon.value))
			{
				msg += "Please enter Valid Expiration Date.\n";
				if (bln)
					frmObj = frm.selExpyear;
				bln = false;
			}
		}
		
				if (bln==false)
		{
			alert(msg);	
			frmObj.focus();
		}
		else
		{
	
			document.frmCreditCard.action = "index.php?view=actupdate_cc&formMode=1";
		
			document.frmCreditCard.submit();
		}	

	}
	
	
	function openThreedigitCode()
	{
		mov = window.open("popupindex.php?view=threedigitcode","SecurityCode","fullscreen=no,toolbar=no,status=no,menubar=no,scrollbars=yes,resizable=false,directories=no,location=no,width=500,height=500,left=50,top=100");	
		mov.focus();

	}


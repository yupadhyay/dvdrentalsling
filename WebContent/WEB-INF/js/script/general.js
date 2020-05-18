/*  ######################################################################
	----------------------------------------------------------------------
								Function
    ----------------------------------------------------------------------
		display_submenu  'This funtion dynamically display sub menu'
		
	#######################################################################								
*/
function display_submenu(div_name, disp_flag)
	{
		for(i=1; i<=4; i++)
		{
			var id = "div"+i;
			
			if((disp_flag == 1) && (id == div_name))
			{
				//alert(disp_flag+id);
				document.getElementById(id).style.display = "none";
				document.getElementById(div_name).style.display = "";
			}
			else if((disp_flag ==  0) && (id == div_name))
			{
				//alert(disp_flag+id);
				document.getElementById(div_name).style.display = "none";
			}
			else if((disp_flag ==  2) && (id == div_name))
			{
				//alert(disp_flag+id);
				
				if(document.getElementById(div_name).style.display == "none")
				{
					document.getElementById(div_name).style.display = "";
				}
				else if(document.getElementById(div_name).style.display == "")
				{
					document.getElementById(div_name).style.display = "none";
				}
			}
			else if((disp_flag ==  2) && (id != div_name))
			{
				document.getElementById(id).style.display = "none";
			}
		}
	}



/*##################################################################################			
					LIST OF FUNCTIONS IN General.Js

	NOTE:	All the functin names follow java naming conventions

	----------------------------------------------------------------
					Validation Functions
	----------------------------------------------------------------
	1.  checkNumber(objTextBox, strField, AllowBlank)
	2.  validEmail(strEmailAddress)
	3. isAlphaNumeric(strText)

	----------------------------------------------------------------
					General Purpose functions
	----------------------------------------------------------------
	1. isChecked(objCheckBox)			'Check whether any check box is checked
	2. checkAll(objCheckBox, blnCheck)	'Check or Uncheck all check boxes
	
	1. trim(strTemp)
	2. trimAll()						'Function trims all the Textboxes and TextAreas on the Form
	3. lTrim(strTemp)
	4. rTrim(strTemp)
	5. trimTb(objTb)					'Trims the text box object
	
	6. replaceDoubleQuotes()			'replaces double quotes (") with 2 Single quotes ('') in all the text boxes and Text Areas
	7. replaceSingleQuotes()			'replaces 2 Single quotes ('') with One double quote (") in all the text boxes and Text Areas
	
	8. UrlEncode(srtUrl)				'returns the string with all space characters by '%20'
	9. getLeftPos(objElement)			'returns the absolute Left position of element
   10. getTopPos(objElement)			'returns the absolute Top position of element
   11. CalShowComboBoxes(name, Show)	'Hides all comboboxes under the area of given element
   
   ----------------------------------------------------------------
				Hint
   ----------------------------------------------------------------
	1. Call following function in onLoad event of BODY
		- replaceSingleQuotes()
   
	2. Call following Two functions before you Validate data in Save() function
		- trimAll()
		- replaceDoubleQuotes()
##################################################################################*/

/******************************************************************************************************************
					Validation Functions
******************************************************************************************************************/
/*-----------------------------------------------------------------------------------------------------------------
 Function:			checkNumber(objTextBox, strField, AllowBlank)
 Description:		Returns false, Gives message and Sets focus to text box if entered 
					text is not a number. Otherwise returns true.
 Arguments:
	objTextBox	->	Textbox object whose text is to be checked for number
	strField	->	The field description.
	AllowBlank	->  VALUE				DESCRIPTION
					----------------------------------
					false				Returns false if nothing is entered in text box
										or invalid number is typed
					true				Returns true if nothing is entered in text box
										Returns false if invalid number is typed
-----------------------------------------------------------------------------------------------------------------*/
function IsNumeric(sText)
{
   var ValidChars = "0123456789.";
   var IsNumber=true;
   var Char;
//   var str = sText.value;
	var str = sText;
   for (i = 0; i < str.length && IsNumber == true; i++) 
   { 
      Char = str.charAt(i); 
	  //alert(Char);
      if (ValidChars.indexOf(Char) == -1) 
      {
         IsNumber = false;
      }
   }
   return IsNumber;
}

function IsInt(sText)
{
   var ValidChars = "0123456789";
   var IsInt=true;
   var Char;
//   var sText = sText.value;
   var sText = sText;
   for (i = 0; i < sText.length && IsInt == true; i++) 
   { 
      Char = sText.charAt(i); 
	 // alert(Char);
      if (ValidChars.indexOf(Char) == -1) 
      {
         IsInt = false;
      }
   }
   return IsInt;
}
function IsString(sText)
{
   var ValidChars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
   var IsStr=true;
   var Char;
   var str = sText.value;
   for (i = 0; i < str.length && IsStr == true; i++) 
   { 
      Char = str.charAt(i); 
      if (ValidChars.indexOf(Char) == -1) 
      {
	     IsStr = false;
      }
   }
   return IsStr;
}

function checkNumber(objTextBox, strField, AllowBlank)
{
	
	//objTextBox: Text Box whose value is to be checked
	//strField :  Pass Field Name for appropriate message
	var x=objTextBox.value;

	var anum=/(^\d+$)|(^\d+\.\d+$)/;
	
	if(arguments.length == 1)
	{
		strField = "";
	}
	
	if(arguments.length == 2)
	{
		AllowBlank=false;
	}
	
	if (x=="" && AllowBlank==true) 
	{
		return (true);
	}

	if (anum.test(x))
	{
		testresult=true;
	}
	else
	{
		var strMsg;
		
		if(strField=="")
		{
			strMsg="Please input a valid number!";
		}
		else
		{
			strMsg="Please input a valid number in " + strField + "!";
		}
		
		alert(strMsg);
		objTextBox.focus();
		testresult=false;
	}

	return (testresult);
}

/*-----------------------------------------------------------------------------------------------------------------
	Description: Returns true if the given address is valid email address otherwise returns false
-----------------------------------------------------------------------------------------------------------------*/
function validEmail(strEmail)
{	//var strExpression = /^[a-z][a-z_0-9\.]+@[a-z_0-9\.]+$/i;
	
	//return strExpression.test(strEmail);
	if (strEmail.search(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/) != -1)
		return true;
	else
		return false;

}

/*-----------------------------------------------------------------------------------------------------------------
	Description: Returns true if the given string is Alphanumeric.
		     String must be started with Alphabet and optionally follwed by
		     numbers or Underscore
-----------------------------------------------------------------------------------------------------------------*/
function isAlphaNumeric(strText) 
{ 
   var strExpression = /^[a-z][a-z_0-9]{0,}$/i; 
   return strExpression.test(strText); 
}

/******************************************************************************************************************
			General purpose functions
******************************************************************************************************************/
/*-----------------------------------------------------------------------------------------------------------------
	Function:		isChecked(objCheckBox)
	Description:	returns true if check box OR any of check box 
			from the array of check box is checked.
			Otherwise returns false
-----------------------------------------------------------------------------------------------------------------*/
function isChecked(objCheckBox)
{
	var iIndex;
	//If checkbox object does not exist
	if(typeof(objCheckBox) != 'object')
	{
		return false;
	}
	
	//If there is only one checkbox
	if(typeof(objCheckBox[0]) != 'object')
	{
		return objCheckBox.checked;
	}
	else
	{
		var iChecked=0;
		
		for(iIndex=0; iIndex<objCheckBox.length; iIndex++)
		{
			if(objCheckBox[iIndex].checked == true)
			{
				return true;
			}
		}
		
		return false;		
	}
}

/*-----------------------------------------------------------------------------------------------------------------
	Function:		checkAll(objCheckBox, blnCheck)
	Description:	Checks the check box OR all the checkboxes in array of checkboxes
			if blnCheck is true.
			
			Unchecks the check box OR all the checkboxes in array of checkboxes
			if blnCheck is false.
-----------------------------------------------------------------------------------------------------------------*/
function checkAll(objCheckBox, blnCheck)
{
	var iIndex;
	
	//If checkbox object does not exist
	if(typeof(objCheckBox) != 'object')
	{
		return false;
	}
	
	//If there is only one checkbox
	if(typeof(objCheckBox[0]) != 'object')
	{
		objCheckBox.checked = blnCheck;
	}
	else
	{
		var iChecked=0;
		
		for(iIndex=0; iIndex<objCheckBox.length; iIndex++)
		{
			objCheckBox[iIndex].checked = blnCheck;
		}
	}
}

/******************************************************************************************************************
						Trim Functions
******************************************************************************************************************/
function trim(strTemp)
{
	strTemp = lTrim(strTemp);
	strTemp = rTrim(strTemp);
	return strTemp;
}

function trimAll()
{
	var i;

	//Check for all input elements
	for(i=0; i<document.all.tags("INPUT").length;i++)
	{
		//Get object of INPUT ELEMENT
		objTB  = document.all.tags("INPUT")(i);
		//If it is text box, then replace double quotes with 2 single quotes
		if(objTB.type == "text")
		{
			objTB.value = trim(objTB.value);
		}
	}

	//Check for all input elements
	for(i=0; i<document.all.tags("TEXTAREA").length;i++)
	{
		//Get object of INPUT ELEMENT
		objTA  = document.all.tags("TEXTAREA")(i);
		
		objTA.value = trim(objTA.value);
	}
}

function lTrim(strTemp)
{
  var iIndex;
  var charTemp;

	for(iIndex=0; iIndex< strTemp.length;iIndex++)
	{
		charTemp = strTemp.substring(iIndex, iIndex+1);
		if(charTemp != ' ') break;
	}

	strTemp = strTemp.substring(iIndex, strTemp.length);
	return strTemp;
}

function rTrim(strTemp)
{
  var iIndex;
  var charTemp;

	for(iIndex=strTemp.length; iIndex>0;iIndex--)
	{
		charTemp = strTemp.substring(iIndex-1, iIndex);
		if(charTemp != ' ') break;
	}

	strTemp = strTemp.substring(0,iIndex);
	return strTemp;
}

function trimTb(objTb)
{
	objTb.value = Trim(objTb.value);
}


/******************************************************************************************************************
						Replace quote functions
******************************************************************************************************************/
/*-----------------------------------------------------------------------------------------------------------------
	function:		replaceDoubleQuotes()
	Description:	Replace  double quotes (") with 2 single quotes ('')
		Call this replaceDoubleQuotes() function before you submit the form.
		This function replaces Double quotes with 2 single quotes
		in all the text boxes and text areas 
-----------------------------------------------------------------------------------------------------------------*/

function replaceDoubleQuotes()
{
	var i;

	//Check for all input elements
	for(i=0; i<document.all.tags("INPUT").length;i++)
	{
		//Get object of INPUT ELEMENT
		objTB  = document.all.tags("INPUT")(i);
		//If it is text box, then replace double quotes with 2 single quotes
		if(objTB.type == "text")
		{
			replaceDouble(objTB)
		}
	}

	//Check for all input elements
	for(i=0; i<document.all.tags("TEXTAREA").length;i++)
	{
		//Get object of INPUT ELEMENT
		objTA  = document.all.tags("TEXTAREA")(i);
		replaceDouble(objTA)
	}
}					


//2. To replace the double quotes by " '' "
function replaceDouble(txtObj)
{

//Pass the text box object as argument to this function

 var strTmp1 = new String();
	
 strTmp1 = txtObj.value;
 //'RegExp
 txtObj.value = strTmp1.replace(/"/g,"''");
 return true;
}

/*-----------------------------------------------------------------------------------------------------------------
	function:		replaceSingleQuotes()
	Description:	Replace 2 single quotes ('') with double quotes (") 
		in all the text boxes. Call this replaceSingleQuotes() function in onLoad
		event of BODY.
-----------------------------------------------------------------------------------------------------------------*/
function replaceSingleQuotes()
{
	var i;
	//Check for all input elements
	for(i=0; i<document.all.tags("INPUT").length;i++)
	{
		//Get object of INPUT ELEMENT
		objTB  = document.all.tags("INPUT")(i);
		//If it is text box, then replace double quotes with 2 single quotes
		if(objTB.type == "text")
		{
			replaceSingle(objTB)
		}
	}

	//Check for all input elements
	for(i=0; i<document.all.tags("TEXTAREA").length;i++)
	{
		//Get object of INPUT ELEMENT
		objTA  = document.all.tags("TEXTAREA")(i);
		replaceSingle(objTA)
	}
}					


//2. To replace the two single quotes by one double quote (")
function replaceSingle(txtObj)
{

//Pass the text box object as argument to this function

 var strTmp1 = new String();
	
 strTmp1 = txtObj.value;
 //'RegExp
 txtObj.value = strTmp1.replace(/''/g,"\"");
 return true;
}

/*-----------------------------------------------------------------------------------------------------------------
	Function:		UrlEncode(srtUrl)
	Description:	Returns the string with all space characteres replaced by '%20'
-----------------------------------------------------------------------------------------------------------------*/
function UrlEncode(strUrl)
{
	var re;
	
//	re = / /i;
//	strUrl = strUrl.replace(re,"%20");

	re = /&/i;
	strUrl = strUrl.replace(re,"%26");
	
	return strUrl;
}

/******************************************************************************************************************
						POSITIONING functions
******************************************************************************************************************/
function getLeftPos(objElement)
{
	var i;
	var objParent;
	var iLeft=0;
					
	if(typeof(objElement) != 'object')
	{
		alert("Invalid Object.");
		return 0;
	}
	
	//Find the element's offsetLeft relative to the BODY tag.
	
	iLeft = objElement.offsetLeft;
	objParent = objElement.offsetParent;

	while (objParent.tagName.toUpperCase() != "BODY")
	{
		iLeft += objParent.offsetLeft;
		objParent = objParent.offsetParent;
	}
	
	return iLeft;	
}

function getTopPos(objElement)
{
	var i;
	var objParent;
	var iTop=0;
					
	if(typeof(objElement) != 'object')
	{
		alert("Invalid Object.");
		return 0;
	}
	
	//Find the element's offsetLeft relative to the BODY tag.

	iTop = objElement.offsetTop;
	objParent = objElement.offsetParent;

	while (objParent.tagName.toUpperCase() != "BODY")
	{
		iTop += objParent.offsetTop;
		objParent = objParent.offsetParent;
	}

	return iTop;	
}

function CalShowComboBoxes(name, Show)
{	
	var i;
	if(name!=null)
	{
		//If want to hide the comoboxes
		if(Show == false)
		{
			var objParent;
			var objSel, selLeft, selTop, selRight;
			var nameLeft, nameTop, nameHeight, nameWidth;
				
			//Get Left, Top, Height and Width of an object
			nameLeft   = name.offsetLeft;
			nameTop	   = name.offsetTop;
			nameHeight = name.offsetHeight;
			nameWidth  = name.offsetWidth;

			for(i=0; i<document.all.tags("SELECT").length;i++)
			{
				objSel  = document.all.tags("SELECT")(i);
				if (! objSel || ! objSel.offsetParent) 
					continue;

				//Find the element's offsetTop and offsetLeft relative to the BODY tag.
				selLeft   = objSel.offsetLeft;
				selTop    = objSel.offsetTop;
				objParent = objSel.offsetParent;
				while (objParent.tagName.toUpperCase() != "BODY")
				{
					selLeft  += objParent.offsetLeft;
					selTop   += objParent.offsetTop;
					objParent = objParent.offsetParent;
				}
				selRight=selLeft+objSel.offsetWidth;
					
				//If Combobox's Top is covered by the element
				if( selTop<(nameTop + nameHeight) )
				{
					//If Combobox's left is covered by Dropdown menu
					//OR Combobox's right is covered by Dropdown menu
					if( (selLeft>nameLeft  && selLeft<(nameLeft+nameWidth))
					    ||
					    (selRight>nameLeft && selRight<(nameLeft+nameWidth))
					  )
					{
						objSel.style.visibility="hidden";
					}  
				}
			}

			for(i=0; i<document.all.tags("OBJECT").length;i++)
			{
				objSel  = document.all.tags("OBJECT")(i);
				if (! objSel || ! objSel.offsetParent) 
					continue;

				//Find the element's offsetTop and offsetLeft relative to the BODY tag.
				selLeft   = objSel.offsetLeft;
				selTop    = objSel.offsetTop;
				objParent = objSel.offsetParent;
				while (objParent.tagName.toUpperCase() != "BODY")
				{
					selLeft  += objParent.offsetLeft;
					selTop   += objParent.offsetTop;
					objParent = objParent.offsetParent;
				}
				selRight=selLeft+objSel.offsetWidth;
					
				//If Combobox's Top is covered by Dropdown menu
				if( selTop<(nameTop + nameHeight) )
				{
					//If Combobox's left is covered by Dropdown menu
					//OR Combobox's right is covered by Dropdown menu
					if( (selLeft>nameLeft  && selLeft<(nameLeft+nameWidth))
					    ||
					    (selRight>nameLeft && selRight<(nameLeft+nameWidth))
					  )
					{
						objSel.style.visibility="hidden";
					}  
				}
			}
		}
		else
		{
			for(i=0; i<document.all.tags("SELECT").length;i++)
			{
				document.all.tags("SELECT")(i).style.visibility="visible";
			}

			for(i=0; i<document.all.tags("OBJECT").length;i++)
			{
				document.all.tags("OBJECT")(i).style.visibility="visible";
			}
		}
	}
}
function LuhnCheck(str){
  var result = true;

  var sum = 0; 
  var mul = 1; 
  var strLen = str.length;
  
  for (i = 0; i < strLen; i++){
    var digit = str.substring(strLen-i-1,strLen-i);
    var tproduct = parseInt(digit ,10)*mul;
    if (tproduct >= 10)
      sum += (tproduct % 10) + 1;
    else
      sum += tproduct;
    if (mul == 1)
      mul++;
    else
      mul--;
  }
  if ((sum % 10) != 0)
    result = false;
    
  return result;
}


function validateCCNumber(cardNum){
	var result = false;
	var cardLen = cardNum.length;
	var firstdig = cardNum.substring(0,1);
	var seconddig = cardNum.substring(1,2);
	var first2digs = cardNum.substring(0,2);
	var first3digs = cardNum.substring(0,3);
	var first4digs = cardNum.substring(0,4);
	var first5digs = cardNum.substring(0,5);
	var first6digs = cardNum.substring(0,6);
	
	//cascade validation
	//source: http://en.wikipedia.org/wiki/Credit_card_number
	for(i=0; i<11; i++){
		switch(i){
			case 0: //American Express 34 and 37 15 
				result = (cardLen == 15) && ((first2digs == "34") || (first2digs == "37"));
				break;
			case 1: //Bankcard 560Ð561 16 
				result = (cardLen == 16) && ((first3digs == "560") || (first3digs == "561"));
				break;
			case 2: //Diners Club International[1] 36 15 
				result = (cardLen == 15) && (first2digs == "36");
				break;
			case 3: //Diners Club US & Canada[1] 55 16 
				result = (cardLen == 16) && (first2digs == "55");
				break;
			
			//As of October 1st, 2005, Discover Bank will include a new BIN in the range of 650000Ð650999.
			case 4: //Discover Card 6011 and 650* 16 
				result = (cardLen == 16) && ((first3digs == "650") || (first4digs == "6011"));
				break;
			case 5: //JCB 3 16 
				result = (cardLen == 16) && (firstdig == "3");
				break;
			case 6: //JCB 1800 and 2131 15 
				result = (cardLen == 15) && ((first4digs == "1800") || (first4digs == "2131"));
				break;
				
			//As of November 8, 2004, MasterCard purchased the domestic (US) Diner's Club BIN range.
			//Diner's club international's website makes no reference to old 38 prefix numbers,
			//and they can be presumed reissued under the 55 or 36 BIN prefix
			case 7: //MasterCard* 51Ð55, 36 14 or 16 
				result = ((cardLen == 14) || (cardLen == 16)) && ((first2digs == "36") || (first2digs == "51") || (first2digs == "52") || (first2digs == "53") || (first2digs == "54") || (first2digs == "55") || (first2digs == "56") || (first2digs == "57")||(first2digs == "58") || (first2digs == "38"));
				break;
			case 8: //Visa 4 13 or 16 	
				result = ((cardLen == 13) || (cardLen == 16)) && (firstdig == "4");
				break;
			case 9: //Solo (debit card)
				result = ((cardLen == 16) || (cardLen == 18) || (cardLen == 19)) && (first4digs == "6334" || first4digs == "6767");
				break;
			case 10: //Switch (debit card)
				result = ((cardLen == 16) || (cardLen == 18) || (cardLen == 19)) && (first4digs == "4903" || first4digs == "4905" || first4digs == "4911" || first4digs == "4936" || first4digs == "6333" || first4digs == "6759" || first6digs == "564182" || first6digs == "633110");
				break;
		}
		if(result) return true;
	}
	return false;
}

function validateExpDate(expDate){
	//valid are  mmyy, mm/yy, mm20yy, mm/20yy
	var rex = /^(([0]\d{1})|([1]([012])))(\/?)(([2][0])?)(\d{2})$/;
	return rex.test(expDate);
}

function validateExpMonth(expDate){
	//valid are  01-12
	var rex = /^(([0]?\d{1})|([1]([012])))$/;
	return rex.test(expDate);
}

function validateExpYear(expDate){
	//valid are  mmyy, mm/yy, mm20yy, mm/20yy
	var rex = /^(([2][0])?)(\d{2})$/;
	return rex.test(expDate);
}

function validateCVC2(cvc2){
	//valid are ddd or dddd
	var rex = /^(\d{3,4})$/;
	return cvc2==""?true:rex.test(cvc2);
}

function validateName(name){
	var rex = /^[a-zA-Z \-\']+$/;
	return rex.test(name);
}

function validateText(txt){
	var d = "";
	for(i=0; i < txt.length; i++){
		if(txt.charAt(i) != " "){
			d = d + txt.charAt(i);
		}
	}
	if(d == ""){
		return false;
	}
	else{
		return true;
	}
}

function CheckField(frm, fname, ftitle){
	var s = frm.elements[fname].value;
	var d = "";
	
	for(i=0; i < s.length; i++){
		if(s.charAt(i) != " "){
			d = d + s.charAt(i);
		}
	}
	if(d == ""){
		alert(msg_please_enter + ' ' + ftitle);
		frm.elements[fname].focus();
		return false;
	}
	else{
		return true;
	}
}

function CheckCustomFields(frm, place){
	var irex = /^custom_field\[(\d{1,})\]$/;
	for(i=0; i<frm.elements.length; i++){
		if(irex.test(frm.elements[i].name)){
		//	alert(frm.elements[i].name);
			var s = frm.elements[i].name;
			var id = s.substring(13, s.length-1);
			if(frm.elements['custom_field_place[' + id + ']'].value == place){
				if(frm.elements['custom_field_required[' + id + ']'].value == 'yes'){
					//alert(frm.elements[i].type);
					if(frm.elements[i].type == "checkbox" && !frm.elements[i].checked){
						alert(msg_to_continue_please_check + ' ' + frm.elements['custom_field_name[' + id + ']'].value);
						frm.elements[i].focus();
						return false;
					}
					else if(frm.elements[i].value == ""){
						alert(msg_please_enter + ' ' + frm.elements['custom_field_name[' + id + ']'].value);
						frm.elements[i].focus();
						return false;
					}
				}
			}
		}
	}
	return true;
}

function CheckAddProduct(frm, min_order, max_order, allowed_max){
	if(product_may_be_added){
		var rex = /^(\d{1,})$/
		if(!rex.test(frm.elements["oa_quantity"].value)){
			alert(msg_enter_numeric_product_quantity);
			frm.elements["oa_quantity"].focus();
			return false;
		}
		if((frm.elements["oa_quantity"].value *1) < min_order){
			alert(msg_number_of_items_exceeded_min);
			frm.elements["oa_quantity"].focus();
			return false;
		}
		if((max_order != "-") && (frm.elements["oa_quantity"].value * 1 > max_order)){
			alert(msg_number_of_items_exceeded_max);
			frm.elements["oa_quantity"].focus();
			return false;
		}
		if((allowed_max != "-") && (frm.elements["oa_quantity"].value * 1 > allowed_max)){
			alert(msg_number_of_items_exceed_inventory);
			frm.elements["oa_quantity"].focus();
			return false;
		}
		return true;
	}
	return false;
}

function CheckResetPassword(frm){
	if(!CheckField(frm, "login", "username")) return false;
	if(!isEmail(frm.elements["email"].value)){
		alert(msg_enter_valid_email);
		frm.elements["email"].focus();
		return false;
	}
	return true;
}

function CheckCartForm(frm){
	var irex = /^oa_quantity\[(\d{1,})\]$/;
	var prex = /^oa_pid_to_ocid\[(\d{1,})\]$/;
	var drex = /^(\d{1,})$/
	
	var products = new Array();
	
	for(i=0; i<frm.elements.length; i++){
		
		if(irex.test(frm.elements[i].name)){
			if(!drex.test(frm.elements[i].value)){
				alert(msg_enter_numeric_product_quantity);
				frm.elements[i].focus();
				return false;	
			}
			if(frm.elements[i].value * 1 < (frm.elements["min_" + frm.elements[i].name].value) * 1){
				alert(msg_number_of_items_exceeded_min);
				frm.elements[i].focus();
				return false;
			}
			if(
				(frm.elements["max_" + frm.elements[i].name].value != "-") && 
				(frm.elements[i].value * 1 > frm.elements["max_" + frm.elements[i].name].value * 1)
			){
				alert(msg_number_of_items_exceeded_max);
				frm.elements[i].focus();
				return false;
			}
			if(
				(frm.elements["allowed_" + frm.elements[i].name].value != "-") && 
				(frm.elements[i].value * 1 > frm.elements["allowed_" + frm.elements[i].name].value * 1)
			){
				alert(msg_number_of_items_exceed_inventory);
				frm.elements[i].focus();
				return false;
			}
		}
		
		if(prex.test(frm.elements[i].name)){
			var ocid = frm.elements[i].value;
			var pid = frm.elements["oa_ocid_to_pid[" + ocid + "]"].value;
			if(products[pid]){
				products[pid] = products[pid] + frm.elements["oa_quantity[" + ocid + "]"].value * 1;
			}
			else{
				products[pid] = frm.elements["oa_quantity[" + ocid + "]"].value * 1;
			}
			
			if(frm.elements["oa_inventory_control[" + ocid + "]"].value == "Yes"){
				if(frm.elements["allowed_oa_quantity[" + ocid + "]"].value < products[pid]){
					alert(msg_number_of_items_exceed_inventory);
					frm.elements["oa_quantity[" + ocid + "]"].focus();
					return false;
				}
			}
		}
	}
	return true;
}

function CheckNewsletters(frm){
	if(!isEmail(frm.elements["email"].value)){
		alert(msg_enter_valid_email);
		frm.elements["email"].focus();
		return false;
	}
	return true;
}

function CheckUnsubscribe(frm){
	if(!isEmail(frm.elements["cancel_email"].value)){
		alert(msg_enter_valid_email);
		frm.elements["cancel_email"].focus();
		return false;
	}
	if(confirm(msg_want_cancel_subscription)){
		return true;
	}
	return false;
}

function CheckLoginForm(frm){
	if(!CheckField(frm, "login", msg_your_username)) return false;
	if(!CheckField(frm, "password", msg_your_password)) return false;
	return true;
}

/////////////////////////////
// CHECK SIGNUP FORM
function CheckSignupForm(frm, fm_company, fm_address2, fm_phone, ship2all, ship2countries){
	if(!CheckField(frm, "form[fname]", msg_first_name)) return false;
	if(!CheckField(frm, "form[lname]", msg_last_name)) return false;
	if(fm_company == "Required" && (!CheckField(frm, "form[company]", msg_company_name))) return false;
	if(!CheckField(frm, "form[address1]", msg_address_line1)) return false;
	if(fm_address2 == "Required" && (!CheckField(frm, "form[address2]", msg_address_line2))) return false;
	if(!CheckField(frm, "form[city]", msg_city_name)) return false;
	
	if(!CheckField(frm, "form[country]", msg_country)) return false;
	if(frm.elements["form[state]"].options.length > 1){
		if(frm.elements["form[state]"].value == "" || frm.elements["form[state]"].value == "0"){
			alert(msg_select_province_state);
			frm.elements["form[state]"].focus();
			return false;
		}
	}
	else{
		if(!CheckField(frm, "form[province]", msg_custom_province_state)) return false;
	}
	
	if(!CheckField(frm, "form[zip]", msg_zip_postal_code)) return false;
	if(fm_phone == "Required" && (!CheckField(frm, "form[phone]", msg_phone_number))) return false;
	
	if(!CheckCustomFields(frm, 'billing')){
		return false;	
	}
	
	if(!ship2all && frm.elements["form[thesame]"].checked){
		//check shipping country
		c = frm.elements["form[country]"].value;
		is_country = false;
		for(i=1; i<= ship2countries.length; i++){
			if(ship2countries[i] == c){
				is_country = true;
			}
		}
		if(!is_country){
			alert(msg_incorrect_shipping_address);
			return false;
		}
	}
	
	if(!CheckField(frm, "form[email]", msg_email_address)) return false;
	if(!isEmail(frm.elements["form[email]"].value)){
		alert(msg_enter_valid_email);
		frm.elements["form[email]"].focus();
		return false;
	}
	if(!CheckField(frm, "form[login]", msg_username)) return false;
	if(!CheckField(frm, "form[password]", msg_password)) return false;
	if(!CheckField(frm, "form[password2]", msg_password_confirmation)) return false;
	
	if(!CheckCustomFields(frm, 'account')){
		return false;	
	}
	
	if(!CheckCustomFields(frm, 'signup')){
		return false;	
	}
	
	if(frm.elements["form[agree]"]){
		if(frm.elements["form[agree]"].checked == false){
			alert(msg_read_terms_before_registration);
			return false;
		}
	}
	return true;
}

function CheckShippingAddress(frm, fm_company, fm_address2){
	if(!CheckField(frm, "form[name]", msg_name)) return false;
	if(fm_company == "Required" && (!CheckField(frm, "form[company]", msg_company_name))) return false;
	if(!CheckField(frm, "form[address1]", msg_address_line1)) return false;
	if(fm_address2 == "Required" && (!CheckField(frm, "form[address2]", msg_address_line2))) return false;
	if(!CheckField(frm, "form[city]", msg_city_name)) return false;
	
	
	//check is state/province select OR custom state/province
	sd = document.getElementById('div_shipping_address_state');

	if(sd.style.display == "block"){
		//check province/state from select
		if(frm.elements["form[state]"].value == "" || frm.elements["form[state]"].value == "0"){
			alert(msg_select_province_state);
			frm.elements["form[state]"].focus();
			return false;
		}
	}
	else{
		//check custom province/state
		if(!CheckField(frm, "form[province]", msg_custom_province_state)) return false;
	}
	
	if(!CheckField(frm, "form[zip]", msg_zip_postal_code)) return false;
	
	if(!CheckCustomFields(frm, 'shipping')){
		return false;	
	}
	
	return true;
}

///////////////////////////////
// CHECK PROFILE FORM
function CheckProfileForm(frm, fm_company, fm_address2, fm_phone){
	if(!CheckField(frm, "form[fname]", msg_first_name)) return false;
	if(!CheckField(frm, "form[lname]", msg_last_name)) return false;
	if(fm_company == "Required" && (!CheckField(frm, "form[company]", msg_company_name))) return false;
	if(!CheckField(frm, "form[address1]", msg_address_line1)) return false;
	if(fm_address2 == "Required" && (!CheckField(frm, "form[address2]", msg_address_line2))) return false;
	if(!CheckField(frm, "form[city]", msg_city_name)) return false;
	if(!CheckField(frm, "form[country]", msg_country)) return false;
	if(!CheckField(frm, "form[country]", msg_country)) return false;
	if(frm.elements["form[state]"].options.length > 1){
		if(frm.elements["form[state]"].value == "" || frm.elements["form[state]"].value == "0"){
			alert(msg_select_province_state);
			frm.elements["form[state]"].focus();
			return false;
		}
	}
	else{
		if(!CheckField(frm, "form[province]", msg_custom_province_state)) return false;
	}
	
	if(!CheckField(frm, "form[zip]", msg_zip_postal_code)) return false;
	if(fm_phone == "Required" && (!CheckField(frm, "form[phone]", msg_phone_number))) return false;
	if(!CheckField(frm, "form[email]", msg_email_address)) return false;
	if(!isEmail(frm.elements["form[email]"].value)){
		alert(msg_enter_valid_email);
		frm.elements["form[email]"].focus();
		return false;
	}
	
	if(!CheckCustomFields(frm, 'billing')){
		return false;	
	}
	
	if(frm.elements["form[password]"].value != ""){
		if(frm.elements["form[password]"].value != frm.elements["form[password2]"].value){
			alert(msg_different_password_and_comfirmation);
			frm.elements["form[password]"].focus();
			return false;
		}
	}
	
	if(!CheckCustomFields(frm, 'account')){
		return false;	
	}
	
	return true;
}

function CheckEmail2FriendForm(frm){
	if(!CheckField(frm, "yname", msg_your_name)) return false;
	if(!CheckField(frm, "yemail", msg_your_email_address)) return false;
	if(!isEmail(frm.elements["yemail"].value)){
		alert(msg_enter_valid_email);
		frm.elements["yemail"].focus();
		return false;
	}
	if(!CheckField(frm, "fname", msg_your_friend_name)) return false;
	if(!CheckField(frm, "femail", msg_your_friend_email_address)) return false;
	if(!isEmail(frm.elements["femail"].value)){
		alert(msg_enter_valid_email);
		frm.elements["femail"].focus();
		return false;
	}
	return true;
}

function ConfirmDeleteShippingAddress(address_id){
	if(confirm(msg_confirm_delete_shipping_address)){
		document.location = site_dinamic_url + 'ua=' + USER_DELETE_ADDRESS + '&address_id=' + address_id;
	}
}

function CheckWishlistName(frm){
	if(!CheckField(frm, "wishlist_name", msg_enterWishlistName)) return false;	
	return true;
}
function CheckWishlistEmailFrm(frm){
	if(!CheckField(frm, "mail_subject", "subject")) return false;	
	if(!isEmail(frm.elements["your_email"].value)){
		alert(msg_enter_valid_email);
		frm.elements["your_email"].focus();
		return false;
	}
	return true;
}
function ConfirmDeleteWishlist(wl_id){
	if(confirm(msg_confirm_delete_wishlist)){		
		document.location = site_dinamic_url + 'p=manage_wishlist&wl_action=delete_wishlist&wlid=' + wl_id;
	}
}

function ConfirmDeleteWishlistProduct(wlp_id){
	if(confirm(msg_confirm_delete_wishlist_product)){		
		document.location = site_dinamic_url + 'p=manage_wishlist&wl_action=delete_product&wlpid=' + wlp_id;
	}
}
	function PopupPage(pageUrl, pageWidth, pageHeight,windowName,is_scroll)
{
	//Code to display in the center goes here
	var left = (screen.width - pageWidth)/2;
	var top = (screen.height - pageHeight)/2;
	if (isNaN(left))
	left = 0;
	if (isNaN(top))
	top = 0;
	if (null == windowName )
	windowName = "_blank";
	if(null == is_scroll)
	is_scroll = "no";
	var newPopup = window.open(pageUrl, windowName , "dependent=yes, directories=no, location=no, menubar=no, personalbar=no, resizable=no, scrollbars="+is_scroll+", status=yes, toolbar=no, height=" + pageHeight + ", width=" + pageWidth + ", left=" + left + ", top=" + top + ", dialog=yes");
	return newPopup;
} 
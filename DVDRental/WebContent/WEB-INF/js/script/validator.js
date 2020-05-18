// JavaScript Document




	function isValidExpDate(year,mon)
	{
		var result = true;
		var now = new Date();

		var nowMonth = now.getMonth() + 1;
		var nowYear = now.getFullYear();

		expired = (nowYear > year) || ((nowYear == year ) && (nowMonth > mon));
		if(expired)
			result = false;

		return result;
	}
	
	function isValidCreditCardNumber(cardno,card_type)
	{
		var result = true;

		if(!validateCCNum(card_type,cardno))
		{
			result = false;
		}
		else
        {
			if (!LuhnCheck(cardno))
			{
				result = false;
			}
			else
				result=true;
		}

		return result;
	}
	
	function LuhnCheck(str)
	{
	  var result = true;

	  var sum = 0;
	  var mul = 1;
	  var strLen = str.length;

	  for (i = 0; i < strLen; i++)
	  {
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

	function validateCCNum(cardType,cardNum)
	{
		var result = false;
		
		var cardLen = cardNum.length;
		var firstdig = cardNum.substring(0,1);
		var seconddig = cardNum.substring(1,2);
		var first4digs = cardNum.substring(0,4);
		switch (cardType)
		{
			case "1": // Visa Card
				result = ((cardLen == 16) || (cardLen == 13)) && (firstdig == "4");
				break;
			case "3": // American Express
				var validNums = "47";
				result = (cardLen == 15) && (firstdig == "3") && (validNums.indexOf(seconddig)>=0);
				break;
			case "2": // Master Card
				var validNums = "12345";
				result = (cardLen == 16) && (firstdig == "5") && (validNums.indexOf(seconddig)>=0);
				break;
			case "4": //Discover Card
				result = (cardLen == 16) && (first4digs == "6011");
				break;
			case "5":
				var validNums = "068";
				result = (cardLen == 14) && (firstdig == "3") && (validNums.indexOf(seconddig)>=0);
				break;
			case "6": // JCB card
				result = (cardLen == 16) && ((first4digs == "3088" || first4digs == "3096" || first4digs == "3112" || first4digs == "3158" || first4digs == "3337" || first4digs == "3528"));
				break;
		}
		return result;
	}
	
	


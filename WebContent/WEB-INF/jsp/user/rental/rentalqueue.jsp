<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script language="javascript" type="text/javascript">
	var StarbarOldImage = "";
	
	function StarbarMouseOver(imgNum,SStar,whichStar)
	{
		SStar = "2";
		if (whichStar=="-1")
		{
			StarbarOldImage = document.images["starbar_ni_mini"+imgNum].src;
			document.images["starbar_ni_mini"+imgNum].src = "images/ni_selected.gif";
		}
		else
		{
				
			StarbarOldImage = document.images["starbar"+imgNum].src;
			var ratImage = "images/stars_"+SStar+"_"+whichStar+"0.gif";
			document.images["starbar"+imgNum].src = ratImage;

		}
		
	}
	
	
	function StarbarMouseOut(imgNum,SStar,whichStar)
	{
	
		if (whichStar=="-1")
			document.images["starbar_ni_mini"+imgNum].src = StarbarOldImage;
		else
			document.images["starbar"+imgNum].src = StarbarOldImage	;	
		
	}	
	function StarbarClick(spanId,imgNum,SStar,whichStar,id,formName)
	{
		if (spanId=="")
		{
			SStar = 2;
			document.frmGameDetail.hidRating.value = whichStar;
			if (whichStar=="-1")
			{
				document.images["starbar"+imgNum].src = "images/stars_1_0.gif";
				document.images["starbar_ni_mini"+imgNum].src = "images/ni_selected.gif";
				StarbarOldImage = "images/ni_selected.gif";
			}
			else
			{
				var ratImage = "images/stars_"+SStar+"_"+whichStar+"0.gif";
				document.images["starbar"+imgNum].src = ratImage;
			//	alert(document.images["starbar"+imgNum].src);
				document.images["starbar_ni_mini"+imgNum].src = "images/ni_low.gif";
			//	alert(document.images["starbar_ni_mini"+imgNum].src);
				StarbarOldImage = ratImage;
			}
		}
		else
			ratingRetrieveURL('index.php?view=custrating&spanId='+spanId+'&id='+id+'&value='+whichStar+'&formName='+formName, formName,spanId);	
	}	
	</script><script language="javascript">
function pageLinkHref(url, frmName)
{
	var actionUrl = "index.php" + url;
	//alert(actionUrl);
	retrieveURL(actionUrl, frmName);
}
</script>

	<script language="javascript" >

	
	function sendAck(rentedId)
	{
			retrieveURL('index.php?view=rentqueue&formMode=4&rentedId='+rentedId, 'frmgameq');
	}
	
	function pageRentalQueue()
	{
			retrieveURL('index.php?view=rentqueue&formMode=', 'frmgameq');
	}
	function pageRentalHistory()
	{
			retrieveURL('index.php?view=rentqueue&formMode=', 'frmgameq');
	}
	
	function updatePriority()
	{
		var result = $('#sortable').sortable('toArray');
		var resultstr = "";
		for(i=0;i<result.length;i++)
		{
			if(i == 0)
				resultstr = resultstr + result[i]; 
			else	
				resultstr = resultstr + "," + result[i]; 
		}
		document.frmgameq.chkchangepro.value = resultstr;
		 
		retrieveURL('index.php?view=rentqueue&formMode=8', 'frmgameq');
		
		/*var priorityLength = parseInt(document.frmgameq.elements['rentqueue_id[]'].length)-1;
		var tempPriority = new Array();
		var existFlag = false;
		var bigValue = false;
		var valueZeroorLess = false;
		var valueNotInt = false;
		var hidCountRentalQueue = document.frmgameq.hidCountRentalQueue.value;
		for (var i=0; i<priorityLength; i++)
		{
			 
			var txtName = "txtPriority_"+document.frmgameq.elements['rentqueue_id[]'][i].value;
			var priorityValue = parseInt(document.getElementById(txtName).value);
			
			if (!IsInt(document.getElementById(txtName).value))
			{
				valueNotInt = true;
				break;
			}
			if (parseInt(priorityValue)<=0)
			{
				valueZeroorLess = true;
				break;
			}
			if (priorityValue > hidCountRentalQueue)
			{
				bigValue = true;
				break;
			}
			if (checkExists(tempPriority,priorityValue))
			{
				existFlag = true;
				break;
			}
			else
			{
				tempPriority[i] = priorityValue;
			}
		}
		
		if (valueNotInt==true)
		{
			alert("Priority value is invalid.\n");
		}
		else if (valueZeroorLess==true)
		{
			alert("Priority value can not be zero or less than zero.\n");
		}
		else if (bigValue==true)
		{
			alert("Priority value can not be greater than the total number of rental queue items.\n");
		}
		else if (existFlag==true)
		{
			alert("Priority values can not be same.\n");
		}
		else*/
		
	
	}
	
	function checkExists(arrayTocheck,checkValue)
	{
		var existFlag = false;
		for (var k=0; k<arrayTocheck.length; k++)
		{
			if (arrayTocheck[k]==checkValue)
			{
				existFlag = true;
				break;
			}
		}
		return existFlag;
	}

	$(function() {
$("#sortable").sortable({ placeholder: 'ui-state-highlight' }); 
$("#sortable").disableSelection(); 	
$('#sortable').bind('sortupdate', updatePriority);
});
function test()
{
alert($("#sortable"));
var result = $('#sortable').sortable('toArray');

alert(result[0]);
alert(result[1]);
alert(result[2]);
alert(result[3]);
alert(result[4]);
alert(result[5]);		 		 		 		 

}
</script>
<jsp:include page="../../templates/global.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../../templates/header.jsp"></jsp:include>
<jsp:include page="../../templates/leftNav.jsp"></jsp:include>

<div align="center">
<jsp:include page="itemcheckout.jsp"></jsp:include>
<jsp:include page="currentqueue.jsp"></jsp:include>
<jsp:include page="rentalhistory.jsp"></jsp:include>
</div>
<jsp:include page="../../templates/footer.jsp"></jsp:include>
</body>
</html>
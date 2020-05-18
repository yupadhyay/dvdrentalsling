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
	</script>
	<div align="center">
	<form name="frmRentalHistory" method="post">

	<div class="gamequeuehead" align="left"></div>

	<div class="tablerow" align="left">
	Rental Items you've rented and returned to  IC3 Rental in the last 3 months are displayed in the section below. To receive a full rental history by email, click on the Send Full History button.	
	</div>
	<span id="spanMsg" class="errMsgType1">
			</span>

	<span id="mygameqlist" style="width:100%;float:left;">
			<div align="center" style="width:100%;float:left;">
				<div class="tablemessage" align="left">3-Month Rental Return History </div>

				
				<div style="width:100%;float:left;">
					<div style="width:27%;float:left;" class="tablecolumnheader" align="left"></div>
					
					<div style="width:20%;float:left;" class="tablecolumnheader" align="left"></div>
					<div style="width:15%;float:left;" class="tablecolumnheader">Request Date</div>
					<div style="width:15%;float:left;" class="tablecolumnheader">Date Shipped</div>
					<div style="width:15%;float:left;" class="tablecolumnheader">Received By</div>
				</div>
				<%//For loop to get history from database %>
		 		 		<div class="tablerow" style="width:100%;float:left;">
					<div style="width:30%;float:left;" align="left">&nbsp;<%//Name of Movie %></div>
					<div style="width:16%;float:left;" align="left"></div>
					<div style="width:22%;float:left;"><%//Get request Date %></div>
					<div style="width:16%;float:left;" align="center"><%//Get shipped Date %></div>
					<div style="width:16%;float:left;" align="center"><%//Get recieve Date %></div>
				</div>
				<%//End of for loop %>
		 		 	<div class="tablerow" style="width:100%;float:left;">&nbsp;</div>
			</div>
					<div style="width:100%;float:left;padding-bottom:10px;"  align="center" class="gamequeuefooter"><a href="javascript:sendHistory()" class="pagelink2">Send Full History</a>&nbsp;|&nbsp;<a href="accountInfo.jsp">Back to My Account</a></div>
		
	</span>
	</form>
	</div>

<jsp:include page="../../templates/footer.jsp"></jsp:include>
</body>
</html>
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
		document.location.href="index.php?view=login";
	}	
	</script><script language="javascript">
function pageLinkHref(url, frmName)
{
	var actionUrl = "index.php" + url;
	//alert(actionUrl);
	retrieveURL(actionUrl, frmName);
}
</script>
<script language="javascript">
function searchAlpha(flag, alphaS)
{
	var actionURL = "";
	if(flag == 1)
		actionURL = "index.php?view=catalog&item_type=M&pfid=&cat_id=&searchAZ=" + alphaS;
	else
		actionURL = "index.php?view=catalog&item_type=M&pfid=&cat_id=";
		
	retrieveURL(actionURL, 'frmGameCatalog');
}

</script>



<jsp:include page="../templates/global.jsp"/>
</head>
<body>
<%String contextPath = request.getContextPath(); %>
<jsp:include page="../templates/header.jsp"/>
<jsp:include page="../templates/leftNav.jsp"></jsp:include>
<form name="frmGameCatalog" method="post">
	<span id="spnList">
			<div style="width:100%;height:auto;float:left" class="CatalogBorder">
				<div style="width:100%;margin-top:5px;float:left">
					<div><hr noshade="noshade" color="#CCCCCC"  size="1"  /></div>
					<%//For loop to get all the current DVD from DB %>
							<div style="width:19%;float:left">
								<div align="center">
									<A href="moviedetail.jsp?item_type=M&id=<%//Get movie id from DB %>"><img src="<%//Get Image from database %>"  height="120" width="100"  border="0"/></A>
								</div>
							<div style="margin-top:5px;" align="center"  class="Cataloggametitle" ><A href="moviedetail.jsp?item_type=M&id=<%//Movie_ID %>"  class="Cataloggametitle"><%//Get Movie name here %></A></div>	
							<div align="center" style="width:100px;margin-top:5px;padding-left:20px;">
							<%//If user is not logged in %>
							<a onclick="return validateUserStatus()"  href="<%=contextPath %>/jsp/user/registration/registration.jsp"  class="buttoncss">SIGN UP</a>
							<%//If item is already in queue %>
							<a onclick="return validateUserStatus()" href="index.php?view=rentqueue&formMode=2&hidChkStr=358"  class="buttoncss2">Remove</a>
							<%//If item is not in queue %>
							<a onclick="return validateUserStatus()"  href="index.php?view=rentrental&id=41"  class="buttoncss">RESERVE</a>
							<%//If Item is available to buy %>
							<a  onclick="return validateUserStatus()"  href="index.php?view=addtocart&id=53" class="buttoncss"  >BUY</a><%//get price from DB %>
							<%//If Item is already reserve by user in past %>
							<a class="buttoncss1" href="index.php?view=rentrental&amp;id=35" onclick="return validateUserStatus()">RESERVE AGAIN</a>	
							</div>
							</div>
					<%//End of for loop %>
				</div>	
<div align="center">&nbsp;</div>
	<br clear="all" />
		 <div align="center">
		 <%for(char i=97;i<=122;i++){ %>
		 <a class='searchLinkL' href="javascript:searchAlpha(1, <%=i %>)"><img src='<%=contextPath %>/images/searchkeys/key_<%=i %>-u.jpg' border='0'/></a> &nbsp; 
		 <%} %>
	<Div align="center"><table class="pagetable" border="0" cellspacing="1"><tr>
<td><a href="javascript:pageLinkHref('?page=<%//logic to get page number probably will store in session %>&view=catalog&item_type=M', 'frmGameCatalog')" class="pagelink_first">First</a> </td>
<td class="pagetable_activecell">&nbsp;<%//Pegination logic to get number of pages %>&nbsp;</td>
<td><a href="javascript:pageLinkHref('?page=1&view=catalog&item_type=M', 'frmGameCatalog')" class="pagelink_last">Last</a> </td>
</tr></table>
</Div>
			</div>
			
			
			
	</span>	
</form>		
<jsp:include page="../templates/footer.jsp"></jsp:include>				
</body>
</html>